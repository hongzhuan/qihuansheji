package org.apache.http;

import java.io.IOException;

@Deprecated
public abstract interface HttpServerConnection
  extends HttpConnection
{
  public abstract void flush()
    throws IOException;
  
  public abstract void receiveRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
    throws HttpException, IOException;
  
  public abstract HttpRequest receiveRequestHeader()
    throws HttpException, IOException;
  
  public abstract void sendResponseEntity(HttpResponse paramHttpResponse)
    throws HttpException, IOException;
  
  public abstract void sendResponseHeader(HttpResponse paramHttpResponse)
    throws HttpException, IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpServerConnection
 * JD-Core Version:    0.7.0.1
 */