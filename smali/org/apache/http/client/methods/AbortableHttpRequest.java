package org.apache.http.client.methods;

import java.io.IOException;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;

@Deprecated
public abstract interface AbortableHttpRequest
{
  public abstract void abort();
  
  public abstract void setConnectionRequest(ClientConnectionRequest paramClientConnectionRequest)
    throws IOException;
  
  public abstract void setReleaseTrigger(ConnectionReleaseTrigger paramConnectionReleaseTrigger)
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.methods.AbortableHttpRequest
 * JD-Core Version:    0.7.0.1
 */