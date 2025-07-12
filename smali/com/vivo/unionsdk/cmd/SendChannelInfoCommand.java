package com.vivo.unionsdk.cmd;

import android.content.Context;

public class SendChannelInfoCommand
  extends BaseCommand
{
  private static final String CHANNEL_INFO = "channelInfo";
  
  public SendChannelInfoCommand()
  {
    super(17);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setParams(String paramString)
  {
    addParam("channelInfo", paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.SendChannelInfoCommand
 * JD-Core Version:    0.7.0.1
 */