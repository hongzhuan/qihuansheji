package org.apache.http.impl.entity;

import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;

@Deprecated
public class StrictContentLengthStrategy
  implements ContentLengthStrategy
{
  public StrictContentLengthStrategy()
  {
    throw new RuntimeException("Stub!");
  }
  
  public long determineLength(HttpMessage paramHttpMessage)
    throws HttpException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.entity.StrictContentLengthStrategy
 * JD-Core Version:    0.7.0.1
 */