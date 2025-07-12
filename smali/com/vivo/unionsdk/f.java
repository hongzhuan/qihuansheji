package com.vivo.unionsdk;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.JumpCommand;
import com.vivo.unionsdk.cmd.JumpUtils;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import java.util.HashMap;

class f
{
  private VivoPayInfo 士;
  private Activity 始;
  private int 式 = -1;
  private boolean 示 = false;
  private VivoPayCallback 藛;
  private int 藞 = -1;
  private boolean 藟 = false;
  private boolean 藠 = false;
  private Context 驶;
  
  f(Context paramContext)
  {
    this.驶 = paramContext.getApplicationContext();
  }
  
  private boolean 士()
  {
    int i = j.驶(this.驶, "com.vivo.sdkplugin");
    if (i < 0) {}
    while ((i >= 600) || (!j.驶())) {
      return false;
    }
    return true;
  }
  
  private void 式()
  {
    m.驶("AppChecker", "actionSucc = " + this.式);
    if (this.始 == null)
    {
      m.示("AppChecker", "actionSuccess, but mActivity is null!");
      return;
    }
    switch (this.式)
    {
    }
    for (;;)
    {
      藛();
      return;
      w.驶().驶(this.始);
      continue;
      w.驶().驶(this.始, this.士, this.藛);
      continue;
      w.驶().驶(this.始, this.士, this.藛, this.藞);
    }
  }
  
  private void 示()
  {
    switch (this.式)
    {
    }
    for (;;)
    {
      藛();
      return;
      w.驶().藛();
      this.藟 = false;
      Toast.makeText(this.驶, s.驶("vivo_apk_install_failed"), 0).show();
      continue;
      if (this.藛 != null) {
        this.藛.onVivoPayResult(this.士.getTransNo(), false, String.valueOf(-1));
      }
      this.示 = false;
      Toast.makeText(this.驶, s.驶("vivo_apk_install_failed"), 0).show();
      continue;
      if (this.藛 != null) {
        this.藛.onVivoPayResult(this.士.getTransNo(), false, String.valueOf(-1));
      }
      Toast.makeText(this.驶, s.驶("vivo_apk_install_failed"), 0).show();
    }
  }
  
  private void 藛()
  {
    this.式 = -1;
    this.士 = null;
    this.藛 = null;
    this.藞 = -1;
    this.始 = null;
    if (j.驶(this.驶, "com.vivo.sdkplugin") <= 0) {
      始();
    }
  }
  
  private void 驶(Activity paramActivity)
  {
    JumpCommand localJumpCommand = new JumpCommand(paramActivity, 25, null);
    CommandClient.getInstance().sendCommandToServer(paramActivity.getPackageName(), localJumpCommand);
  }
  
  private boolean 驶(int paramInt)
  {
    int i = j.驶(this.驶, "com.vivo.sdkplugin");
    if (i < 0) {}
    while ((paramInt != 0) || (i >= 600) || (i < 9) || (!j.驶())) {
      return false;
    }
    return true;
  }
  
  public void 始()
  {
    this.藟 = false;
    this.示 = false;
  }
  
  void 驶()
  {
    m.驶("AppChecker", "onSdkInitFinished, mCheckedAction = " + this.式 + ", mInstallFinish = " + this.藠);
    if (this.藠) {
      式();
    }
    this.藠 = false;
  }
  
