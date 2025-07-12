package org.apache.http.impl.client;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ResponseHandler;

@Deprecated
public class BasicResponseHandler
  implements ResponseHandler<String>
{
  public BasicResponseHandler()
  {
    throw new RuntimeException("Stub!");
  }
  
  public String handleResponse(HttpResponse paramHttpResponse)
    throws HttpResponseException, IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.client.BasicResponseHandler
 * JD-Core Version:    0.7.0.1
 */