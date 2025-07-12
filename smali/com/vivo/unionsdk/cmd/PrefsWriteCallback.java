package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.g;

public class PrefsWriteCallback
  extends Callback
{
  private static final String PREFS_KEY = "prefs.key";
  private static final String PREFS_TYPE = "prefs.type";
  private static final String PREFS_VALUE = "prefs.value";
  
  public PrefsWriteCallback()
  {
    super(7);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    String str1 = getParam("prefs.value");
    String str2 = getParam("prefs.type");
    if (Integer.class.getCanonicalName().equals(str2))
    {
      g.驶(paramContext).驶(getParam("prefs.key"), Integer.valueOf(str1));
      return;
    }
    if (Long.class.getCanonicalName().equals(str2))
    {
      g.驶(paramContext).驶(getParam("prefs.key"), Long.valueOf(str1));
      return;
    }
    if (String.class.getCanonicalName().equals(str2))
    {
      g.驶(paramContext).驶(getParam("prefs.key"), str1);
      return;
    }
    if (Boolean.class.getCanonicalName().equals(str2))
    {
      g.驶(paramContext).驶(getParam("prefs.key"), Boolean.valueOf(str1));
      return;
    }
    if (Float.class.getCanonicalName().equals(str2))
    {
      g.驶(paramContext).驶(getParam("prefs.key"), Float.valueOf(str1));
      return;
    }
    if (Double.class.getCanonicalName().equals(str2))
    {
      g.驶(paramContext).驶(getParam("prefs.key"), Double.valueOf(str1));
      return;
    }
    throw new IllegalArgumentException("Unknow type! type = " + str2);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.PrefsWriteCallback
 * JD-Core Version:    0.7.0.1
 */