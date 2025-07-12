package org.apache.http.client;

import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;

@Deprecated
public abstract interface CredentialsProvider
{
  public abstract void clear();
  
  public abstract Credentials getCredentials(AuthScope paramAuthScope);
  
  public abstract void setCredentials(AuthScope paramAuthScope, Credentials paramCredentials);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.CredentialsProvider
 * JD-Core Version:    0.7.0.1
 */