package com.vivo.sdkplugin.a;

import android.text.TextUtils;
import com.vivo.unionsdk.m;
import java.util.HashMap;
import java.util.Map;

public class d
  extends b
{
  protected boolean 讬 = false;
  private String 賭;
  
  public static d 始(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0))
    {
      m.示("UserInfo", "newUserInfoFromJson error, map is null!");
      return null;
    }
    d locald = new d();
    String str = (String)paramMap.get("visitor");
    if (!TextUtils.isEmpty(str)) {
      locald.驶(String.valueOf(1).equals(str));
    }
    str = (String)paramMap.get("loginTime");
    if (!TextUtils.isEmpty(str)) {
      locald.藨(str);
    }
    驶(paramMap, locald);
    return locald;
  }
  
  public String toString()
  {
    if (m.驶) {
      return "UserInfo[openId = " + this.驶 + ", mParentOpenId = " + this.始 + ", mUserID = " + this.示 + ", mVisitor = " + this.讬 + ", mNickName = " + this.藠 + "]";
    }
    return super.toString();
  }
  
  public String 藞()
  {
    if (!TextUtils.isEmpty(this.始)) {
      return this.始;
    }
    return this.驶;
  }
  
  public boolean 藟()
  {
    return !TextUtils.isEmpty(this.始);
  }
  
  public Map 藠()
  {
    HashMap localHashMap = new HashMap();
    if (this.讬) {}
    for (String str = String.valueOf(1);; str = String.valueOf(0))
    {
      localHashMap.put("visitor", str);
      if (!TextUtils.isEmpty(this.賭)) {
        localHashMap.put("loginTime", this.賭);
      }
      驶(localHashMap);
      return localHashMap;
    }
  }
  
  public void 藨(String paramString)
  {
    this.賭 = paramString;
  }
  
  public void 驶(boolean paramBoolean)
  {
    this.讬 = paramBoolean;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.sdkplugin.a.d
 * JD-Core Version:    0.7.0.1
 */