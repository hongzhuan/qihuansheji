package com.vivo.unionsdk.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.text.TextUtils;
import android.view.Window;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.o;
import com.vivo.unionsdk.s;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

public class d
  extends a
  implements DialogInterface.OnDismissListener
{
  private g 藛;
  
  public d(Activity paramActivity, Map paramMap)
  {
    super(paramActivity, paramMap);
  }
  
  private static String[] 驶(String paramString)
  {
    m.始("PermissionAlertActivity", "getPermissions, perStr = " + paramString);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return paramString.split("[*]");
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    藥();
  }
  
  protected void 始()
  {
    藡().setBackgroundDrawableResource(17170445);
    Object localObject2 = 驶((String)this.始.get("extra_permissions"));
    if (localObject2.length <= 0)
    {
      藥();
      return;
    }
    Object localObject1 = new HashSet();
    int j = localObject2.length;
    int i = 0;
    Object localObject3;
    if (i < j)
    {
      localObject3 = localObject2[i];
      if ("android.permission.GET_ACCOUNTS".equals(localObject3)) {
        ((HashSet)localObject1).add("android.permission-group.CONTACTS");
      }
      for (;;)
      {
        i += 1;
        break;
        if ("android.permission.READ_PHONE_STATE".equals(localObject3)) {
          ((HashSet)localObject1).add("android.permission-group.PHONE");
        } else if ("android.permission.READ_LOGS".equals(localObject3)) {
          ((HashSet)localObject1).add("android.permission-group.PHONE");
        } else if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(localObject3)) {
          ((HashSet)localObject1).add("android.permission-group.STORAGE");
        } else if ("android.permission.READ_EXTERNAL_STORAGE".equals(localObject3)) {
          ((HashSet)localObject1).add("android.permission-group.STORAGE");
        } else if ("android.permission.RECEIVE_SMS".equals(localObject3)) {
          ((HashSet)localObject1).add("android.permission-group.SMS");
        } else if ("android.permission.SEND_SMS".equals(localObject3)) {
          ((HashSet)localObject1).add("android.permission-group.SMS");
        }
      }
    }
    localObject2 = new StringBuilder();
    localObject1 = ((HashSet)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (String)((Iterator)localObject1).next();
      ((StringBuilder)localObject2).append(o.驶((String)localObject3) + "，");
    }
    localObject1 = ((StringBuilder)localObject2).toString();
    this.藛 = new g(this.驶);
    this.藛.驶(s.驶("vivo_permission_deny_title"));
    this.藛.始(s.驶("vivo_permission_deny_content", new Object[] { localObject1 }));
    this.藛.setCanceledOnTouchOutside(false);
    this.藛.setCancelable(false);
    this.藛.驶(s.驶("vivo_permission_deny_ok"), new e(this));
    this.藛.始(s.驶("vivo_permission_deny_cancel"), new f(this));
    this.藛.setOnDismissListener(this);
    this.藛.show();
  }
  
  protected void 藟()
  {
    super.藟();
    if (this.藛 != null)
    {
      this.藛.setOnCancelListener(null);
      this.藛.dismiss();
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.d
 * JD-Core Version:    0.7.0.1
 */