package com.vivo.unionsdk.open;

import java.util.HashMap;
import java.util.Map;

public class VivoRoleInfo
{
  private static final String KEY_ROLE_ID = "roleId";
  private static final String KEY_ROLE_LEVEL = "roleLevel";
  private static final String KEY_ROLE_NAME = "roleName";
  private static final String KEY_SERVICE_AREA_ID = "serviceAreaID";
  private static final String KEY_SERVICE_AREA_NAME = "serviceAreaName";
  private String mRoleId;
  private String mRoleLevel;
  private String mRoleName;
  private String mServiceAreaID;
  private String mServiceAreaName;
  
  public VivoRoleInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.mRoleId = paramString1;
    this.mRoleLevel = paramString2;
    this.mRoleName = paramString3;
    this.mServiceAreaID = paramString4;
    this.mServiceAreaName = paramString5;
  }
  
  public static VivoRoleInfo newRoleInfoFromMap(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0)) {
      return null;
    }
    return new VivoRoleInfo((String)paramMap.get("roleId"), (String)paramMap.get("roleLevel"), (String)paramMap.get("roleName"), (String)paramMap.get("serviceAreaID"), (String)paramMap.get("serviceAreaName"));
  }
  
  public Map formatToMap()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("roleId", this.mRoleId);
    localHashMap.put("roleLevel", this.mRoleLevel);
    localHashMap.put("roleName", this.mRoleName);
    localHashMap.put("serviceAreaID", this.mServiceAreaID);
    localHashMap.put("serviceAreaName", this.mServiceAreaName);
    return localHashMap;
  }
  
  public String getRoleId()
  {
    return this.mRoleId;
  }
  
  public String getRoleLevel()
  {
    return this.mRoleLevel;
  }
  
  public String getRoleName()
  {
    return this.mRoleName;
  }
  
  public String getServiceAreaID()
  {
    return this.mServiceAreaID;
  }
  
  public String getServiceAreaName()
  {
    return this.mServiceAreaName;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoRoleInfo
 * JD-Core Version:    0.7.0.1
 */