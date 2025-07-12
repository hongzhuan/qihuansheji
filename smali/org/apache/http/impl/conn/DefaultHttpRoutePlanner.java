package org.apache.http.impl.conn;

import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultHttpRoutePlanner
  implements HttpRoutePlanner
{
  protected SchemeRegistry schemeRegistry;
  
  public DefaultHttpRoutePlanner(SchemeRegistry paramSchemeRegistry)
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpRoute determineRoute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws HttpException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.conn.DefaultHttpRoutePlanner
 * JD-Core Version:    0.7.0.1
 */