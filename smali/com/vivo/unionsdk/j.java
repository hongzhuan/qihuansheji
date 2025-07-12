package com.vivo.unionsdk;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

public class j
{
  public static String 始()
  {
    String str2 = 驶("ro.vivo.market.name", "unknown");
    String str1 = str2;
    if ("unknown".equals(str2)) {
      str1 = 驶("ro.product.model", "unknown");
    }
    return str1;
  }
  
  public static String 始(Context paramContext)
  {
    int i = Process.myPid();
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (localRunningAppProcessInfo.pid == i) {
          return localRunningAppProcessInfo.processName;
        }
      }
    }
    return null;
  }
  
  public static boolean 始(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    try
    {
      Intent localIntent1 = new Intent("android.intent.action.VIEW");
      localIntent1.setData(Uri.parse(paramString));
      localIntent1.setPackage("com.vivo.browser");
      paramContext.startActivity(localIntent1);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      try
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW");
        localIntent2.setData(Uri.parse(paramString));
        paramContext.startActivity(localIntent2);
        m.驶("Helpers", "can't find vivo browser, open with default browser");
        return true;
      }
      catch (ActivityNotFoundException paramContext)
      {
        m.示("Helpers", "openByBrowser, can't find browser");
      }
    }
    return false;
  }
  
  public static int 驶(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext != null) {
        try
        {
          paramContext = paramContext.getPackageInfo(paramString, 0);
          if (paramContext != null)
          {
            int i = paramContext.versionCode;
            return i;
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          paramContext.printStackTrace();
        }
      }
    }
    return -1;
  }
  
  public static int 驶(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramInt;
    }
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (Exception paramString)
    {
      m.示("Helpers", "stringToInt exception: ", paramString);
    }
    return paramInt;
  }
  
  public static String 驶(Context paramContext)
  {
    return "sdk_4.2.4.0";
  }
  
  public static String 驶(String paramString)
  {
    try
    {
      paramString = new BigDecimal(paramString).divide(new BigDecimal("100")).toPlainString();
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static String 驶(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString1 });
      if (TextUtils.isEmpty(paramString1)) {
        return paramString2;
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
        paramString1 = null;
      }
    }
    return paramString1;
  }
  
  public static boolean 驶()
  {
    String str = 驶("ro.product.manufacturer", "unknown");
    if (TextUtils.isEmpty(str)) {}
    while ((!str.toLowerCase().contains("bbk")) && (!str.toLowerCase().startsWith("vivo"))) {
      return false;
    }
    return true;
  }
  
  public static boolean 驶(Activity paramActivity)
  {
    if (paramActivity == null) {}
    while ((paramActivity.getWindow().getAttributes().flags & 0x400) != 1024) {
      return false;
    }
    return true;
  }
  
  public static boolean 驶(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramBoolean;
    }
    try
    {
      boolean bool = Boolean.parseBoolean(paramString);
      return bool;
    }
    catch (Exception paramString)
    {
      m.示("Helpers", "stringToLong exception: ", paramString);
    }
    return paramBoolean;
  }
  
  public static boolean 驶(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return false;
    }
    try
    {
      Class.forName("android.os.StrictMode").getMethod("disableDeathOnFileUriExposure", null).invoke(null, null);
      return false;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return true;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.j
 * JD-Core Version:    0.7.0.1
 */