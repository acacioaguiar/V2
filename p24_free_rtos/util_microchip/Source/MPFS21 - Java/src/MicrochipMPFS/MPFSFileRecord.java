/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author I00265
 */
package MicrochipMPFS;
import java.util.*;

public class MPFSFileRecord
{
    private String fileName;
    public int nameHash;
    public long fileDate;
    public byte[] data;
    //public Vector<Byte> data;
    public int locStr;
    public int locData;
    public boolean hasIndex;
    public boolean isIndex;
    public boolean isZipped;
    public int dynVarCntr=0;/*Number of Dynamic Variables in the file*/
    public Vector<Byte> dynVarOffsetAndIndexID = new Vector<Byte>(8,8);/*Location of dynamic var and its ID*/
    public int fileRecordOffset;/* Byte location in the Record file where this file record/information is written from*/
    public int fileRecordLength;/* Total length/number of bytes in this file record*/
    public int fileSizeLen;
    /// <summary>
    /// Sets up a new MPFSFileRecord
    /// </summary>
    public MPFSFileRecord()
    {
        locStr = 0;
        locData = 0;
        hasIndex = false;
        isIndex = false;
        isZipped = false;
        dynVarCntr=0;
        //data = new Vector<Byte>(0);
        //Calendar cl = Calendar.getInstance();
        //cl.getTimeInMillis();
        fileSizeLen = 0;

    }
    public String GetFileName()
    {
        return this.fileName;
    }
    public void SetFileName(String value)
    {
        this.fileName = value;
        if(value.compareTo("")==0)
            this.nameHash = 0xffff;
        else
        {
            this.nameHash = 0;
            for(byte b : value.getBytes())
            {
                nameHash += b;
                nameHash <<= 1;
            }
        }
        //System.out.println ("Vlaue : " + value + "nameHash  "+String.format("%x",nameHash));
    }
    public void SetFiledate(long value)
    {
        this.fileDate = value;
    }
}
class FileRecord implements Comparable<FileRecord>
{
    public short nameHash;
    public int fileRecordOffset;
    public int dynVarCntr=0;

    public FileRecord(short nameHash, int fileRecordOffset,int dynVarCntr)
    {
       this.nameHash = nameHash;
       this.fileRecordOffset = fileRecordOffset;
       this.dynVarCntr = dynVarCntr;
    }
    public int compareTo(FileRecord o) {
        int firstNameHash = this.nameHash&0xffff;
        int secondNameHash = o.nameHash&0xffff;
        return firstNameHash - secondNameHash ;
    }

}
