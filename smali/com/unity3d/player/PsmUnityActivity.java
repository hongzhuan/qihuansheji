package com.unity3d.player;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;

public class PsmUnityActivity
  extends UnityPlayerNativeActivity
{
  private String a = null;
  private String b = null;
  
  public ApplicationInfo getApplicationInfo()
  {
    ApplicationInfo localApplicationInfo = super.getApplicationInfo();
    localApplicationInfo.nativeLibraryDir = this.b;
    return localApplicationInfo;
  }
  
  public String getPackageCodePath()
  {
    return this.a;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Log.d(getClass().getSimpleName(), "pid = " + Process.myPid());
    Bundle localBundle = getIntent().getExtras();
    String str = localBundle.getString("path");
    Log.d(getClass().getSimpleName(), "path = " + localBundle.getString("path"));
    this.a = str;
    this.b = (str + "/lib/armeabi-v7a");
    super.onCreate(paramBundle);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.PsmUnityActivity
 * JD-Core Version:    0.7.0.1
 */