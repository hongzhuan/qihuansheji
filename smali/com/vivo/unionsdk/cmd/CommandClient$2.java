package com.vivo.unionsdk.cmd;

class CommandClient$2
  implements Runnable
{
  CommandClient$2(CommandClient paramCommandClient, Callback paramCallback, String paramString, boolean paramBoolean) {}
  
  public void run()
  {
    this.val$finalCallback.exec(CommandClient.access$000(this.this$0), this.val$jsonArg, this.val$fromRemoteServer);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.CommandClient.2
 * JD-Core Version:    0.7.0.1
 */