package org.apache.http;

@Deprecated
public abstract interface Header
{
  public abstract HeaderElement[] getElements()
    throws ParseException;
  
  public abstract String getName();
  
  public abstract String getValue();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.Header
 * JD-Core Version:    0.7.0.1
 */