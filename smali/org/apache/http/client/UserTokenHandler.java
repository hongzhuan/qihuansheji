package org.apache.http.client;

import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface UserTokenHandler
{
  public abstract Object getUserToken(HttpContext paramHttpContext);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.UserTokenHandler
 * JD-Core Version:    0.7.0.1
 */