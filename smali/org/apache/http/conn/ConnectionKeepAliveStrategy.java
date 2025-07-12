package org.apache.http.conn;

import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface ConnectionKeepAliveStrategy
{
  public abstract long getKeepAliveDuration(HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.ConnectionKeepAliveStrategy
 * JD-Core Version:    0.7.0.1
 */