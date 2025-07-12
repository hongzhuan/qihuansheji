package org.apache.http.impl.entity;

import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.SessionInputBuffer;

@Deprecated
public class EntityDeserializer
{
  public EntityDeserializer(ContentLengthStrategy paramContentLengthStrategy)
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpEntity deserialize(SessionInputBuffer paramSessionInputBuffer, HttpMessage paramHttpMessage)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected BasicHttpEntity doDeserialize(SessionInputBuffer paramSessionInputBuffer, HttpMessage paramHttpMessage)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.entity.EntityDeserializer
 * JD-Core Version:    0.7.0.1
 */