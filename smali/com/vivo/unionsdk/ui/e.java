package com.vivo.unionsdk.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(d paramd) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    paramView.setFlags(268435456);
    paramView.setData(Uri.fromParts("package", this.驶.驶.getPackageName(), null));
    this.驶.驶.startActivity(paramView);
    d.驶(this.驶).dismiss();
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.e
 * JD-Core Version:    0.7.0.1
 */