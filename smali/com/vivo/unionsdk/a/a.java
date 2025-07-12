package com.vivo.unionsdk.a;

import android.content.Context;
import com.vivo.unionsdk.u;

public abstract class a
{
  protected String 始;
  protected int 式;
  protected a 示;
  protected Context 驶;
  
  public a(Context paramContext, String paramString, int paramInt, a parama)
  {
    this.驶 = paramContext.getApplicationContext();
    this.始 = paramString;
    this.式 = paramInt;
    this.示 = parama;
  }
  
  public String 始()
  {
    return this.始;
  }
  
  public int 式()
  {
    return this.式;
  }
  
  public abstract void 示();
  
  public void 驶()
  {
    u.驶().驶(this.驶.getPackageName());
  }
  
  public static abstract interface a
  {
    public abstract void 驶(int paramInt);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.a
 * JD-Core Version:    0.7.0.1
 */