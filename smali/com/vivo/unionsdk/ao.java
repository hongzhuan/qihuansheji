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

class ao
  implements Runnable
{
  ao(w paramw, VivoPayInfo paramVivoPayInfo, Activity paramActivity, VivoPayCallback paramVivoPayCallback, int paramInt) {}
  
  public void run()
  {
    boolean bool = true;
    Object localObject1;
    Object localObject2;
    if (w.士(this.士))
    {
      w.驶(this.士, -1);
      if (w.驶(this.士)) {
        Toast.makeText(w.始(this.士), r.驶("vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"), 1).show();
      }
      if (!TextUtils.isEmpty(this.驶.getExtUid())) {
        if (w.藞(this.士).驶(this.始, this.驶, this.式, this.示, w.藛(this.士), bool))
        {
          w.藡(this.士).put(this.驶.getTransNo(), this.式);
          if (!TextUtils.isEmpty(this.驶.getExtUid())) {
            break label302;
          }
          if (j.驶(w.始(this.士), "com.vivo.sdkplugin") >= 1500) {
            break label260;
          }
          this.驶.unitConvert();
          localObject1 = this.驶.toMapParams();
          ((Map)localObject1).put("frontPayType", String.valueOf(this.示));
          localObject2 = w.式(this.士).始();
          if (!(localObject2 instanceof com.vivo.unionsdk.a.f)) {
            break label487;
          }
          ((com.vivo.unionsdk.a.f)localObject2).驶(0);
          localObject1 = new JumpCommand(this.始, 27, (Map)localObject1);
        }
      }
    }
    for (;;)
    {
      CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), (BaseCommand)localObject1);
      w.驶(this.士, this.始, this.驶);
      return;
      bool = false;
      break;
      label260:
      localObject1 = this.驶.toMapParams();
      ((Map)localObject1).put("frontPayType", String.valueOf(this.示));
      localObject1 = new JumpCommand(this.始, 39, (Map)localObject1);
      continue;
      label302:
      localObject1 = c.驶().始(w.藥(this.士));
      if (localObject1 != null)
      {
        this.驶.setUid(((d)localObject1).藞());
        this.驶.setExtUid(((d)localObject1).驶());
        this.驶.setToken(((d)localObject1).示());
      }
      localObject1 = w.式(this.士).始();
      localObject2 = this.驶.toMapParams();
      ((Map)localObject2).put("frontPayType", String.valueOf(this.示));
      if ((localObject1 instanceof com.vivo.unionsdk.a.f))
      {
        localObject1 = new JumpCommand(this.始, 40, (Map)localObject2);
        continue;
        w.驶(this.士, 2);
        w.驶(this.士, this.始);
        w.驶(this.士, this.驶);
        w.驶(this.士, this.式);
        w.始(this.士, this.示);
        w.始(this.士, this.始);
      }
      else
      {
        localObject1 = null;
        continue;
        label487:
        localObject1 = null;
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ao
 * JD-Core Version:    0.7.0.1
 */