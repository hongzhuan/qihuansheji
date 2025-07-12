package com.vivo.unionsdk.cmd;

import android.content.Context;
import android.text.TextUtils;
import com.vivo.unionsdk.l;
import com.vivo.unionsdk.m;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseCommand
{
  private static String TAG = "BaseCommand";
  private int mCommandKey;
  private Map mParams = new HashMap();
  
  public BaseCommand(int paramInt)
  {
    this.mCommandKey = paramInt;
  }
  
  protected void addParam(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    this.mParams.put(paramString1, paramString2);
  }
  
  protected void addParams(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0)) {
      return;
    }
    this.mParams.putAll(paramMap);
  }
  
  protected abstract void doExec(Context paramContext, String paramString);
  
  public void exec(Context paramContext, String paramString1, String paramString2)
  {
    m.驶(TAG, "exec Command: " + getClass().getSimpleName() + ", clientPkgName = " + paramString1);
    addParams(l.驶(paramString2));
    doExec(paramContext, paramString1);
  }
  
  public int getCommandKey()
  {
    return this.mCommandKey;
  }
  
  public String getJsonArg()
  {
    return l.驶(this.mParams);
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
 * Qualified Name:     com.vivo.unionsdk.cmd.BaseCommand
 * JD-Core Version:    0.7.0.1
 */