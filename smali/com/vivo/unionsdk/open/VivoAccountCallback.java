package com.vivo.unionsdk.open;

public abstract interface VivoAccountCallback
{
  public abstract void onVivoAccountLogin(String paramString1, String paramString2, String paramString3);
  
  public abstract void onVivoAccountLoginCancel();
  
  public abstract void onVivoAccountLogout(int paramInt);
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoAccountCallback
 * JD-Core Version:    0.7.0.1
 */