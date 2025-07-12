package org.apache.http.impl.client;

import java.net.URI;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultRedirectHandler
  implements RedirectHandler
{
  public DefaultRedirectHandler()
  {
    throw new RuntimeException("Stub!");
  }
  
  public URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    throws ProtocolException
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.client.DefaultRedirectHandler
 * JD-Core Version:    0.7.0.1
 */