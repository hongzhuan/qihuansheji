package org.apache.http.entity;

import org.apache.http.HttpException;
import org.apache.http.HttpMessage;

@Deprecated
public abstract interface ContentLengthStrategy
{
  public static final int CHUNKED = -2;
  public static final int IDENTITY = -1;
  
  public abstract long determineLength(HttpMessage paramHttpMessage)
    throws HttpException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.entity.ContentLengthStrategy
 * JD-Core Version:    0.7.0.1
 */