  void 驶(int paramInt, boolean paramBoolean, String paramString)
  {
    if (this.始 == null)
    {
      m.示("AppChecker", "onAppChecked, but mActivity is null!");
      return;
    }
    boolean bool = this.始.isFinishing();
    m.驶("AppChecker", "onAppChecked, code = " + paramInt + ", forceInstall = " + paramBoolean + ", mCheckedAction = " + this.式 + ", activityFinished = " + bool);
    if ((!bool) && ((paramInt == 0) || (paramInt == 101)))
    {
      if (paramInt == 0) {
        paramString = w.驶().示();
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("j_type", String.valueOf(26));
      localHashMap.put("apkPath", paramString);
      localHashMap.put("forceInstall", String.valueOf(paramBoolean));
      paramString = ar.驶("vivounion://union.vivo.com/openjump", localHashMap);
      JumpUtils.jumpToClientInstallActivity(this.始, paramString, this.驶.getPackageName(), null);
      return;
    }
    if (paramBoolean)
    {
      示();
      return;
    }
    式();
  }
  
  void 驶(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    m.驶("AppChecker", "onApkInstalled, success = " + paramBoolean1 + ", forceInstall = " + paramBoolean2 + ", errCode = " + paramInt);
    if (!paramBoolean1)
    {
      if (paramBoolean2) {
        示();
      }
      for (;;)
      {
        if (!paramBoolean2) {
          g.驶(this.驶).驶(System.currentTimeMillis());
        }
        return;
        式();
      }
    }
    if ((w.驶().式() instanceof com.vivo.unionsdk.a.f)) {
      式();
    }
    this.藠 = true;
  }
  
  public boolean 驶(Activity paramActivity, int paramInt)
  {
    m.驶("AppChecker", "checkForLogin = " + paramInt);
    藛();
    this.藠 = false;
    if ((this.藟) || (士())) {
      return true;
    }
    this.藟 = true;
    this.式 = 0;
    this.始 = paramActivity;
    int i = j.驶(this.驶, "com.vivo.sdkplugin");
    if ((i < 0) || ((paramInt == 0) && (i < 9)) || ((paramInt == 2) && (i < 600)) || ((!j.驶()) && (i < 600)))
    {
      驶(0, true, null);
      m.驶("AppChecker", "checkForLogin === 1");
    }
    for (;;)
    {
      return false;
      if (i < 600)
      {
        m.驶("AppChecker", "checkForLogin === 2");
        return true;
      }
      if (i >= 600)
      {
        m.驶("AppChecker", "checkForLogin === 3");
        驶(paramActivity);
      }
    }
  }
  
  public boolean 驶(Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback, int paramInt)
  {
    藛();
    this.藠 = false;
    if ((this.示) || (驶(paramInt))) {
      return true;
    }
    this.示 = true;
    this.式 = 1;
    this.始 = paramActivity;
    this.士 = paramVivoPayInfo;
    this.藛 = paramVivoPayCallback;
    int i = j.驶(this.驶, "com.vivo.sdkplugin");
    if ((i < 0) || ((paramInt == 0) && (i < 9)) || ((paramInt == 2) && (i < 600)) || ((!j.驶()) && (i < 600)))
    {
      驶(0, true, null);
      m.驶("AppChecker", "checkForLogin === 1");
    }
    for (;;)
    {
      return false;
      if (i < 600)
      {
        m.驶("AppChecker", "checkForLogin === 2");
        return true;
      }
      if (i >= 600)
      {
        m.驶("AppChecker", "checkForLogin === 3");
        驶(paramActivity);
      }
    }
  }
  
  public boolean 驶(Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    藛();
    this.藠 = false;
    paramInt2 = j.驶(this.驶, "com.vivo.sdkplugin");
    m.驶("AppChecker", "ignoreAppCheckForPayNow, apkVersion = " + paramInt2);
    if (paramInt2 < 21) {}
    for (boolean bool2 = true;; bool2 = false)
    {
      boolean bool1 = bool2;
      if (paramInt2 < 600)
      {
        bool1 = bool2;
        if (!j.驶()) {
          bool1 = true;
        }
      }
      bool2 = bool1;
      if (paramBoolean)
      {
        bool2 = bool1;
        if (paramInt2 < 1500) {
          bool2 = true;
        }
      }
      Activity localActivity = w.驶().始();
      if ((bool2) && (localActivity != null))
      {
        this.式 = 2;
        this.始 = paramActivity;
        this.士 = paramVivoPayInfo;
        this.藛 = paramVivoPayCallback;
        this.藞 = paramInt1;
        paramActivity = new HashMap();
        paramActivity.put("j_type", String.valueOf(26));
        paramActivity.put("apkPath", w.驶().示());
        paramActivity.put("forceInstall", String.valueOf(true));
        JumpUtils.jumpToClientInstallActivity(localActivity, ar.驶("vivounion://union.vivo.com/openjump", paramActivity), this.驶.getPackageName(), null);
        return false;
      }
      m.式("AppChecker", "forceInstall = " + bool2 + ", topActivity = " + localActivity);
      return true;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.f
 * JD-Core Version:    0.7.0.1
 */