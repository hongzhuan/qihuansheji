package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@Deprecated
public class ByteArrayEntity
  extends AbstractHttpEntity
{
  protected final byte[] content = null;
  
  public ByteArrayEntity(byte[] paramArrayOfByte)
  {
    throw new RuntimeException("Stub!");
  }
  
  public Object clone()
    throws CloneNotSupportedException
  {
    throw new RuntimeException("Stub!");
  }
  
  public InputStream getContent()
  {
    throw new RuntimeException("Stub!");
  }
  
  public long getContentLength()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isRepeatable()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isStreaming()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.entity.ByteArrayEntity
 * JD-Core Version:    0.7.0.1
 */