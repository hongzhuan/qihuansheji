package com.vivo.unionsdk;

import android.app.Activity;
import android.widget.Toast;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.JumpCommand;
import java.util.HashMap;
import java.util.Map;

class aj
  implements Runnable
{
  aj(w paramw, Activity paramActivity) {}
  
  public void run()
  {
    if (w.士(this.始))
    {
      w.驶(this.始, -1);
      if (w.驶(this.始)) {
        Toast.makeText(w.始(this.始), r.驶("vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"), 1).show();
      }
      if (w.藞(this.始).驶(this.驶, w.藛(this.始)))
      {
        Object localObject = new HashMap();
        ((HashMap)localObject).put("loginFromAssist", String.valueOf(false));
        ((HashMap)localObject).put("lastLoginOpenId", g.驶(w.始(this.始)).始());
        if (t.驶(this.驶).驶(this.驶.getPackageName(), false))
        {
          m.驶("UnionManager", "login, reportActivate is true");
          ((HashMap)localObject).put("isActivate", String.valueOf(true));
        }
        localObject = new JumpCommand(this.驶, 2, (Map)localObject);
        CommandClient.getInstance().sendCommandToServer(this.驶.getPackageName(), (BaseCommand)localObject);
      }
      return;
    }
    w.驶(this.始, 0);
    w.驶(this.始, this.驶);
    w.始(this.始, this.驶);
    m.驶("UnionManager", "checkSdkInit = false");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.aj
 * JD-Core Version:    0.7.0.1
 */