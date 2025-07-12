package org.apache.http;

@Deprecated
public abstract interface RequestLine
{
  public abstract String getMethod();
  
  public abstract ProtocolVersion getProtocolVersion();
  
  public abstract String getUri();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.RequestLine
 * JD-Core Version:    0.7.0.1
 */