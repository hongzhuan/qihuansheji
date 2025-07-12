package com.vivo.unionsdk.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import com.vivo.plugin.aidl.ExecuteServiceAIDL;
import com.vivo.plugin.aidl.IAccountCallBack;
import com.vivo.plugin.aidl.IClient;
import com.vivo.plugin.aidl.IPayAndRechargeCallBack;
import com.vivo.plugin.aidl.ISinglePayCallBack;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.m.a;

public class f
  extends a
{
  private ExecuteServiceAIDL 士;
  private int 藛 = 0;
  private Handler 藞;
  private boolean 藟 = false;
  private BaseCommand 藠 = null;
  private ServiceConnection 藡 = new h(this);
  private IClient 藥 = new i(this);
  private IAccountCallBack 藦 = new j(this);
  private IPayAndRechargeCallBack 藨 = new n(this);
  private ISinglePayCallBack 讬 = new q(this);
  
  public f(Context paramContext, String paramString, int paramInt1, int paramInt2, a.a parama)
  {
    super(paramContext, paramString, paramInt1, parama);
    this.藛 = paramInt2;
    this.藞 = new Handler(paramContext.getMainLooper());
  }
  
  private boolean 藠()
  {
    Intent localIntent = new Intent("com.vivo.plugin.aidl.service");
    localIntent.setPackage("com.vivo.sdkplugin");
    localIntent.setComponent(new ComponentName("com.vivo.sdkplugin", "com.vivo.plugin.aidl.LoginAccInfoService"));
    return this.驶.bindService(localIntent, this.藡, 1);
  }
  
  private void 藡()
  {
    try
    {
      Intent localIntent = new Intent();
      localIntent.setComponent(new ComponentName("com.vivo.sdkplugin", "com.vivo.unionsdk.ui.UnionActivity"));
      localIntent.addFlags(268435456);
      this.驶.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      m.示("SdkToApkInvoker", "antiPullUp is failed");
    }
  }
  
  public boolean 士()
  {
    return this.藛 < 600;
  }
  
  public void 示()
  {
    m.驶(m.a.始);
    if (!com.vivo.unionsdk.j.驶()) {
      藡();
    }
    this.藞.postDelayed(new g(this), 100L);
  }
  
  public boolean 藛()
  {
    return this.藛 < 620;
  }
  
  public int 藞()
  {
    return this.藛;
  }
  
  public ExecuteServiceAIDL 藟()
  {
    return this.士;
  }
  
  public void 驶(int paramInt)
  {
    try
    {
      this.式 = paramInt;
      this.士.registerClient(this.藥, this.驶.getPackageName(), this.始, this.式, 1540);
      return;
    }
    catch (Exception localException)
    {
      m.示("SdkToApkInvoker", "Exception, e = " + localException);
    }
  }
  
  public void 驶(BaseCommand paramBaseCommand)
  {
    m.驶("SdkToApkInvoker", "reconnect remote server.. command = " + paramBaseCommand);
    this.藠 = paramBaseCommand;
    if (!com.vivo.unionsdk.j.驶()) {
      藡();
    }
    藠();
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.f
 * JD-Core Version:    0.7.0.1
 */