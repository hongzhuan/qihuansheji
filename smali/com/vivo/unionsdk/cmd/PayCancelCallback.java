package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;

public class PayCancelCallback
  extends Callback
{
  private static final String IS_RECHARGE = "isRecharge";
  private static final String IS_SAME = "isSame";
  private static final String TAG = "PayCancelCallback";
  private static final String TRANS_NO = "transNo";
  
  public PayCancelCallback()
  {
    super(30002);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    w.驶().驶(getParam("transNo"), j.驶(getParam("isSame"), false));
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    m.始("PayCancelCallback", "doExecCompat");
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.PayCancelCallback
 * JD-Core Version:    0.7.0.1
 */