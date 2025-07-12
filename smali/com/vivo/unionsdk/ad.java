package com.vivo.unionsdk;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import com.vivo.unionsdk.a.b;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.ConfigurationChangedCommand;

class ad
  implements ComponentCallbacks
{
  ad(w paramw) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (w.始(this.驶, false))
    {
      w.式(this.驶).驶(paramConfiguration);
      CommandClient.getInstance().sendCommandToServer(w.始(this.驶).getPackageName(), new ConfigurationChangedCommand());
    }
  }
  
  public void onLowMemory() {}
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ad
 * JD-Core Version:    0.7.0.1
 */