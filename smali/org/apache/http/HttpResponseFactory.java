package org.apache.http;

import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface HttpResponseFactory
{
  public abstract HttpResponse newHttpResponse(ProtocolVersion paramProtocolVersion, int paramInt, HttpContext paramHttpContext);
  
  public abstract HttpResponse newHttpResponse(StatusLine paramStatusLine, HttpContext paramHttpContext);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpResponseFactory
 * JD-Core Version:    0.7.0.1
 */