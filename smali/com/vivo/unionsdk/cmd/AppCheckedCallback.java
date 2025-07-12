package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.w;

public class AppCheckedCallback
  extends Callback
{
  private static final String KEY_APK_PATH = "apkPath";
  private static final String KEY_CODE = "code";
  private static final String KEY_FORCE_INSTALL = "forceInstall";
  
  public AppCheckedCallback()
  {
    super(4);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    int i = Integer.parseInt(getParam("code"));
    paramBoolean = Boolean.valueOf(getParam("forceInstall")).booleanValue();
    paramContext = getParam("apkPath");
    w.驶().驶(i, paramBoolean, paramContext);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.AppCheckedCallback
 * JD-Core Version:    0.7.0.1
 */