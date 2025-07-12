package com.vivo.unionsdk;

import android.os.Bundle;
import com.vivo.unionsdk.c.a;
import com.vivo.unionsdk.c.g;
import java.util.HashMap;
import java.util.Map;

public class n
{
  private Bundle 士;
  private Map 始 = new HashMap();
  private Map 式 = new HashMap();
  private Map 示 = new HashMap();
  private Map 驶 = new HashMap();
  
  public Bundle 士()
  {
    return this.士;
  }
  
  public Map 始()
  {
    return this.始;
  }
  
  public void 始(a parama)
  {
    if (parama == null) {
      return;
    }
    this.始.put(parama.式(), parama);
  }
  
  public void 始(g paramg)
  {
    if (paramg == null) {
      return;
    }
    this.示.put(paramg.式(), paramg);
  }
  
  public Map 式()
  {
    return this.式;
  }
  
  public Map 示()
  {
    return this.示;
  }
  
  public Map 驶()
  {
    return this.驶;
  }
  
  public void 驶(Bundle paramBundle)
  {
    this.士 = paramBundle;
  }
  
  public void 驶(a parama)
  {
    if (parama == null) {
      return;
    }
    this.驶.put(parama.式(), parama);
  }
  
  public void 驶(g paramg)
  {
    if (paramg == null) {
      return;
    }
    this.式.put(paramg.式(), paramg);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.n
 * JD-Core Version:    0.7.0.1
 */