package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;

@Deprecated
public class HttpRequestExecutor
{
  public HttpRequestExecutor()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected boolean canResponseHaveBody(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected HttpResponse doReceiveResponse(HttpRequest paramHttpRequest, HttpClientConnection paramHttpClientConnection, HttpContext paramHttpContext)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected HttpResponse doSendRequest(HttpRequest paramHttpRequest, HttpClientConnection paramHttpClientConnection, HttpContext paramHttpContext)
    throws IOException, HttpException
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpResponse execute(HttpRequest paramHttpRequest, HttpClientConnection paramHttpClientConnection, HttpContext paramHttpContext)
    throws IOException, HttpException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void postProcess(HttpResponse paramHttpResponse, HttpProcessor paramHttpProcessor, HttpContext paramHttpContext)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void preProcess(HttpRequest paramHttpRequest, HttpProcessor paramHttpProcessor, HttpContext paramHttpContext)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.protocol.HttpRequestExecutor
 * JD-Core Version:    0.7.0.1
 */