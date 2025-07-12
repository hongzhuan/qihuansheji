package com.vivo.unionsdk.c;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.n;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

public class d
{
  private static Field 始(Object paramObject, String paramString)
  {
    paramObject = paramObject.getClass().getField(paramString);
    paramObject.setAccessible(true);
    return paramObject;
  }
  
  public static n 驶(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 0);
      if (paramContext == null) {
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
    for (;;)
    {
      try
      {
        n localn = new n();
        if (Build.VERSION.SDK_INT < 21)
        {
          i = 1;
          Object localObject2 = new Class[1];
          localObject2[0] = String.class;
          Object localObject1 = new Object[1];
          localObject1[0] = paramContext.sourceDir;
          if (i == 0)
          {
            localObject1 = null;
            localObject2 = null;
          }
          localObject2 = 驶("android.content.pm.PackageParser", (Class[])localObject2, (Object[])localObject1);
          if (i != 0)
          {
            localObject1 = 驶(localObject2, "parsePackage", new Class[] { File.class, String.class, DisplayMetrics.class, Integer.TYPE });
            DisplayMetrics localDisplayMetrics = new DisplayMetrics();
            localDisplayMetrics.setToDefaults();
            if (i != 0)
            {
              paramContext = ((Method)localObject1).invoke(localObject2, new Object[] { new File(paramContext.sourceDir), paramContext.sourceDir, localDisplayMetrics, Integer.valueOf(0) });
              驶(localn, 驶(paramContext, "activities").get(paramContext), Boolean.valueOf(false));
              驶(localn, 驶(paramContext, "receivers").get(paramContext), Boolean.valueOf(true));
              驶(localn, 驶(paramContext, "services").get(paramContext));
              驶(localn, (ArrayList)驶(paramContext, "requestedPermissions").get(paramContext));
              驶(localn, (Bundle)驶(paramContext, "mAppMetaData").get(paramContext));
              return localn;
            }
          }
          else
          {
            localObject1 = 驶(localObject2, "parsePackage", new Class[] { File.class, Integer.TYPE });
            continue;
          }
          paramContext = ((Method)localObject1).invoke(localObject2, new Object[] { new File(paramContext.sourceDir), Integer.valueOf(0) });
          continue;
        }
        int i = 0;
      }
      catch (Exception paramContext)
      {
        m.示("PackageParser", "parsePackage exception: ", paramContext);
        return null;
      }
    }
  }
  
  private static Object 驶(String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    paramString = Class.forName(paramString);
    if (paramArrayOfClass == null) {}
    for (paramString = paramString.getDeclaredConstructor(new Class[0]); paramArrayOfObject == null; paramString = paramString.getDeclaredConstructor(paramArrayOfClass)) {
      return paramString.newInstance(new Object[0]);
    }
    return paramString.newInstance(paramArrayOfObject);
  }
  
  private static Field 驶(Object paramObject, String paramString)
  {
    Field localField2 = paramObject.getClass().getDeclaredField(paramString);
    Field localField1 = localField2;
    if (localField2 == null) {
      localField1 = paramObject.getClass().getField(paramString);
    }
    localField1.setAccessible(true);
    return localField1;
  }
  
  private static Method 驶(Object paramObject, String paramString, Class... paramVarArgs)
  {
    paramObject = paramObject.getClass().getDeclaredMethod(paramString, paramVarArgs);
    paramObject.setAccessible(true);
    return paramObject;
  }
  
  private static void 驶(n paramn, Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    paramn.驶(paramBundle);
  }
  
  private static void 驶(n paramn, Object paramObject)
  {
    paramObject = (ArrayList)paramObject;
    if (paramObject == null) {}
    for (;;)
    {
      return;
      paramObject = paramObject.iterator();
      while (paramObject.hasNext())
      {
        Object localObject = paramObject.next();
        paramn.驶(new g(((ServiceInfo)驶(localObject, "info").get(localObject)).name));
      }
    }
  }
  
  private static void 驶(n paramn, Object paramObject, Boolean paramBoolean)
  {
    paramObject = (ArrayList)paramObject;
    if (paramObject == null) {}
    for (;;)
    {
      return;
      paramObject = paramObject.iterator();
      while (paramObject.hasNext())
      {
        Object localObject = paramObject.next();
        ActivityInfo localActivityInfo = (ActivityInfo)驶(localObject, "info").get(localObject);
        a locala = new a(localActivityInfo.name);
        locala.驶(localActivityInfo.theme);
        localObject = (ArrayList)始(localObject, "intents").get(localObject);
        if (localObject != null)
        {
          localObject = ((ArrayList)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            locala.驶((IntentFilter)((Iterator)localObject).next());
          }
        }
        if (paramBoolean.booleanValue()) {
          paramn.始(locala);
        } else {
          paramn.驶(locala);
        }
      }
    }
  }
  
  private static void 驶(n paramn, ArrayList paramArrayList)
  {
    if (paramArrayList == null) {}
    for (;;)
    {
      return;
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext()) {
        paramn.始(new g((String)paramArrayList.next()));
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.c.d
 * JD-Core Version:    0.7.0.1
 */