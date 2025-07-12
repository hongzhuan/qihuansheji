package com.vivo.ic.channelunit.item;

import java.util.HashMap;

public class EmptyChannel
  extends ChannalInfo
{
  public String getChannel()
  {
    return null;
  }
  
  public int getMode()
  {
    return -1;
  }
  
  public boolean isRight()
  {
    return false;
  }
  
  public HashMap toMap()
  {
    HashMap localHashMap = new HashMap();
    if (this.mException != null)
    {
      localHashMap.put("errCLS", this.mException.getClass().toString());
      localHashMap.put("errMsg", this.mException.getMessage());
    }
    localHashMap.put("errCat", toString());
    localHashMap.put("errPkg", this.mPkg);
    return localHashMap;
  }
  
  public String toString()
  {
    return "EmptyChannel";
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.item.EmptyChannel
 * JD-Core Version:    0.7.0.1
 */