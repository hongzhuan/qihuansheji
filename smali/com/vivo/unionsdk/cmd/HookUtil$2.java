package com.vivo.unionsdk.cmd;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;

class HookUtil$2
  extends ContextWrapper
{
  HookUtil$2(HookUtil paramHookUtil, Context paramContext1, String paramString, Application paramApplication, Context paramContext2)
  {
    super(paramContext1);
  }
  
  public Context createPackageContext(String paramString, int paramInt)
  {
    return super.createPackageContext(this.val$context.getPackageName(), paramInt);
  }
  
  public Context getApplicationContext()
  {
    return this.val$application;
  }
  
  public String getPackageName()
  {
    return this.val$pkgName;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.HookUtil.2
 * JD-Core Version:    0.7.0.1
 */