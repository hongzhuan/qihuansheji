package com.vivo.unionsdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.support.v4.app.ActivityCompat;
import com.vivo.unionsdk.cmd.JumpUtils;
import java.util.ArrayList;
import java.util.HashMap;

public class o
{
  public static final String[] 驶 = { "android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE" };
  
  private static int 驶(int paramInt, Activity paramActivity, String... paramVarArgs)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramActivity);
    boolean bool = localSharedPreferences.getBoolean("permission.settings.FIRST_CHECK_PERMISSION", true);
    int k = paramVarArgs.length;
    int j = 0;
    int i = 1;
    String str;
    if (j < k)
    {
      str = paramVarArgs[j];
      if (ActivityCompat.checkSelfPermission(paramActivity, str) == 0) {
        break label225;
      }
      if (bool)
      {
        localArrayList1.add(str);
        i = 0;
      }
    }
    label225:
    for (;;)
    {
      j += 1;
      break;
      if (ActivityCompat.shouldShowRequestPermissionRationale(paramActivity, str))
      {
        localArrayList1.add(str);
        i = 0;
      }
      else
      {
        localArrayList2.add(str);
        i = 0;
        continue;
        localSharedPreferences.edit().putBoolean("permission.settings.FIRST_CHECK_PERMISSION", false).commit();
        if ((localArrayList1 != null) && (localArrayList1.size() > 0)) {
          ActivityCompat.requestPermissions(paramActivity, (String[])localArrayList1.toArray(new String[localArrayList1.size()]), paramInt);
        }
        while (i != 0)
        {
          return 0;
          if ((localArrayList2 != null) && (localArrayList2.size() > 0))
          {
            驶(paramActivity, paramInt, (String[])localArrayList2.toArray(new String[localArrayList2.size()]));
            return 2;
          }
        }
        return 1;
      }
    }
  }
  
  public static String 驶(String paramString)
  {
    if ("android.permission-group.CONTACTS".equals(paramString)) {
      return s.驶("vivo_permission_get_accounts");
    }
    if ("android.permission-group.PHONE".equals(paramString)) {
      return s.驶("vivo_permission_read_phone_state");
    }
    if ("android.permission-group.SMS".equals(paramString)) {
      return s.驶("vivo_permission_sms");
    }
    if ("android.permission-group.STORAGE".equals(paramString)) {
      return s.驶("vivo_permission_write_external_storage");
    }
    return "";
  }
  
  private static String 驶(String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    String str = "";
    int i = 0;
    if (i < j)
    {
      if (i == j - 1) {}
      for (str = str + paramVarArgs[i];; str = str + paramVarArgs[i] + "*")
      {
        i += 1;
        break;
      }
    }
    m.始("PermissionChecker", "getPermissionStr, perStr = " + str);
    return str;
  }
  
  private static void 驶(Activity paramActivity, int paramInt, String... paramVarArgs)
  {
    m.始("PermissionChecker", "onPermissionsDenied, requestCode = " + paramInt + ", permissions = " + paramVarArgs);
    HashMap localHashMap = new HashMap();
    localHashMap.put("extra_permissions", 驶(paramVarArgs));
    JumpUtils.jumpTo(paramActivity, 1000, paramActivity.getPackageName(), localHashMap);
  }
  
  public static boolean 驶(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT < 23) {}
    while (驶(paramActivity, 驶)) {
      return true;
    }
    驶(0, paramActivity, 驶);
    return false;
  }
  
  public static boolean 驶(Context paramContext, String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      if (ActivityCompat.checkSelfPermission(paramContext, paramVarArgs[i]) != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.o
 * JD-Core Version:    0.7.0.1
 */