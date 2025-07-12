package org.apache.http.client;

import java.io.IOException;
import org.apache.http.HttpResponse;

@Deprecated
public abstract interface ResponseHandler<T>
{
  public abstract T handleResponse(HttpResponse paramHttpResponse)
    throws ClientProtocolException, IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.ResponseHandler
 * JD-Core Version:    0.7.0.1
 */