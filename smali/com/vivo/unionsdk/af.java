package com.vivo.unionsdk;

import android.content.Context;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.open.VivoCallback;
import com.vivo.unionsdk.open.VivoUnionCommand;
import java.util.Map;

class af
  implements Runnable
{
  af(w paramw, Context paramContext, VivoCallback paramVivoCallback, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (w.士(this.士))
    {
      if (j.驶(this.驶, "com.vivo.sdkplugin") <= 640) {
        this.始.onCallbackResult(this.式, "-1", "");
      }
    }
    else {
      return;
    }
    w.岽(this.士).put(this.式, this.始);
    VivoUnionCommand localVivoUnionCommand = new VivoUnionCommand();
    localVivoUnionCommand.setCommandParams(this.式, this.示);
    CommandClient.getInstance().sendCommandToServer(this.驶.getPackageName(), localVivoUnionCommand);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.af
 * JD-Core Version:    0.7.0.1
 */