package org.apache.http.client.methods;

import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;

@Deprecated
public abstract class HttpEntityEnclosingRequestBase
  extends HttpRequestBase
  implements HttpEntityEnclosingRequest
{
  public HttpEntityEnclosingRequestBase()
  {
    throw new RuntimeException("Stub!");
  }
  
  public Object clone()
    throws CloneNotSupportedException
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean expectContinue()
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpEntity getEntity()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void setEntity(HttpEntity paramHttpEntity)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.methods.HttpEntityEnclosingRequestBase
 * JD-Core Version:    0.7.0.1
 */