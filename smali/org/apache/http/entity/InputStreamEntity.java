package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@Deprecated
public class InputStreamEntity
  extends AbstractHttpEntity
{
  public InputStreamEntity(InputStream paramInputStream, long paramLong)
  {
    throw new RuntimeException("Stub!");
  }
  
  public void consumeContent()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public InputStream getContent()
    throws IOException
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
 * Qualified Name:     org.apache.http.entity.InputStreamEntity
 * JD-Core Version:    0.7.0.1
 */