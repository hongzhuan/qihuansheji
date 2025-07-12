package com.vivo.unionsdk;

import android.content.Context;
import android.text.TextUtils;

public class i
{
  private static String 始 = "";
  private static String 式 = "";
  private static String 驶;
  
  public static String 始()
  {
    if (TextUtils.isEmpty(始)) {
      始 = k.驶();
    }
    return 始;
  }
  
  public static String 驶()
  {
    if (TextUtils.isEmpty(式)) {
      式 = j.始();
    }
    return 式;
  }
  
  public static String 驶(Context paramContext)
  {
    if (TextUtils.isEmpty(驶)) {
      驶 = k.驶(paramContext);
    }
    if (TextUtils.isEmpty(驶)) {
      驶 = "012345678987654";
    }
    return 驶;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.i
 * JD-Core Version:    0.7.0.1
 */