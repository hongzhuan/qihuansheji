package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class ResponseProcessCookies
  implements HttpResponseInterceptor
{
  public ResponseProcessCookies()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.protocol.ResponseProcessCookies
 * JD-Core Version:    0.7.0.1
 */