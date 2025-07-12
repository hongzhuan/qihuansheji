package com.vivo.unionsdk.c;

import android.content.IntentFilter;
import java.util.ArrayList;

public class a
  extends g
{
  private ArrayList 始 = new ArrayList();
  private int 驶;
  
  public a(String paramString)
  {
    super(paramString);
  }
  
  public String toString()
  {
    return "ActivityCase{\n\tname = " + 式() + "\n\tintentFilters = " + this.始 + "\n\t}";
  }
  
  public ArrayList 始()
  {
    return this.始;
  }
  
  public int 驶()
  {
    return this.驶;
  }
  
  public void 驶(int paramInt)
  {
    this.驶 = paramInt;
  }
  
  public void 驶(IntentFilter paramIntentFilter)
  {
    if (paramIntentFilter != null) {
      this.始.add(paramIntentFilter);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.c.a
 * JD-Core Version:    0.7.0.1
 */