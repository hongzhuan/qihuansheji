package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import org.apache.http.params.HttpParams;

@Deprecated
public final class PlainSocketFactory
  implements SocketFactory
{
  public PlainSocketFactory()
  {
    throw new RuntimeException("Stub!");
  }
  
  public PlainSocketFactory(HostNameResolver paramHostNameResolver)
  {
    throw new RuntimeException("Stub!");
  }
  
  public static PlainSocketFactory getSocketFactory()
  {
    throw new RuntimeException("Stub!");
  }
  
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public Socket createSocket()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean equals(Object paramObject)
  {
    throw new RuntimeException("Stub!");
  }
  
  public int hashCode()
  {
    throw new RuntimeException("Stub!");
  }
  
  public final boolean isSecure(Socket paramSocket)
    throws IllegalArgumentException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.scheme.PlainSocketFactory
 * JD-Core Version:    0.7.0.1
 */