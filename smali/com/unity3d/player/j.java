package com.unity3d.player;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public final class j
{
  private final Bundle a;
  
  public j(Activity paramActivity)
  {
    localBundle = Bundle.EMPTY;
    Object localObject = paramActivity.getPackageManager();
    localComponentName = paramActivity.getComponentName();
    try
    {
      localObject = ((PackageManager)localObject).getActivityInfo(localComponentName, 128);
      paramActivity = localBundle;
      if (localObject != null)
      {
        paramActivity = localBundle;
        if (((ActivityInfo)localObject).metaData != null) {
          paramActivity = ((ActivityInfo)localObject).metaData;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramActivity)
    {
      for (;;)
      {
        i.Log(6, "Unable to retreive meta data for activity '" + localComponentName + "'");
        paramActivity = localBundle;
      }
    }
    this.a = new Bundle(paramActivity);
  }
  
  private static String a(String paramString)
  {
    return String.format("%s.%s", new Object[] { "unityplayer", paramString });
  }
  
  public final boolean a()
  {
    return this.a.getBoolean(a("ForwardNativeEventsToDalvik"));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.j
 * JD-Core Version:    0.7.0.1
 */