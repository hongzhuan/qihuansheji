package com.vivo.unionsdk;

import android.app.Activity;
import android.widget.Toast;
import com.vivo.unionsdk.a.b;
import com.vivo.unionsdk.a.f;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.JumpCommand;
import com.vivo.unionsdk.open.VivoExitCallback;

class x
  implements Runnable
{
  x(w paramw, VivoExitCallback paramVivoExitCallback, Activity paramActivity) {}
  
  public void run()
  {
    if (w.驶(this.式)) {
      Toast.makeText(w.始(this.式), r.驶("vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"), 1).show();
    }
    w.驶(this.式, this.驶);
    Object localObject = w.式(this.式).始();
    if ((localObject instanceof f))
    {
      if (((f)localObject).士())
      {
        w.示(this.式).onExitConfirm();
        w.驶(this.式, null);
        return;
      }
      localObject = new JumpCommand(this.始, 31, null);
      CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), (BaseCommand)localObject);
      return;
    }
    w.示(this.式).onExitConfirm();
    w.驶(this.式, null);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.x
 * JD-Core Version:    0.7.0.1
 */