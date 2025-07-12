package com.vivo.sdkplugin.a;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class b
{
  protected String 士;
  protected String 始;
  protected String 式;
  protected String 示;
  protected String 藛;
  protected String 藞;
  protected String 藟;
  protected String 藠;
  protected String 藡;
  protected String 藥;
  protected ArrayList 藦;
  protected String 藨;
  protected String 驶;
  
  private static String 始(ArrayList paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() <= 0)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str = (String)paramArrayList.next();
      if (!TextUtils.isEmpty(str))
      {
        localStringBuilder.append(str);
        localStringBuilder.append("%;");
      }
    }
    return localStringBuilder.toString();
  }
  
  private static ArrayList 藨(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = null;
    }
    ArrayList localArrayList;
    String[] arrayOfString;
    int j;
    int i;
    do
    {
      do
      {
        do
        {
          return paramString;
          localArrayList = new ArrayList();
          arrayOfString = paramString.split("%;");
          paramString = localArrayList;
        } while (arrayOfString == null);
        paramString = localArrayList;
      } while (arrayOfString.length <= 0);
      j = arrayOfString.length;
      i = 0;
      paramString = localArrayList;
    } while (i >= j);
    paramString = arrayOfString[i];
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      i += 1;
      break;
      localArrayList.add(paramString);
    }
  }
  
  public static void 驶(Map paramMap, b paramb)
  {
    if ((paramMap == null) || (paramMap.size() <= 0)) {}
    do
    {
      return;
      Object localObject = (String)paramMap.get("openId");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.驶((String)localObject);
      }
      localObject = (String)paramMap.get("parentOpenId");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.始((String)localObject);
      }
      localObject = (String)paramMap.get("uuid");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.式((String)localObject);
      }
      localObject = (String)paramMap.get("userId");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.示((String)localObject);
      }
      localObject = (String)paramMap.get("authToken");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.士((String)localObject);
      }
      localObject = (String)paramMap.get("sk");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.藞((String)localObject);
      }
      localObject = (String)paramMap.get("userName");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.藟((String)localObject);
      }
      localObject = (String)paramMap.get("pwd");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.藠((String)localObject);
      }
      localObject = (String)paramMap.get("nickName");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.藡((String)localObject);
      }
      localObject = (String)paramMap.get("PhoneNum");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.藥((String)localObject);
      }
      localObject = (String)paramMap.get("email");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramb.藦((String)localObject);
      }
      localObject = (String)paramMap.get("questions");
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localObject = 藨((String)localObject);
        if ((localObject != null) && (((ArrayList)localObject).size() > 0)) {
          paramb.驶((ArrayList)localObject);
        }
      }
      paramMap = (String)paramMap.get("opentoken");
    } while (TextUtils.isEmpty(paramMap));
    paramb.藛(paramMap);
  }
  
  public String 士()
  {
    return this.藨;
  }
  
  public void 士(String paramString)
  {
    this.士 = paramString;
  }
  
  public String 始()
  {
    return this.始;
  }
  
  public void 始(String paramString)
  {
    this.始 = paramString;
  }
  
  public String 式()
  {
    return this.士;
  }
  
  public void 式(String paramString)
  {
    this.式 = paramString;
  }
  
  public String 示()
  {
    if (!TextUtils.isEmpty(this.始))
    {
      d locald = c.驶().驶(this.始);
      if (locald != null) {
        return locald.式();
      }
    }
    return this.士;
  }
  
  public void 示(String paramString)
  {
    this.示 = paramString;
  }
  
  public String 藛()
  {
    if (!TextUtils.isEmpty(this.始))
    {
      d locald = c.驶().驶(this.始);
      if (locald != null) {
        return locald.藛();
      }
    }
    return this.藞;
  }
  
  public void 藛(String paramString)
  {
    this.藨 = paramString;
  }
  
  public void 藞(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    this.藛 = paramString;
  }
  
  public void 藟(String paramString)
  {
    this.藞 = paramString;
  }
  
  public void 藠(String paramString)
  {
    this.藟 = paramString;
  }
  
  public void 藡(String paramString)
  {
    this.藠 = paramString;
  }
  
  public void 藥(String paramString)
  {
    this.藡 = paramString;
  }
  
  public void 藦(String paramString)
  {
    this.藥 = paramString;
  }
  
  public String 驶()
  {
    return this.驶;
  }
  
  public void 驶(String paramString)
  {
    this.驶 = paramString;
  }
  
  public void 驶(ArrayList paramArrayList)
  {
    this.藦 = paramArrayList;
  }
  
  protected void 驶(Map paramMap)
  {
    if (!TextUtils.isEmpty(this.驶)) {
      paramMap.put("openId", this.驶);
    }
    if (!TextUtils.isEmpty(this.始)) {
      paramMap.put("parentOpenId", this.始);
    }
    if (!TextUtils.isEmpty(this.式)) {
      paramMap.put("uuid", this.式);
    }
    if (!TextUtils.isEmpty(this.示)) {
      paramMap.put("userId", this.示);
    }
    if (!TextUtils.isEmpty(this.士)) {
      paramMap.put("authToken", this.士);
    }
    if (!TextUtils.isEmpty(this.藛)) {
      paramMap.put("sk", this.藛);
    }
    if (!TextUtils.isEmpty(this.藞)) {
      paramMap.put("userName", this.藞);
    }
    if (!TextUtils.isEmpty(this.藟)) {
      paramMap.put("pwd", this.藟);
    }
    if (!TextUtils.isEmpty(this.藠)) {
      paramMap.put("nickName", this.藠);
    }
    if (!TextUtils.isEmpty(this.藡)) {
      paramMap.put("PhoneNum", this.藡);
    }
    if (!TextUtils.isEmpty(this.藥)) {
      paramMap.put("email", this.藥);
    }
    String str = 始(this.藦);
    if (!TextUtils.isEmpty(str)) {
      paramMap.put("questions", str);
    }
    if (!TextUtils.isEmpty(this.藨)) {
      paramMap.put("opentoken", this.藨);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.sdkplugin.a.b
 * JD-Core Version:    0.7.0.1
 */