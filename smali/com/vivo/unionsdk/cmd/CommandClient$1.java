package com.vivo.unionsdk.cmd;

import com.vivo.plugin.aidl.IClient.Stub;

class CommandClient$1
  extends IClient.Stub
{
  CommandClient$1(CommandClient paramCommandClient) {}
  
  public void doCommandCallback(int paramInt, String paramString)
  {
    this.this$0.onReceiveServerCommand(paramInt, paramString, false);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.CommandClient.1
 * JD-Core Version:    0.7.0.1
 */