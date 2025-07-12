package com.vivo.unionsdk.a;

import com.vivo.plugin.aidl.IClient.Stub;
import com.vivo.unionsdk.cmd.CommandClient;

class i
  extends IClient.Stub
{
  i(f paramf) {}
  
  public void doCommandCallback(int paramInt, String paramString)
  {
    CommandClient.getInstance().onReceiveServerCommand(paramInt, paramString, true);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.i
 * JD-Core Version:    0.7.0.1
 */