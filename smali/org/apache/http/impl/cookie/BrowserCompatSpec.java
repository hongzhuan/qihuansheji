package org.apache.http.impl.cookie;

import java.util.List;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;

@Deprecated
public class BrowserCompatSpec
  extends CookieSpecBase
{
  protected static final String[] DATE_PATTERNS = null;
  
  public BrowserCompatSpec()
  {
    throw new RuntimeException("Stub!");
  }
  
  public BrowserCompatSpec(String[] paramArrayOfString)
  {
    throw new RuntimeException("Stub!");
  }
  
  public List<Header> formatCookies(List<Cookie> paramList)
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getVersion()
  {
    throw new RuntimeException("Stub!");
  }
  
  public Header getVersionHeader()
  {
    throw new RuntimeException("Stub!");
  }
  
  public List<Cookie> parse(Header paramHeader, CookieOrigin paramCookieOrigin)
    throws MalformedCookieException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.cookie.BrowserCompatSpec
 * JD-Core Version:    0.7.0.1
 */