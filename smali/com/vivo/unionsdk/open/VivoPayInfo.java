package com.vivo.unionsdk.open;

import com.vivo.unionsdk.j;
import java.util.HashMap;
import java.util.Map;

public class VivoPayInfo
{
  private static final String PAY_PARAMS_BLANCE = "blance";
  private static final String PAY_PARAMS_EXTINFO = "extInfo";
  private static final String PAY_PARAMS_KEY_APPID = "appId";
  private static final String PAY_PARAMS_KEY_EXTUID = "extuid";
  private static final String PAY_PARAMS_KEY_PRODUCT_DESP = "productDes";
  private static final String PAY_PARAMS_KEY_PRODUCT_NAME = "productName";
  private static final String PAY_PARAMS_KEY_PRODUCT_PRICE = "productPrice";
  private static final String PAY_PARAMS_KEY_TOKEN = "token";
  private static final String PAY_PARAMS_KEY_TRANSNO = "transNo";
  private static final String PAY_PARAMS_KEY_UID = "uid";
  private static final String PAY_PARAMS_KEY_VIVO_SIGN = "signature";
  private static final String PAY_PARAMS_LEVEL = "level";
  private static final String PAY_PARAMS_PARTY = "party";
  private static final String PAY_PARAMS_ROLEID = "roleId";
  private static final String PAY_PARAMS_ROLENAME = "roleName";
  private static final String PAY_PARAMS_SERVERNAME = "serverName";
  private static final String PAY_PARAMS_VIP = "vip";
  private String mAppId;
  private String mBlance;
  private String mExtInfo;
  private String mExtUid;
  private String mLevel;
  private String mParty;
  private String mProductDes;
  private String mProductName;
  private String mProductPrice;
  private String mRoleId;
  private String mRoleName;
  private String mServerName;
  private String mToken;
  private String mTransNo;
  private String mUid;
  private String mVip;
  private String mVivoSignature;
  
  private VivoPayInfo() {}
  
  public VivoPayInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, null, null, null, null, null, null, null, null);
  }
  
  public VivoPayInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15)
  {
    this.mProductName = paramString1;
    this.mProductDes = paramString2;
    this.mProductPrice = paramString3;
    this.mVivoSignature = paramString4;
    this.mAppId = paramString5;
    this.mTransNo = paramString6;
    this.mExtUid = paramString7;
    this.mBlance = paramString8;
    this.mVip = paramString9;
    this.mLevel = paramString10;
    this.mParty = paramString11;
    this.mRoleId = paramString12;
    this.mRoleName = paramString13;
    this.mServerName = paramString14;
    this.mExtInfo = paramString15;
  }
  
  public String getAppId()
  {
    return this.mAppId;
  }
  
  public String getExtUid()
  {
    return this.mExtUid;
  }
  
  public String getProductDes()
  {
    return this.mProductDes;
  }
  
  public String getProductName()
  {
    return this.mProductName;
  }
  
  public String getProductPrice()
  {
    return this.mProductPrice;
  }
  
  public String getTransNo()
  {
    return this.mTransNo;
  }
  
  public String getUid()
  {
    return this.mUid;
  }
  
  public String getVivoSignature()
  {
    return this.mVivoSignature;
  }
  
  public void setExtUid(String paramString)
  {
    this.mExtUid = paramString;
  }
  
  public void setToken(String paramString)
  {
    this.mToken = paramString;
  }
  
  public void setUid(String paramString)
  {
    this.mUid = paramString;
  }
  
  public Map toMapParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", this.mAppId);
    localHashMap.put("productDes", this.mProductDes);
    localHashMap.put("productName", this.mProductName);
    localHashMap.put("productPrice", this.mProductPrice);
    localHashMap.put("transNo", this.mTransNo);
    localHashMap.put("signature", this.mVivoSignature);
    localHashMap.put("uid", this.mUid);
    localHashMap.put("extuid", this.mExtUid);
    localHashMap.put("token", this.mToken);
    localHashMap.put("blance", this.mBlance);
    localHashMap.put("vip", this.mVip);
    localHashMap.put("level", this.mLevel);
    localHashMap.put("party", this.mParty);
    localHashMap.put("roleId", this.mRoleId);
    localHashMap.put("roleName", this.mRoleName);
    localHashMap.put("serverName", this.mServerName);
    localHashMap.put("extInfo", this.mExtInfo);
    return localHashMap;
  }
  
  public String toString()
  {
    return "appId = " + this.mAppId + " productDes = " + this.mProductDes + " productName = " + this.mProductName + " productPrice = " + this.mProductPrice + " transNo = " + this.mTransNo + " vivoSignature = " + this.mVivoSignature;
  }
  
  public void unitConvert()
  {
    this.mProductPrice = j.驶(this.mProductPrice);
  }
  
  public static class Builder
  {
    private VivoPayInfo mPayInfo = new VivoPayInfo(null);
    
    public VivoPayInfo build()
    {
      return this.mPayInfo;
    }
    
    public Builder setAppId(String paramString)
    {
      VivoPayInfo.access$602(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setBalance(String paramString)
    {
      VivoPayInfo.access$902(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setExtInfo(String paramString)
    {
      VivoPayInfo.access$1602(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setParty(String paramString)
    {
      VivoPayInfo.access$1202(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setProductDes(String paramString)
    {
      VivoPayInfo.access$402(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setProductName(String paramString)
    {
      VivoPayInfo.access$302(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setProductPrice(String paramString)
    {
      VivoPayInfo.access$502(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setRoleId(String paramString)
    {
      VivoPayInfo.access$1302(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setRoleLevel(String paramString)
    {
      VivoPayInfo.access$1102(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setRoleName(String paramString)
    {
      VivoPayInfo.access$1402(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setServerName(String paramString)
    {
      VivoPayInfo.access$1502(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setToken(String paramString)
    {
      VivoPayInfo.access$802(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setTransNo(String paramString)
    {
      VivoPayInfo.access$102(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setUid(String paramString)
    {
      VivoPayInfo.access$702(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setVipLevel(String paramString)
    {
      VivoPayInfo.access$1002(this.mPayInfo, paramString);
      return this;
    }
    
    public Builder setVivoSignature(String paramString)
    {
      VivoPayInfo.access$202(this.mPayInfo, paramString);
      return this;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoPayInfo
 * JD-Core Version:    0.7.0.1
 */