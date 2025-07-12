package org.apache.http.conn;

import java.io.IOException;

@Deprecated
public abstract interface ConnectionReleaseTrigger
{
  public abstract void abortConnection()
    throws IOException;
  
  public abstract void releaseConnection()
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.ConnectionReleaseTrigger
 * JD-Core Version:    0.7.0.1
 */