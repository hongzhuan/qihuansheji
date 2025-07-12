package org.apache.http;

import java.io.IOException;
import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface HttpRequestInterceptor
{
  public abstract void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws HttpException, IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpRequestInterceptor
 * JD-Core Version:    0.7.0.1
 */