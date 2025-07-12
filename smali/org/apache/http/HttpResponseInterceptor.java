package org.apache.http;

import java.io.IOException;
import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface HttpResponseInterceptor
{
  public abstract void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    throws HttpException, IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpResponseInterceptor
 * JD-Core Version:    0.7.0.1
 */