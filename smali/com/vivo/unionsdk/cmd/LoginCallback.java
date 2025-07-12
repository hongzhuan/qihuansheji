package com.vivo.unionsdk.cmd;

import android.content.Context;
import android.text.TextUtils;
import com.vivo.sdkplugin.a.c;
import com.vivo.sdkplugin.a.d;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.l;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;

public class LoginCallback
  extends Callback
{
  private static final String KEY_LOGIN_USER_INFO = "loginUserInfo";
  private static final String KEY_MAIN_USER_INFO = "mainUserInfo";
  private static final String KEY_RESTORE_BY_CLIENT = "restoreByClient";
  private static final String TAG = "LoginCallback";
  
  public LoginCallback()
  {
    super(20001);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    Object localObject = getParam("loginUserInfo");
    String str = getParam("mainUserInfo");
    d locald = d.始(l.驶((String)localObject));
    localObject = null;
    if (!TextUtils.isEmpty(str)) {
      localObject = d.始(l.驶(str));
    }
    if (locald == null) {
      m.示("LoginCallback", "doExec, but loginUserInfo is null!");
    }
    if (paramBoolean) {
      c.驶().驶(paramContext.getPackageName(), locald, (d)localObject);
    }
    w.驶().驶(locald, j.驶(getParam("restoreByClient"), false));
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.LoginCallback
 * JD-Core Version:    0.7.0.1
 */