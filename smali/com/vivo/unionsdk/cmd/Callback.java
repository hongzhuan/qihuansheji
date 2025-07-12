package com.vivo.unionsdk.cmd;

import android.content.Context;
import android.text.TextUtils;
import com.vivo.unionsdk.l;
import com.vivo.unionsdk.m;
import java.util.HashMap;
import java.util.Map;

public abstract class Callback
{
  private static final String TAG = "Callback";
  private Map mParams = new HashMap();
  
  public Callback(int paramInt) {}
  
  protected void addParams(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0)) {
      return;
    }
    this.mParams.putAll(paramMap);
  }
  
  protected abstract void doExec(Context paramContext, boolean paramBoolean);
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    m.驶("Callback", "doExecCompat Callback: " + getClass().getSimpleName() + ", clientPkg = " + paramString);
  }
  
  public void exec(Context paramContext, String paramString, boolean paramBoolean)
  {
    m.驶("Callback", "exec Callback: " + getClass().getSimpleName() + ", fromRemoteServer = " + paramBoolean);
    addParams(l.驶(paramString));
    doExec(paramContext, paramBoolean);
  }
  
  protected String getParam(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return (String)this.mParams.get(paramString);
  }
  
  protected Map getParams()
  {
    return this.mParams;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.Callback
 * JD-Core Version:    0.7.0.1
 */