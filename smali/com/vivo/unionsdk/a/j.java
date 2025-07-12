package com.vivo.unionsdk.a;

import android.os.Handler;
import com.vivo.plugin.aidl.IAccountCallBack.Stub;
import com.vivo.sdkplugin.a.d;

class j
  extends IAccountCallBack.Stub
{
  j(f paramf) {}
  
  public void loginCancel()
  {
    com.vivo.unionsdk.m.驶("SdkToApkInvoker", "Compat Account Callback: loginCancel-------------");
    f.藡(this.驶).post(new l(this));
  }
  
  public void loginResult(String paramString1, String paramString2, String paramString3)
  {
    com.vivo.unionsdk.m.驶("SdkToApkInvoker", "Compat Account Callback: loginResult-------------");
    d locald = new d();
    locald.藟(paramString1);
    locald.驶(paramString2);
    locald.士(paramString3);
    f.藡(this.驶).post(new k(this, locald));
  }
  
  public void updateCancel()
  {
    com.vivo.unionsdk.m.驶("SdkToApkInvoker", "Compat Account Callback: updateCancel-------------");
    f.藡(this.驶).post(new m(this));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.j
 * JD-Core Version:    0.7.0.1
 */