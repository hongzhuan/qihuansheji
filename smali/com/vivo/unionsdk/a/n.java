package com.vivo.unionsdk.a;

import android.os.Handler;
import com.vivo.plugin.aidl.IPayAndRechargeCallBack.Stub;
import com.vivo.unionsdk.m;

class n
  extends IPayAndRechargeCallBack.Stub
{
  n(f paramf) {}
  
  public void payResult(String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4)
  {
    m.驶("SdkToApkInvoker", "Compat Pay Callback: payResult, transNo = " + paramString1 + ", result_code = " + paramString2);
    f.藡(this.驶).post(new o(this, paramBoolean, paramString1, paramString2, paramString3));
  }
  
  public void rechargeResult(String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4)
  {
    m.驶("SdkToApkInvoker", "Compat Recharge Callback: rechargeResult, result_code = " + paramString2);
    f.藡(this.驶).post(new p(this, paramBoolean, paramString2, paramString3));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.n
 * JD-Core Version:    0.7.0.1
 */