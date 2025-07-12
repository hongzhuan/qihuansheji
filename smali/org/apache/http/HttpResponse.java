package org.apache.http;

import java.util.Locale;

@Deprecated
public abstract interface HttpResponse
  extends HttpMessage
{
  public abstract HttpEntity getEntity();
  
  public abstract Locale getLocale();
  
  public abstract StatusLine getStatusLine();
  
  public abstract void setEntity(HttpEntity paramHttpEntity);
  
  public abstract void setLocale(Locale paramLocale);
  
  public abstract void setReasonPhrase(String paramString)
    throws IllegalStateException;
  
  public abstract void setStatusCode(int paramInt)
    throws IllegalStateException;
  
  public abstract void setStatusLine(ProtocolVersion paramProtocolVersion, int paramInt);
  
  public abstract void setStatusLine(ProtocolVersion paramProtocolVersion, int paramInt, String paramString);
  
  public abstract void setStatusLine(StatusLine paramStatusLine);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpResponse
 * JD-Core Version:    0.7.0.1
 */