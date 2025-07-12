package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.w;

public class GetRealNameCallBack
  extends Callback
{
  private static final String AGE = "age";
  private static final String REAL_NAME = "realName";
  
  public GetRealNameCallBack()
  {
    super(20007);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    paramBoolean = j.驶(getParam("realName"), false);
    int i = j.驶(getParam("age"), 0);
    w.驶().驶(paramBoolean, i);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.GetRealNameCallBack
 * JD-Core Version:    0.7.0.1
 */