package com.vivo.unionsdk.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.vivo.unionsdk.ar;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class c
  implements Serializable
{
  private HashMap 始 = new HashMap();
  private int 驶 = 0;
  
  private c(int paramInt, Map paramMap)
  {
    this.驶 = paramInt;
    if (paramMap != null)
    {
      paramMap.remove("j_type");
      驶(paramMap);
    }
  }
  
  public static c 驶(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      m.示("JumpItem", "newJumpItemFromIntent ERROR: null intent!");
      return null;
    }
    HashMap localHashMap = new HashMap();
    Object localObject;
    String str;
    if ("vivounion".equals(paramIntent.getScheme()))
    {
      paramIntent = paramIntent.getData();
      if (paramIntent == null)
      {
        m.示("JumpItem", "newJumpItemFromIntent ERROR: illegal uri!");
        return null;
      }
      localObject = paramIntent.getHost();
      str = paramIntent.getPath();
      if ((!"union.vivo.com".equals(localObject)) || (!"/openjump".equals(str)))
      {
        m.示("JumpItem", "newJumpItemFromIntent ERROR: illegal host or path, host = " + (String)localObject + ", path = " + str);
        return null;
      }
      paramIntent = ar.驶(paramIntent.toString());
      if (paramIntent != null) {
        localHashMap.putAll(paramIntent);
      }
    }
    while (localHashMap.size() <= 0)
    {
      m.示("JumpItem", "newJumpItemFromIntent ERROR: no params!");
      return null;
      paramIntent = paramIntent.getExtras();
      if (paramIntent == null)
      {
        m.示("JumpItem", "newJumpItemFromIntent ERROR: null bundle!");
        return null;
      }
      localObject = paramIntent.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        localHashMap.put(str, paramIntent.getString(str));
      }
    }
    paramIntent = (String)localHashMap.get("j_type");
    if (TextUtils.isEmpty(paramIntent))
    {
      m.示("JumpItem", "newJumpItemFromIntent ERROR: illegal fakeType! fakeType = " + paramIntent);
      return null;
    }
    return new c(j.驶(paramIntent, 0), localHashMap);
  }
  
  private void 驶(Map paramMap)
  {
    if (paramMap != null) {
      this.始.putAll(paramMap);
    }
  }
  
  public HashMap 始()
  {
    return this.始;
  }
  
  public int 驶()
  {
    return this.驶;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.c
 * JD-Core Version:    0.7.0.1
 */