package com.vivo.unionsdk;

import android.app.Activity;
import android.content.Context;
import com.vivo.sdkplugin.a.c;
import com.vivo.sdkplugin.a.d;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.RegisterLoginCommand;

class ah
  implements Runnable
{
  ah(w paramw, d paramd, String paramString1, String paramString2, String paramString3, String paramString4, Activity paramActivity) {}
  
  public void run()
  {
    c.驶().驶(w.始(this.藞).getPackageName(), this.驶, null);
    RegisterLoginCommand localRegisterLoginCommand = new RegisterLoginCommand();
    localRegisterLoginCommand.setCommandParams(this.始, this.式, this.示, this.士);
    CommandClient.getInstance().sendCommandToServer(w.始(this.藞).getPackageName(), localRegisterLoginCommand);
    w.式(this.藞, this.藛);
    w.驶(this.藞, true);
    w.示(this.藞, this.藛);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ah
 * JD-Core Version:    0.7.0.1
 */