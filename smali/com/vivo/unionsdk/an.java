package com.vivo.unionsdk;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;
import com.vivo.sdkplugin.a.c;
import com.vivo.sdkplugin.a.d;
import com.vivo.unionsdk.a.b;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.JumpCommand;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import java.util.HashMap;
import java.util.Map;

class an
  implements Runnable
{
  an(w paramw, Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback) {}
  
  public void run()
  {
    Object localObject1 = null;
    int i;
    if (w.士(this.示))
    {
      w.驶(this.示, -1);
      if (w.驶(this.示)) {
        Toast.makeText(w.始(this.示), r.驶("vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"), 1).show();
      }
      if (w.藞(this.示).驶(this.驶, this.始, this.式, w.藛(this.示)))
      {
        w.藡(this.示).put(this.始.getTransNo(), this.式);
        i = j.驶(w.始(this.示), "com.vivo.sdkplugin");
        if (!TextUtils.isEmpty(this.始.getExtUid())) {
          break label245;
        }
        if (i >= 1500) {
          break label221;
        }
        this.始.unitConvert();
        localObject1 = w.式(this.示).始();
        if (!(localObject1 instanceof com.vivo.unionsdk.a.f)) {
          break label475;
        }
        ((com.vivo.unionsdk.a.f)localObject1).驶(0);
        localObject1 = new JumpCommand(this.驶, 27, this.始.toMapParams());
      }
    }
    for (;;)
    {
      CommandClient.getInstance().sendCommandToServer(this.驶.getPackageName(), (BaseCommand)localObject1);
      w.驶(this.示, this.驶, this.始);
      return;
      label221:
      localObject1 = new JumpCommand(this.驶, 39, this.始.toMapParams());
      continue;
      label245:
      Object localObject2;
      if (i < 1500)
      {
        localObject2 = w.式(this.示).始();
        if ((localObject2 instanceof com.vivo.unionsdk.a.f)) {
          ((com.vivo.unionsdk.a.f)localObject2).驶(1);
        }
      }
      if (w.藛(this.示) == 1)
      {
        localObject2 = c.驶().始(w.藥(this.示));
        if (localObject2 != null)
        {
          localObject1 = ((d)localObject2).驶();
          this.始.setUid(((d)localObject2).藞());
          this.始.setExtUid(((d)localObject2).驶());
          this.始.setToken(((d)localObject2).示());
        }
      }
      for (;;)
      {
        localObject2 = this.始.toMapParams();
        ((Map)localObject2).put("sdkOpenid", localObject1);
        localObject1 = new JumpCommand(this.驶, 3, (Map)localObject2);
        break;
        if (w.藛(this.示) == 2) {
          this.始.setUid(this.始.getExtUid());
        } else {
          m.示("UnionManager", "pay, mAppType is invalid type");
        }
      }
      w.驶(this.示, 1);
      w.驶(this.示, this.驶);
      w.驶(this.示, this.始);
      w.驶(this.示, this.式);
      w.始(this.示, this.驶);
      return;
      label475:
      localObject1 = null;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.an
 * JD-Core Version:    0.7.0.1
 */