package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultClientConnectionOperator
  implements ClientConnectionOperator
{
  protected SchemeRegistry schemeRegistry;
  
  public DefaultClientConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    throw new RuntimeException("Stub!");
  }
  
  public OperatedClientConnection createConnection()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void openConnection(OperatedClientConnection paramOperatedClientConnection, HttpHost paramHttpHost, InetAddress paramInetAddress, HttpContext paramHttpContext, HttpParams paramHttpParams)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void prepareSocket(Socket paramSocket, HttpContext paramHttpContext, HttpParams paramHttpParams)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void updateSecureConnection(OperatedClientConnection paramOperatedClientConnection, HttpHost paramHttpHost, HttpContext paramHttpContext, HttpParams paramHttpParams)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.conn.DefaultClientConnectionOperator
 * JD-Core Version:    0.7.0.1
 */