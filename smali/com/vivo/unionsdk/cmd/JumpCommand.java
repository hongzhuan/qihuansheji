package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.Context;
import com.vivo.unionsdk.a.a;
import com.vivo.unionsdk.ar;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.w;
import java.util.Map;

public class JumpCommand
  extends BaseCommand
{
  private Activity mActivity;
  private String mUri;
  
  public JumpCommand(Activity paramActivity, int paramInt, Map paramMap)
  {
    super(10);
    this.mActivity = paramActivity;
    if (paramMap != null) {
      addParams(paramMap);
    }
    addParam("j_type", String.valueOf(paramInt));
    this.mUri = ar.驶("vivounion://union.vivo.com/openjump", getParams());
  }
  
  public JumpCommand(Activity paramActivity, String paramString)
  {
    super(10);
    this.mActivity = paramActivity;
    this.mUri = paramString;
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void doJump()
  {
    JumpUtils.jumpTo(this.mActivity, this.mUri, this.mActivity.getPackageName(), getParams());
  }
  
  public void doJumpCompatApk()
  {
    a locala = w.驶().式();
    int i = j.驶(getParam("j_type"), -1);
    JumpUtils.jumpForCompatApk(this.mActivity, i, locala.始(), getParams());
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.JumpCommand
 * JD-Core Version:    0.7.0.1
 */