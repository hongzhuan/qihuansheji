package org.apache.http.client.entity;

import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.entity.StringEntity;

@Deprecated
public class UrlEncodedFormEntity
  extends StringEntity
{
  public UrlEncodedFormEntity(List<? extends NameValuePair> paramList)
    throws UnsupportedEncodingException
  {
    super((String)null);
    throw new RuntimeException("Stub!");
  }
  
  public UrlEncodedFormEntity(List<? extends NameValuePair> paramList, String paramString)
    throws UnsupportedEncodingException
  {
    super((String)null);
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.entity.UrlEncodedFormEntity
 * JD-Core Version:    0.7.0.1
 */