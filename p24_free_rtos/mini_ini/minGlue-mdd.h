/*  minIni glue functions for Microchip's "Memory Disk Drive" file system
 *  library, as presented in Microchip application note AN1045.
 *
 *  Copyright (c) CompuPhase, 2011-2012
 *  (The "Microchip Memory Disk Drive File System" is copyright (c) Microchip
 *  Technology Incorporated, and licensed at its own terms.)
 *
 *  This "glue file" is licensed under the Apache License, Version 2.0 (the
 *  "License"); you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 *  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 *  License for the specific language governing permissions and limitations
 *  under the License.
 */

#define INI_BUFFERSIZE  128       /* maximum line length, maximum path length */

#include "MDD File System/FSIO.h"
#include <string.h>

#define INI_FILETYPE                  FSFILE*
#define ini_openread(filename,file)   ((*(file) = FSfopen((filename), FS_READ)) != NULL)
#define ini_openwrite(filename,file)  ((*(file) = FSfopen((filename), FS_WRITE)) != NULL)
#define ini_close(file)               (FSfclose(*(file)) == 0)
#define ini_write(buffer,file)        (FSfwrite((buffer), 1, strlen(buffer), (*file)) > 0)
#define ini_remove(filename)          (FSremove((filename)) == 0)

#define INI_FILEPOS                   long
#define ini_tell(file,pos)            (*(pos) = FSftell(*(file)))
#define ini_seek(file,pos)            (FSfseek(*(file), *(pos), SEEK_SET) == 0)

/* Since the Memory Disk Drive file system library reads only blocks of files,
 * the function to read a text line does so by "over-reading" a block of the
 * of the maximum size and truncating it behind the end-of-line.
 */
static int ini_read(char *buffer, int size, INI_FILETYPE *file)
{
  size_t numread = size;
  char *eol;

  if ((numread = FSfread(buffer, 1, size, *file)) == 0)
    return 0;                   /* at EOF */
  if ((eol = strchr(buffer, '\n')) == NULL)
    eol = strchr(buffer, '\r');
  if (eol != NULL) {
    /* terminate the buffer */
    *++eol = '\0';
    /* "unread" the data that was read too much */
    FSfseek(*file, - (int)(numread - (size_t)(eol - buffer)), SEEK_CUR);
  } /* if */
  return 1;
}

#ifndef INI_READONLY
static int ini_rename(const char *source, const char *dest)
{
  FSFILE* ftmp = FSfopen((source), FS_READ);
  FSrename((dest), ftmp);
  return FSfclose(ftmp) == 0;
}
#endif
