package org.apache.http;

import java.io.Serializable;

@Deprecated
public final class HttpVersion
  extends ProtocolVersion
  implements Serializable
{
  public static final String HTTP = "HTTP";
  public static final HttpVersion HTTP_0_9 = null;
  public static final HttpVersion HTTP_1_0 = null;
  public static final HttpVersion HTTP_1_1 = null;
  
  public HttpVersion(int paramInt1, int paramInt2)
  {
    super((String)null, 0, 0);
    throw new RuntimeException("Stub!");
  }
  
  public ProtocolVersion forVersion(int paramInt1, int paramInt2)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HttpVersion
 * JD-Core Version:    0.7.0.1
 */