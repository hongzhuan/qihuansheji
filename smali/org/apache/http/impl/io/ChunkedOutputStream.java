package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;

@Deprecated
public class ChunkedOutputStream
  extends OutputStream
{
  public ChunkedOutputStream(SessionOutputBuffer paramSessionOutputBuffer)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public ChunkedOutputStream(SessionOutputBuffer paramSessionOutputBuffer, int paramInt)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void close()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void finish()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void flush()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void flushCache()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void flushCacheWithAppend(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void write(int paramInt)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void writeClosingChunk()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.io.ChunkedOutputStream
 * JD-Core Version:    0.7.0.1
 */