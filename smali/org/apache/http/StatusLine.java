package org.apache.http;

@Deprecated
public abstract interface StatusLine
{
  public abstract ProtocolVersion getProtocolVersion();
  
  public abstract String getReasonPhrase();
  
  public abstract int getStatusCode();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.StatusLine
 * JD-Core Version:    0.7.0.1
 */