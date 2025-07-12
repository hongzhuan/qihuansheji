package com.vivo.ic.channelunit.item;

import java.util.HashMap;

public class Result
  extends TraceMap
{
  public boolean mSuccess;
  
  public Result() {}
  
  public Result(boolean paramBoolean, String paramString)
  {
    this.mSuccess = paramBoolean;
    this.mPkg = paramString;
  }
  
  public HashMap toMap()
  {
    HashMap localHashMap = new HashMap();
    if (this.mException != null)
    {
      localHashMap.put("errCLS", this.mException.getClass().toString());
      localHashMap.put("errMsg", this.mException.getMessage());
      localHashMap.put("errPkg", this.mPkg);
    }
    return localHashMap;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.item.Result
 * JD-Core Version:    0.7.0.1
 */