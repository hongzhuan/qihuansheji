package org.apache.http.impl.client;

import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultConnectionKeepAliveStrategy
  implements ConnectionKeepAliveStrategy
{
  public DefaultConnectionKeepAliveStrategy()
  {
    throw new RuntimeException("Stub!");
  }
  
  public long getKeepAliveDuration(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy
 * JD-Core Version:    0.7.0.1
 */