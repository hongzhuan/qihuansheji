package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.HttpRequest;

@Deprecated
public abstract interface HttpUriRequest
  extends HttpRequest
{
  public abstract void abort()
    throws UnsupportedOperationException;
  
  public abstract String getMethod();
  
  public abstract URI getURI();
  
  public abstract boolean isAborted();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.methods.HttpUriRequest
 * JD-Core Version:    0.7.0.1
 */