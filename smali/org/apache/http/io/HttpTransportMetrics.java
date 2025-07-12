package org.apache.http.io;

@Deprecated
public abstract interface HttpTransportMetrics
{
  public abstract long getBytesTransferred();
  
  public abstract void reset();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.io.HttpTransportMetrics
 * JD-Core Version:    0.7.0.1
 */