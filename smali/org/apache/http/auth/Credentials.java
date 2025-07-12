package org.apache.http.auth;

import java.security.Principal;

@Deprecated
public abstract interface Credentials
{
  public abstract String getPassword();
  
  public abstract Principal getUserPrincipal();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.auth.Credentials
 * JD-Core Version:    0.7.0.1
 */