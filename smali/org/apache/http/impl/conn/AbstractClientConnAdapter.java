package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;

@Deprecated
public abstract class AbstractClientConnAdapter
  implements ManagedClientConnection
{
  protected AbstractClientConnAdapter(ClientConnectionManager paramClientConnectionManager, OperatedClientConnection paramOperatedClientConnection)
  {
    throw new RuntimeException("Stub!");
  }
  
  public void abortConnection()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected final void assertNotAborted()
    throws InterruptedIOException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected final void assertValid(OperatedClientConnection paramOperatedClientConnection)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void detach()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void flush()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public InetAddress getLocalAddress()
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getLocalPort()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected ClientConnectionManager getManager()
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpConnectionMetrics getMetrics()
  {
    throw new RuntimeException("Stub!");
  }
  
  public InetAddress getRemoteAddress()
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getRemotePort()
  {
    throw new RuntimeException("Stub!");
  }
  
  public SSLSession getSSLSession()
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getSocketTimeout()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected OperatedClientConnection getWrappedConnection()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isMarkedReusable()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isOpen()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isResponseAvailable(int paramInt)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isSecure()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isStale()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void markReusable()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void receiveResponseEntity(HttpResponse paramHttpResponse)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public HttpResponse receiveResponseHeader()
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void releaseConnection()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void sendRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void sendRequestHeader(HttpRequest paramHttpRequest)
    throws HttpException, IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void setIdleDuration(long paramLong, TimeUnit paramTimeUnit)
  {
    throw new RuntimeException("Stub!");
  }
  
  public void setSocketTimeout(int paramInt)
  {
    throw new RuntimeException("Stub!");
  }
  
  public void unmarkReusable()
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.conn.AbstractClientConnAdapter
 * JD-Core Version:    0.7.0.1
 */