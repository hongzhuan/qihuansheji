package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;
import java.io.File;

public class ActivitiesCallback
  extends Callback
{
  private static final String TAG = "ActivitiesCallback";
  
  public ActivitiesCallback()
  {
    super(20004);
  }
  
  private boolean checkJump()
  {
    boolean bool2 = true;
    int i = j.驶(getParam("actsType"), -1);
    boolean bool1;
    String str;
    if (i != 3)
    {
      bool1 = bool2;
      if (i != 4) {}
    }
    else
    {
      str = getParam("actsLoginPicUri");
      if (!TextUtils.isEmpty(str)) {
        break label69;
      }
      m.示("ActivitiesCallback", "checkJump, but pic url is null, actsType = " + i);
      bool1 = false;
    }
    label69:
    File localFile;
    do
    {
      return bool1;
      localFile = new File(str);
      if (!localFile.exists()) {
        break;
      }
      bool1 = bool2;
    } while (localFile.canRead());
    m.示("ActivitiesCallback", "checkJump, pic file not exist, actsType = " + i + ", actsLoginPicUri = " + str);
    return false;
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    Activity localActivity = w.驶().始();
    if ((localActivity != null) && (checkJump()))
    {
      paramContext = new JumpCommand(new HookUtil().hookActivity(localActivity, paramContext.getPackageName()), 30, getParams());
      CommandClient.getInstance().sendCommandToServer(localActivity.getPackageName(), paramContext);
      return;
    }
    m.始("ActivitiesCallback", "activitiescallback, cant jump");
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.ActivitiesCallback
 * JD-Core Version:    0.7.0.1
 */