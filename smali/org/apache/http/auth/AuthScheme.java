package org.apache.http.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;

@Deprecated
public abstract interface AuthScheme
{
  public abstract Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest)
    throws AuthenticationException;
  
  public abstract String getParameter(String paramString);
  
  public abstract String getRealm();
  
  public abstract String getSchemeName();
  
  public abstract boolean isComplete();
  
  public abstract boolean isConnectionBased();
  
  public abstract void processChallenge(Header paramHeader)
    throws MalformedChallengeException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.auth.AuthScheme
 * JD-Core Version:    0.7.0.1
 */