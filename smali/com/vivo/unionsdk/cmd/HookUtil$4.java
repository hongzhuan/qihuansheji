package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;

class HookUtil$4
  extends ContextWrapper
{
  HookUtil$4(HookUtil paramHookUtil, Context paramContext, String paramString, Activity paramActivity)
  {
    super(paramContext);
  }
  
  public Context createPackageContext(String paramString, int paramInt)
  {
    return super.createPackageContext(this.val$activity.getPackageName(), paramInt);
  }
  
  public String getPackageName()
  {
    return this.val$pkgName;
  }
  
  public void startActivity(Intent paramIntent)
  {
    this.val$activity.startActivity(paramIntent);
  }
  
  public void startActivity(Intent paramIntent, Bundle paramBundle)
  {
    this.val$activity.startActivity(paramIntent, paramBundle);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.HookUtil.4
 * JD-Core Version:    0.7.0.1
 */