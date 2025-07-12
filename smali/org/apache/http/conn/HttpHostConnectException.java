package org.apache.http.conn;

import java.net.ConnectException;
import org.apache.http.HttpHost;

@Deprecated
public class HttpHostConnectException
  extends ConnectException
{
  public HttpHostConnectException(HttpHost paramHttpHost, ConnectException paramConnectException)
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpHost getHost()
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.HttpHostConnectException
 * JD-Core Version:    0.7.0.1
 */