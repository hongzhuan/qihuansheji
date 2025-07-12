package com.vivo.unionsdk.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.vivo.plugin.aidl.ExecuteServiceAIDL;
import com.vivo.plugin.aidl.ExecuteServiceAIDL.Stub;
import com.vivo.sdkplugin.a.c;
import com.vivo.sdkplugin.a.d;
import com.vivo.unionsdk.cmd.ClientReconnectRemoteCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.RestoreLoginStateCommand;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;

class h
  implements ServiceConnection
{
  h(f paramf) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    f.驶(this.驶, ExecuteServiceAIDL.Stub.asInterface(paramIBinder));
    for (;;)
    {
      try
      {
        if (f.始(this.驶) >= 600) {
          continue;
        }
        f.藛(this.驶).registerCallBack(this.驶.驶.getPackageName(), f.式(this.驶), f.示(this.驶), this.驶.驶.getResources().getConfiguration().orientation, f.士(this.驶));
        bool = true;
      }
      catch (RemoteException paramComponentName)
      {
        paramComponentName.printStackTrace();
        boolean bool = false;
        continue;
        this.驶.示.驶(4);
        continue;
        CommandClient.getInstance().sendCommandToServer(this.驶.驶.getPackageName(), new ClientReconnectRemoteCommand());
        paramIBinder = c.驶().始(this.驶.驶.getPackageName());
        if (paramIBinder == null) {
          continue;
        }
        m.始("SdkToApkInvoker", "onServiceConnected, login opid=" + paramIBinder.驶());
        paramComponentName = new RestoreLoginStateCommand();
        paramComponentName.setCommandPrams(paramIBinder);
        if (!paramIBinder.藟()) {
          continue;
        }
        paramIBinder = c.驶().驶(paramIBinder.始());
        if (paramIBinder == null) {
          continue;
        }
        m.始("SdkToApkInvoker", "onServiceConnected, prt opid=" + paramIBinder.驶());
        paramComponentName.addParentParam(paramIBinder);
        CommandClient.getInstance().sendCommandToServer(this.驶.驶.getPackageName(), paramComponentName);
        if (f.藠(this.驶) == null) {
          continue;
        }
        CommandClient.getInstance().sendCommandToServer(this.驶.驶.getPackageName(), f.藠(this.驶));
        continue;
      }
      m.驶("SdkToApkInvoker", "onServiceConnected, register = " + bool + ", mIsReconnect = " + f.藟(this.驶));
      if (f.藟(this.驶)) {
        continue;
      }
      if (!bool) {
        continue;
      }
      this.驶.示.驶(0);
      f.驶(this.驶, false);
      return;
      f.藛(this.驶).registerClient(f.藞(this.驶), this.驶.驶.getPackageName(), this.驶.始, this.驶.式, 1540);
      f.藛(this.驶).registerProcessDeath(new Binder(), this.驶.驶.getPackageName());
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    m.驶("SdkToApkInvoker", "onServiceDisconnected, name = " + paramComponentName);
    f.驶(this.驶, null);
    f.驶(this.驶, true);
    w.驶().藠();
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.h
 * JD-Core Version:    0.7.0.1
 */