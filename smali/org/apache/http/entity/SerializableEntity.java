package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;

@Deprecated
public class SerializableEntity
  extends AbstractHttpEntity
{
  public SerializableEntity(Serializable paramSerializable, boolean paramBoolean)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public InputStream getContent()
    throws IOException, IllegalStateException
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
 * Qualified Name:     org.apache.http.entity.SerializableEntity
 * JD-Core Version:    0.7.0.1
 */