package org.apache.http.conn;

import java.io.InterruptedIOException;

public class ConnectTimeoutException
  extends InterruptedIOException
{
  public ConnectTimeoutException()
  {
    throw new RuntimeException("Stub!");
  }
  
  public ConnectTimeoutException(String paramString)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.ConnectTimeoutException
 * JD-Core Version:    0.7.0.1
 */