package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.w;

public class UnionExitCallback
  extends Callback
{
  private static final String CLIENT_PKGNAME = "client_pkgname";
  private static final String EXIT_TYPE = "exit_type";
  public static final String UNION_EXIT_CONFIRM = "union_exit_confirm";
  
  public UnionExitCallback()
  {
    super(20005);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    if (getParam("exit_type").equals("union_exit_confirm"))
    {
      w.驶().式(getParam("client_pkgname"));
      return;
    }
    w.驶().始(getParam("client_pkgname"));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.UnionExitCallback
 * JD-Core Version:    0.7.0.1
 */