package com.vivo.unionsdk;

import android.app.Activity;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.GetRealNameInfoCommand;
import com.vivo.unionsdk.open.VivoRealNameInfoCallback;

class ae
  implements Runnable
{
  ae(w paramw, VivoRealNameInfoCallback paramVivoRealNameInfoCallback, Activity paramActivity) {}
  
  public void run()
  {
    if (w.士(this.式))
    {
      w.驶(this.式, this.驶);
      int i = j.驶(this.始, "com.vivo.sdkplugin");
      if ((i <= 0) || (i >= 640)) {
        break label75;
      }
      if (w.釔(this.式) != null)
      {
        w.釔(this.式).onGetRealNameInfoFailed();
        w.驶(this.式, null);
      }
    }
    return;
    label75:
    GetRealNameInfoCommand localGetRealNameInfoCommand = new GetRealNameInfoCommand();
    CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), localGetRealNameInfoCommand);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ae
 * JD-Core Version:    0.7.0.1
 */