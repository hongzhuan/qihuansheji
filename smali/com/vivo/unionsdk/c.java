package com.vivo.unionsdk;

import android.view.View;
import android.view.View.OnClickListener;
import com.vivo.unionsdk.cmd.JumpUtils;
import com.vivo.unionsdk.ui.g;

class c
  implements View.OnClickListener
{
  c(a parama, g paramg) {}
  
  public void onClick(View paramView)
  {
    if (JumpUtils.jumpToAppStore(a.士(this.始))) {
      this.始.藥();
    }
    for (;;)
    {
      this.驶.dismiss();
      return;
      a.驶(this.始, false, -2);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.c
 * JD-Core Version:    0.7.0.1
 */