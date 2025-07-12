package org.apache.http.conn;

import java.util.concurrent.TimeUnit;

@Deprecated
public abstract interface ClientConnectionRequest
{
  public abstract void abortRequest();
  
  public abstract ManagedClientConnection getConnection(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ConnectionPoolTimeoutException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.ClientConnectionRequest
 * JD-Core Version:    0.7.0.1
 */