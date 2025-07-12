package com.vivo.unionsdk.open;

import java.util.HashMap;
import java.util.Map;

public class VivoRechargeInfo
{
  private static final String PAY_PARAMS_KEY_APPID = "appId";
  private static final String PAY_PARAMS_KEY_OPENID = "uid";
  private static final String PAY_PARAMS_KEY_SK = "sk";
  private static final String PAY_PARAMS_KEY_TOKEN = "token";
  private static final String PAY_PARAMS_KEY_TRANSNO = "transNo";
  private String mAppId;
  private String mOpenId;
  private String mSk;
  private String mToken;
  private String mTransNo;
  
  private VivoRechargeInfo() {}
  
  public VivoRechargeInfo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.mOpenId = paramString1;
    this.mSk = paramString2;
    this.mToken = paramString3;
    this.mAppId = paramString4;
  }
  
  public String getAppId()
  {
    return this.mAppId;
  }
  
  public String getOpenId()
  {
    return this.mOpenId;
  }
  
  public String getSk()
  {
    return this.mSk;
  }
  
  public String getToken()
  {
    return this.mToken;
  }
  
  public String getTransNo()
  {
    return this.mTransNo;
  }
  
  public void setTransNo(String paramString)
  {
    this.mTransNo = paramString;
  }
  
  public Map toMapParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("uid", this.mOpenId);
    localHashMap.put("sk", this.mSk);
    localHashMap.put("token", this.mToken);
    localHashMap.put("appId", this.mAppId);
    localHashMap.put("transNo", this.mTransNo);
    return localHashMap;
  }
  
  public static class Builder
  {
    private VivoRechargeInfo mRechargeInfo = new VivoRechargeInfo(null);
    
    public VivoRechargeInfo build()
    {
      return this.mRechargeInfo;
    }
    
    public Builder setAppId(String paramString)
    {
      VivoRechargeInfo.access$402(this.mRechargeInfo, paramString);
      return this;
    }
    
    public Builder setOpenId(String paramString)
    {
      VivoRechargeInfo.access$102(this.mRechargeInfo, paramString);
      return this;
    }
    
    public Builder setSk(String paramString)
    {
      VivoRechargeInfo.access$202(this.mRechargeInfo, paramString);
      return this;
    }
    
    public Builder setToken(String paramString)
    {
      VivoRechargeInfo.access$302(this.mRechargeInfo, paramString);
      return this;
    }
    
    public Builder setTransNo(String paramString)
    {
      VivoRechargeInfo.access$502(this.mRechargeInfo, paramString);
      return this;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoRechargeInfo
 * JD-Core Version:    0.7.0.1
 */