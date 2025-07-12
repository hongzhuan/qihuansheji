package com.vivo.ic.channelunit.item;

import java.util.HashMap;

public abstract class TraceMap
{
  public static final String ERR_CAT = "errCat";
  public static final String ERR_CLS = "errCLS";
  public static final String ERR_MSG = "errMsg";
  public static final String ERR_PKG = "errPkg";
  public Exception mException = null;
  public String mPkg = null;
  
  public abstract HashMap toMap();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.item.TraceMap
 * JD-Core Version:    0.7.0.1
 */