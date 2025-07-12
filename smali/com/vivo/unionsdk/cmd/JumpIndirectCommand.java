package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.open.VivoConstants.JumpType;

public class JumpIndirectCommand
  extends BaseCommand
{
  private static final String JUMP_TYPE = "jumpType";
  
  public JumpIndirectCommand()
  {
    super(18);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setParams(VivoConstants.JumpType paramJumpType)
  {
    int i = 0;
    switch (JumpIndirectCommand.1.$SwitchMap$com$vivo$unionsdk$open$VivoConstants$JumpType[paramJumpType.ordinal()])
    {
    }
    for (;;)
    {
      addParam("jumpType", String.valueOf(i));
      return;
      i = 1;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.JumpIndirectCommand
 * JD-Core Version:    0.7.0.1
 */