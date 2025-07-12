package org.apache.http;

import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface ConnectionReuseStrategy
{
  public abstract boolean keepAlive(HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.ConnectionReuseStrategy
 * JD-Core Version:    0.7.0.1
 */