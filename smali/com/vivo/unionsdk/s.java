package com.vivo.unionsdk;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class s
{
  private static Resources 始;
  private static Context 驶;
  
  public static int 始(String paramString)
  {
    int i = 驶(paramString, "dimen");
    if (i > 0) {
      return 始.getDimensionPixelSize(i);
    }
    return 0;
  }
  
  public static int 式(String paramString)
  {
    int i = 驶(paramString, "color");
    if (i > 0) {
      return 始.getColor(i);
    }
    return 0;
  }
  
  public static int 驶(String paramString1, String paramString2)
  {
    try
    {
      int i = 始.getIdentifier(paramString1, paramString2, "com.vivo.sdkplugin");
      return i;
    }
    catch (Exception paramString1)
    {
      m.示("ResourceProxy", "getResourceId exception: ", paramString1);
    }
    return -1;
  }
  
  public static View 驶(String paramString, View paramView)
  {
    int i = 驶(paramString, "id");
    if (i > 0) {
      return paramView.findViewById(i);
    }
    return null;
  }
  
  public static View 驶(String paramString, ViewGroup paramViewGroup)
  {
    int i = 驶(paramString, "layout");
    if (i > 0) {
      return LayoutInflater.from(驶).inflate(i, paramViewGroup, false);
    }
    return null;
  }
  
  public static String 驶(String paramString)
  {
    int i = 驶(paramString, "string");
    if (i > 0) {
      return 始.getString(i);
    }
    return null;
  }
  
  public static String 驶(String paramString, Object... paramVarArgs)
  {
    int i = 驶(paramString, "string");
    if (i > 0) {
      return 始.getString(i, paramVarArgs);
    }
    return null;
  }
  
  public static void 驶(Context paramContext, Resources paramResources)
  {
    驶 = paramContext;
    始 = paramResources;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.s
 * JD-Core Version:    0.7.0.1
 */