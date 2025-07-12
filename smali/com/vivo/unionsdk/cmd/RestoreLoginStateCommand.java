package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.sdkplugin.a.d;
import com.vivo.unionsdk.l;

public class RestoreLoginStateCommand
  extends BaseCommand
{
  private static final String TAG = "RestoreLoginStateCommand";
  
  public RestoreLoginStateCommand()
  {
    super(9);
  }
  
  public void addParentParam(d paramd)
  {
    if (paramd != null) {
      addParam("RestoreParentInfo", l.驶(paramd.藠()));
    }
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setCommandPrams(d paramd)
  {
    if (paramd != null) {
      addParams(paramd.藠());
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.RestoreLoginStateCommand
 * JD-Core Version:    0.7.0.1
 */