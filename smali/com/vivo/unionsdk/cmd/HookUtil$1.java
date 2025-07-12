package com.vivo.unionsdk.cmd;

import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;

class HookUtil$1
  extends Application
{
  HookUtil$1(HookUtil paramHookUtil, Context paramContext) {}
  
  public void registerActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks paramActivityLifecycleCallbacks)
  {
    ((Application)this.val$context.getApplicationContext()).registerActivityLifecycleCallbacks(paramActivityLifecycleCallbacks);
  }
  
  public void unregisterActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks paramActivityLifecycleCallbacks)
  {
    ((Application)this.val$context.getApplicationContext()).unregisterActivityLifecycleCallbacks(paramActivityLifecycleCallbacks);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.HookUtil.1
 * JD-Core Version:    0.7.0.1
 */