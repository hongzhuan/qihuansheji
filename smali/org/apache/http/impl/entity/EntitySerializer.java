package org.apache.http.impl.entity;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.SessionOutputBuffer;

@Deprecated
public class EntitySerializer
{
  public EntitySerializer(ContentLengthStrategy paramContentLengthStrategy)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected OutputStream doSerialize(SessionOutputBuffer paramSessionOutputBuffer, HttpMessage paramHttpMessage)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void serialize(SessionOutputBuffer paramSessionOutputBuffer, HttpMessage paramHttpMessage, HttpEntity paramHttpEntity)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.entity.EntitySerializer
 * JD-Core Version:    0.7.0.1
 */