package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.open.VivoRoleInfo;

public class RoleInfoReportCommand
  extends BaseCommand
{
  public RoleInfoReportCommand()
  {
    super(8);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public VivoRoleInfo getRoleInfoCompatApk()
  {
    return VivoRoleInfo.newRoleInfoFromMap(getParams());
  }
  
  public void setCommandParams(VivoRoleInfo paramVivoRoleInfo)
  {
    addParams(paramVivoRoleInfo.formatToMap());
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.RoleInfoReportCommand
 * JD-Core Version:    0.7.0.1
 */