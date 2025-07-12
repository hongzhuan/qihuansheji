package org.apache.http;

import java.io.IOException;

@Deprecated
public abstract interface HttpConnection
{
  public abstract void close()
    throws IOException;
  
  public abstract HttpConnectionMetrics getMetrics();
  
  public abstract int getSocketTimeout();
  
  public abstract boolean isOpen();
  
  public abstract boolean isStale();
  
  public abstract void setSocketTimeout(int paramInt);
  
  public abstract void shutdown()
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpConnection
 * JD-Core Version:    0.7.0.1
 */