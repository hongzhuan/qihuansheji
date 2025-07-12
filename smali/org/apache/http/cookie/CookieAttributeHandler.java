package org.apache.http.cookie;

@Deprecated
public abstract interface CookieAttributeHandler
{
  public abstract boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin);
  
  public abstract void parse(SetCookie paramSetCookie, String paramString)
    throws MalformedCookieException;
  
  public abstract void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
    throws MalformedCookieException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.cookie.CookieAttributeHandler
 * JD-Core Version:    0.7.0.1
 */