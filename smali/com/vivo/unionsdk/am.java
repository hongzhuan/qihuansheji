package com.vivo.unionsdk;

import android.content.Context;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.RoleInfoReportCommand;
import com.vivo.unionsdk.open.VivoRoleInfo;

class am
  implements Runnable
{
  am(w paramw, VivoRoleInfo paramVivoRoleInfo) {}
  
  public void run()
  {
    if (w.士(this.始))
    {
      RoleInfoReportCommand localRoleInfoReportCommand = new RoleInfoReportCommand();
      localRoleInfoReportCommand.setCommandParams(this.驶);
      CommandClient.getInstance().sendCommandToServer(w.始(this.始).getPackageName(), localRoleInfoReportCommand);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.am
 * JD-Core Version:    0.7.0.1
 */