package com.vivo.unionsdk.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.Window;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.s;
import java.util.Map;

public class a
{
  protected int 士 = 1;
  protected Map 始;
  protected String 式;
  protected int 示;
  protected Activity 驶;
  
  public a(Activity paramActivity, Map paramMap)
  {
    this.驶 = paramActivity;
    this.始 = paramMap;
    this.式 = ((String)this.始.get("clientPkg"));
    if (TextUtils.isEmpty(this.式))
    {
      m.驶("FakeActivity", "FakeActivity, mClientPkgName is empty");
      藥();
      return;
    }
    this.示 = 1;
    paramActivity = (String)paramMap.get("orientation");
    try
    {
      this.士 = Integer.parseInt(paramActivity);
      return;
    }
    catch (Exception paramActivity) {}
  }
  
  protected void 士()
  {
    藨();
  }
  
  protected void 始()
  {
    Window localWindow = 藡();
    localWindow.requestFeature(1);
    switch (驶())
    {
    default: 
      int i = this.驶.getResources().getIdentifier("Theme", "style", "android");
      localWindow.setBackgroundDrawable(new ColorDrawable(s.式("vivo_window_background")));
      this.驶.setTheme(i);
      return;
    }
    this.驶.setFinishOnTouchOutside(false);
    localWindow.setBackgroundDrawable(new ColorDrawable(0));
  }
  
  protected void 式() {}
  
  protected void 示() {}
  
  protected void 藛() {}
  
  protected void 藞() {}
  
  protected void 藟() {}
  
  public boolean 藠()
  {
    return false;
  }
  
  public Window 藡()
  {
    return this.驶.getWindow();
  }
  
  public void 藥()
  {
    this.驶.finish();
  }
  
  public String 藦()
  {
    return this.式;
  }
  
  protected void 藨()
  {
    if (this.士 == 1) {
      if (this.驶.getRequestedOrientation() != 1) {
        this.驶.setRequestedOrientation(1);
      }
    }
    while (this.驶.getRequestedOrientation() == 0) {
      return;
    }
    this.驶.setRequestedOrientation(6);
  }
  
  protected int 驶()
  {
    return 0;
  }
  
  protected void 驶(int paramInt1, int paramInt2, Intent paramIntent) {}
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.a
 * JD-Core Version:    0.7.0.1
 */