package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.sdkplugin.a.c;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.w;

public class LogoutCallback
  extends Callback
{
  private static final String KEY_LOGOUT_CODE = "logoutCode";
  
  public LogoutCallback()
  {
    super(20002);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    int i = j.驶(getParam("logoutCode"), -1);
    if (paramBoolean) {
      c.驶().驶(paramContext.getPackageName(), i);
    }
    w.驶().始(i);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.LogoutCallback
 * JD-Core Version:    0.7.0.1
 */