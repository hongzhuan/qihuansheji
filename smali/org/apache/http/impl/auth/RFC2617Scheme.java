package org.apache.http.impl.auth;

import java.util.Map;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public abstract class RFC2617Scheme
  extends AuthSchemeBase
{
  public RFC2617Scheme()
  {
    throw new RuntimeException("Stub!");
  }
  
  public String getParameter(String paramString)
  {
    throw new RuntimeException("Stub!");
  }
  
  protected Map<String, String> getParameters()
  {
    throw new RuntimeException("Stub!");
  }
  
  public String getRealm()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected void parseChallenge(CharArrayBuffer paramCharArrayBuffer, int paramInt1, int paramInt2)
    throws MalformedChallengeException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.auth.RFC2617Scheme
 * JD-Core Version:    0.7.0.1
 */