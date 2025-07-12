package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;

@Deprecated
public abstract interface RouteInfo
{
  public abstract int getHopCount();
  
  public abstract HttpHost getHopTarget(int paramInt);
  
  public abstract LayerType getLayerType();
  
  public abstract InetAddress getLocalAddress();
  
  public abstract HttpHost getProxyHost();
  
  public abstract HttpHost getTargetHost();
  
  public abstract TunnelType getTunnelType();
  
  public abstract boolean isLayered();
  
  public abstract boolean isSecure();
  
  public abstract boolean isTunnelled();
  
  public static enum LayerType
  {
    LAYERED,  PLAIN;
    
    private LayerType() {}
  }
  
  public static enum TunnelType
  {
    PLAIN,  TUNNELLED;
    
    private TunnelType() {}
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.conn.routing.RouteInfo
 * JD-Core Version:    0.7.0.1
 */