package com.vivo.unionsdk;

import android.view.View;
import android.view.View.OnClickListener;
import com.vivo.unionsdk.ui.g;
import java.util.HashMap;

class d
  implements View.OnClickListener
{
  d(a parama, g paramg) {}
  
  public void onClick(View paramView)
  {
    if (j.驶(a.藛(this.始), "com.vivo.sdkplugin") > a.藞(this.始)) {
      a.驶(this.始, true, -6);
    }
    for (;;)
    {
      paramView = new HashMap();
      paramView.put("key", "021");
      paramView.put("value", "2");
      com.vivo.unionsdk.d.d.驶(paramView, a.藠(this.始), a.藡(this.始), a.藥(this.始), null);
      this.驶.dismiss();
      return;
      a.始(this.始, a.藟(this.始));
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.d
 * JD-Core Version:    0.7.0.1
 */