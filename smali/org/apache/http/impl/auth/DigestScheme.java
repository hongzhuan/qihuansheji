package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;

@Deprecated
public class DigestScheme
  extends RFC2617Scheme
{
  public DigestScheme()
  {
    throw new RuntimeException("Stub!");
  }
  
  public static String createCnonce()
  {
    throw new RuntimeException("Stub!");
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest)
    throws AuthenticationException
  {
    throw new RuntimeException("Stub!");
  }
  
  public String getSchemeName()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isComplete()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean isConnectionBased()
  {
    throw new RuntimeException("Stub!");
  }
  
  public void overrideParamter(String paramString1, String paramString2)
  {
    throw new RuntimeException("Stub!");
  }
  
  public void processChallenge(Header paramHeader)
    throws MalformedChallengeException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.auth.DigestScheme
 * JD-Core Version:    0.7.0.1
 */