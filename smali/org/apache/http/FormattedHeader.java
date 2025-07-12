package org.apache.http;

import org.apache.http.util.CharArrayBuffer;

@Deprecated
public abstract interface FormattedHeader
  extends Header
{
  public abstract CharArrayBuffer getBuffer();
  
  public abstract int getValuePos();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.FormattedHeader
 * JD-Core Version:    0.7.0.1
 */