package com.vivo.unionsdk;

import android.content.Context;
import com.vivo.unionsdk.a.b;
import com.vivo.unionsdk.a.f;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.RequestCommunityCommand;
import com.vivo.unionsdk.open.VivoCommunityCallback;

class al
  implements Runnable
{
  al(w paramw, VivoCommunityCallback paramVivoCommunityCallback) {}
  
  public void run()
  {
    if (w.士(this.始))
    {
      w.驶(this.始, this.驶);
      localObject = w.式(this.始).始();
      if (((localObject instanceof f)) && (((f)localObject).藛()))
      {
        w.藠(this.始).onCommunityResult(false, null, null);
        w.驶(this.始, null);
      }
    }
    else
    {
      return;
    }
    Object localObject = new RequestCommunityCommand();
    CommandClient.getInstance().sendCommandToServer(w.始(this.始).getPackageName(), (BaseCommand)localObject);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.al
 * JD-Core Version:    0.7.0.1
 */