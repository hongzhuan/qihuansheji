package org.apache.http.conn.params;

import org.apache.http.conn.routing.HttpRoute;

@Deprecated
public abstract interface ConnPerRoute
{
  public abstract int getMaxForRoute(HttpRoute paramHttpRoute);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.params.ConnPerRoute
 * JD-Core Version:    0.7.0.1
 */