package com.vivo.unionsdk;

import android.app.Activity;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.JumpCommand;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoRechargeInfo;
import java.util.HashMap;
import java.util.Map;

class ap
  implements Runnable
{
  ap(w paramw, VivoRechargeInfo paramVivoRechargeInfo, VivoPayCallback paramVivoPayCallback, Activity paramActivity) {}
  
  public void run()
  {
    if (w.士(this.示))
    {
      w.驶(this.示, -1);
      this.驶.setTransNo(String.valueOf(w.藦()));
      Object localObject = this.驶.toMapParams();
      w.藡(this.示).put(this.驶.getTransNo(), this.始);
      ((Map)localObject).put("isRecharge", String.valueOf(true));
      if (j.驶(this.式, "com.vivo.sdkplugin") < 622)
      {
        localObject = this.驶.getTransNo();
        VivoPayCallback localVivoPayCallback = (VivoPayCallback)w.藡(this.示).get(localObject);
        if (localVivoPayCallback != null) {
          localVivoPayCallback.onVivoPayResult((String)localObject, false, String.valueOf(-1));
        }
        w.藡(this.示).remove(localObject);
        return;
      }
      localObject = new JumpCommand(this.式, 13, (Map)localObject);
      CommandClient.getInstance().sendCommandToServer(this.式.getPackageName(), (BaseCommand)localObject);
      return;
    }
    w.驶(this.示, this.式);
    w.驶(this.示, this.驶);
    w.驶(this.示, this.始);
    w.始(this.示, this.式);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ap
 * JD-Core Version:    0.7.0.1
 */