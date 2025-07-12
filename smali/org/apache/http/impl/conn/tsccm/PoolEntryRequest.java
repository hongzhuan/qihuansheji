package org.apache.http.impl.conn.tsccm;

import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ConnectionPoolTimeoutException;

@Deprecated
public abstract interface PoolEntryRequest
{
  public abstract void abortRequest();
  
  public abstract BasicPoolEntry getPoolEntry(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ConnectionPoolTimeoutException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.conn.tsccm.PoolEntryRequest
 * JD-Core Version:    0.7.0.1
 */