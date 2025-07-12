package com.vivo.unionsdk;

import java.util.HashSet;

public class h
{
  private static final HashSet 驶 = new HashSet();
  
  static
  {
    驶.add("com.vivo.unionsdk.ui.UnionActivity");
    驶.add("com.alipay.sdk.auth.AuthActivity");
    驶.add("com.alipay.sdk.app.H5PayActivity");
    驶.add("com.unionpay.uppay.PayActivity");
  }
  
  public static boolean 驶(String paramString)
  {
    return !驶.contains(paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.h
 * JD-Core Version:    0.7.0.1
 */