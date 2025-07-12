package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;

public abstract interface HostNameResolver
{
  public abstract InetAddress resolve(String paramString)
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.scheme.HostNameResolver
 * JD-Core Version:    0.7.0.1
 */