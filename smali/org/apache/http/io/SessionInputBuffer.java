package org.apache.http.io;

import java.io.IOException;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public abstract interface SessionInputBuffer
{
  public abstract HttpTransportMetrics getMetrics();
  
  public abstract boolean isDataAvailable(int paramInt)
    throws IOException;
  
  public abstract int read()
    throws IOException;
  
  public abstract int read(byte[] paramArrayOfByte)
    throws IOException;
  
  public abstract int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException;
  
  public abstract int readLine(CharArrayBuffer paramCharArrayBuffer)
    throws IOException;
  
  public abstract String readLine()
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.io.SessionInputBuffer
 * JD-Core Version:    0.7.0.1
 */