package org.apache.http;

@Deprecated
public abstract interface HttpRequestFactory
{
  public abstract HttpRequest newHttpRequest(String paramString1, String paramString2)
    throws MethodNotSupportedException;
  
  public abstract HttpRequest newHttpRequest(RequestLine paramRequestLine)
    throws MethodNotSupportedException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpRequestFactory
 * JD-Core Version:    0.7.0.1
 */