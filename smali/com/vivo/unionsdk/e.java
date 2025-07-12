package com.vivo.unionsdk;

import android.view.View;
import android.view.View.OnClickListener;
import com.vivo.unionsdk.d.d;
import com.vivo.unionsdk.ui.g;
import java.util.HashMap;

class e
  implements View.OnClickListener
{
  e(a parama, g paramg) {}
  
  public void onClick(View paramView)
  {
    paramView = this.始;
    int i;
    if (a.藦(this.始))
    {
      i = -4;
      a.驶(paramView, false, i);
      if (!a.藦(this.始)) {
        break label100;
      }
      paramView = new HashMap();
      paramView.put("key", "021");
      paramView.put("value", "0");
      d.驶(paramView, a.藨(this.始), a.讬(this.始), a.賭(this.始), null);
    }
    for (;;)
    {
      this.驶.dismiss();
      return;
      i = -3;
      break;
      label100:
      paramView = new HashMap();
      paramView.put("key", "021");
      paramView.put("value", "1");
      d.驶(paramView, a.俅(this.始), a.釔(this.始), a.岽(this.始), null);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.e
 * JD-Core Version:    0.7.0.1
 */