package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;

@Deprecated
public abstract interface EofSensorWatcher
{
  public abstract boolean eofDetected(InputStream paramInputStream)
    throws IOException;
  
  public abstract boolean streamAbort(InputStream paramInputStream)
    throws IOException;
  
  public abstract boolean streamClosed(InputStream paramInputStream)
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.EofSensorWatcher
 * JD-Core Version:    0.7.0.1
 */