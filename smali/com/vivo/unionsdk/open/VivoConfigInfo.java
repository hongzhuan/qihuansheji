package com.vivo.unionsdk.open;

public class VivoConfigInfo
{
  private int mAppType = -1;
  private boolean mIsShowAssit = true;
  private String mProcessName;
  
  public int getAppType()
  {
    return this.mAppType;
  }
  
  public String getProcessName()
  {
    return this.mProcessName;
  }
  
  public boolean isShowAssit()
  {
    return this.mIsShowAssit;
  }
  
  public void setAppType(int paramInt)
  {
    this.mAppType = paramInt;
  }
  
  public void setProcessName(String paramString)
  {
    this.mProcessName = paramString;
  }
  
  public void setShowAssit(boolean paramBoolean)
  {
    this.mIsShowAssit = paramBoolean;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoConfigInfo
 * JD-Core Version:    0.7.0.1
 */