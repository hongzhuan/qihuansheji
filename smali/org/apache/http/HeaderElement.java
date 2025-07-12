package org.apache.http;

@Deprecated
public abstract interface HeaderElement
{
  public abstract String getName();
  
  public abstract NameValuePair getParameter(int paramInt);
  
  public abstract NameValuePair getParameterByName(String paramString);
  
  public abstract int getParameterCount();
  
  public abstract NameValuePair[] getParameters();
  
  public abstract String getValue();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HeaderElement
 * JD-Core Version:    0.7.0.1
 */