package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import java.lang.reflect.Method;

public class HookUtil
{
  private static final String TAG = "HookUtil";
  private Activity mHookActivity;
  private Application mHookApplication;
  
  public Activity hookActivity(Activity paramActivity, String paramString)
  {
    try
    {
      HookUtil.3 local3 = new HookUtil.3(this, paramActivity);
      paramActivity = new HookUtil.4(this, paramActivity.getBaseContext(), paramString, paramActivity);
      paramString = ContextWrapper.class.getDeclaredMethod("attachBaseContext", new Class[] { Context.class });
      paramString.setAccessible(true);
      paramString.invoke(local3, new Object[] { paramActivity });
      this.mHookActivity = local3;
      label66:
      return this.mHookActivity;
    }
    catch (Exception paramActivity)
    {
      break label66;
    }
  }
  
  public Application hookApplication(Context paramContext, String paramString)
  {
    try
    {
      HookUtil.1 local1 = new HookUtil.1(this, paramContext);
      paramContext = new HookUtil.2(this, ((Application)paramContext.getApplicationContext()).getBaseContext(), paramString, local1, paramContext);
      paramString = ContextWrapper.class.getDeclaredMethod("attachBaseContext", new Class[] { Context.class });
      paramString.setAccessible(true);
      paramString.invoke(local1, new Object[] { paramContext });
      this.mHookApplication = local1;
      label73:
      return this.mHookApplication;
    }
    catch (Exception paramContext)
    {
      break label73;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.HookUtil
 * JD-Core Version:    0.7.0.1
 */