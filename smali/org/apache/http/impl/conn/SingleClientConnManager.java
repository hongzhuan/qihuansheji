package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

@Deprecated
public class SingleClientConnManager
  implements ClientConnectionManager
{
  public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
  protected boolean alwaysShutDown;
  protected ClientConnectionOperator connOperator;
  protected long connectionExpiresTime;
  protected volatile boolean isShutDown;
  protected long lastReleaseTime;
  protected ConnAdapter managedConn;
  protected SchemeRegistry schemeRegistry;
  protected PoolEntry uniquePoolEntry;
  
  public SingleClientConnManager(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected final void assertStillUp()
    throws IllegalStateException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void closeExpiredConnections()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected ClientConnectionOperator createConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void finalize()
    throws Throwable
  {
    throw new RuntimeException("Stub!");
  }
  
  public ManagedClientConnection getConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    throw new RuntimeException("Stub!");
  }
  
  public SchemeRegistry getSchemeRegistry()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void releaseConnection(ManagedClientConnection paramManagedClientConnection, long paramLong, TimeUnit paramTimeUnit)
  {
    throw new RuntimeException("Stub!");
  }
  
  public final ClientConnectionRequest requestConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void revokeConnection()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void shutdown()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected class ConnAdapter
    extends AbstractPooledConnAdapter
  {
    protected ConnAdapter(SingleClientConnManager.PoolEntry paramPoolEntry, HttpRoute paramHttpRoute)
    {
      super((AbstractPoolEntry)null);
      throw new RuntimeException("Stub!");
    }
  }
  
  protected class PoolEntry
    extends AbstractPoolEntry
  {
    protected PoolEntry()
    {
      super((HttpRoute)null);
      throw new RuntimeException("Stub!");
    }
    
    protected void close()
      throws IOException
    {
      throw new RuntimeException("Stub!");
    }
    
    protected void shutdown()
      throws IOException
    {
      throw new RuntimeException("Stub!");
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.conn.SingleClientConnManager
 * JD-Core Version:    0.7.0.1
 */