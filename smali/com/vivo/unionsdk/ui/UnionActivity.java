package com.vivo.unionsdk.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.u;

public class UnionActivity
  extends Activity
{
  private int 始 = 0;
  private a 驶;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.驶 != null) {
      this.驶.驶(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onBackPressed()
  {
    if ((this.驶 != null) && (this.驶.藠())) {
      return;
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      m.式("UnionActivity", "UnionActivity want to restore, and stop it!");
      finish();
    }
    do
    {
      return;
      paramBundle = c.驶(getIntent());
      if (paramBundle == null)
      {
        m.示("UnionActivity", "UnionActivity finish for null jump item!");
        finish();
        return;
      }
      this.始 = paramBundle.驶();
      this.驶 = b.驶(this, paramBundle);
      if (this.驶 == null)
      {
        m.示("UnionActivity", "UnionActivity finish for unknown fake type! fakeType = " + paramBundle.驶());
        finish();
        return;
      }
      this.驶.始();
    } while (this.始 == 26);
    u.驶().驶(this.驶.藦(), this);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.驶 != null)
    {
      this.驶.藟();
      if (this.始 != 26) {
        u.驶().始(this.驶.藦(), this);
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.驶 != null) {
      this.驶.藛();
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    if (this.驶 != null) {
      this.驶.示();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.驶 != null) {
      this.驶.士();
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    if (this.驶 != null) {
      this.驶.式();
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    if (this.驶 != null) {
      this.驶.藞();
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.UnionActivity
 * JD-Core Version:    0.7.0.1
 */