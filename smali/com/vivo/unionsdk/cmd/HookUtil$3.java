package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.Window;

class HookUtil$3
  extends Activity
{
  HookUtil$3(HookUtil paramHookUtil, Activity paramActivity) {}
  
  public Object getSystemService(@NonNull String paramString)
  {
    return this.val$activity.getSystemService(paramString);
  }
  
  public Window getWindow()
  {
    return this.val$activity.getWindow();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    this.val$activity.startActivityForResult(paramIntent, paramInt);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    this.val$activity.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.HookUtil.3
 * JD-Core Version:    0.7.0.1
 */