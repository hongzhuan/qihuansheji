package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.w;

public class LoginCancelCallback
  extends Callback
{
  private static final String TAG = "LoginCancelCallback";
  
  public LoginCancelCallback()
  {
    super(20003);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    w.驶().藛();
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.LoginCancelCallback
 * JD-Core Version:    0.7.0.1
 */