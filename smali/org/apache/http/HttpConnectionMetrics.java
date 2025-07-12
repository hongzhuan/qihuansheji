package org.apache.http;

@Deprecated
public abstract interface HttpConnectionMetrics
{
  public abstract Object getMetric(String paramString);
  
  public abstract long getReceivedBytesCount();
  
  public abstract long getRequestCount();
  
  public abstract long getResponseCount();
  
  public abstract long getSentBytesCount();
  
  public abstract void reset();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpConnectionMetrics
 * JD-Core Version:    0.7.0.1
 */