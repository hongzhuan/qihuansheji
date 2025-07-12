package com.vivo.unionsdk.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.vivo.unionsdk.s;

public class g
  extends Dialog
{
  private TextView 士;
  private TextView 始;
  private ViewGroup 式;
  private TextView 示;
  private TextView 藛;
  private RelativeLayout 藞;
  private FrameLayout 藟;
  private RelativeLayout 藠;
  private int 藡 = 0;
  private int 藥 = 0;
  private int 藦 = 0;
  private TextView 驶;
  
  public g(Context paramContext)
  {
    super(paramContext, 0);
    if (!(paramContext instanceof Activity)) {
      throw new IllegalArgumentException("UnionDialog need a Activity's context");
    }
    paramContext = getWindow();
    paramContext.requestFeature(1);
    paramContext.setBackgroundDrawable(new ColorDrawable(0));
    setCanceledOnTouchOutside(false);
    View localView = s.驶("vivo_common_dialog", null);
    paramContext.setContentView(localView);
    paramContext.setLayout(s.始("vivo_common_dialog_width"), -2);
    this.驶 = ((TextView)s.驶("vivo_common_dlg_title", localView));
    this.藞 = ((RelativeLayout)s.驶("vivo_common_dlg_title_layout", localView));
    this.始 = ((TextView)s.驶("vivo_common_dlg_content_text", localView));
    this.示 = ((TextView)s.驶("vivo_common_dlg_btn_positive", localView));
    this.藠 = ((RelativeLayout)s.驶("vivo_common_dlg_btn_layout", localView));
    this.士 = ((TextView)s.驶("vivo_common_dlg_btn_neutral", localView));
    this.藛 = ((TextView)s.驶("vivo_common_dlg_btn_negative", localView));
    this.式 = ((ViewGroup)s.驶("vivo_common_dlg_content", localView));
    this.藟 = ((FrameLayout)s.驶("vivo_common_dlg_message_layer", localView));
  }
  
  private void 始()
  {
    TextView localTextView;
    if (this.藡 == 1) {
      localTextView = this.示;
    }
    for (;;)
    {
      if (localTextView != null)
      {
        RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localTextView.getLayoutParams();
        驶(localLayoutParams);
        localLayoutParams.width = s.始("vivo_common_dialog_one_btn_width");
        localLayoutParams.addRule(14);
        localTextView.requestLayout();
      }
      return;
      if (this.藥 == 1) {
        localTextView = this.士;
      } else if (this.藦 == 1) {
        localTextView = this.藛;
      } else {
        localTextView = null;
      }
    }
  }
  
  private void 式()
  {
    Object localObject4 = null;
    Object localObject1;
    if (this.藡 == 1) {
      if (0 == 0) {
        localObject1 = this.示;
      }
    }
    for (;;)
    {
      Object localObject3 = localObject4;
      Object localObject2 = localObject1;
      if (this.藥 == 1)
      {
        if (localObject1 == null)
        {
          localObject2 = this.士;
          localObject3 = localObject4;
        }
      }
      else
      {
        label47:
        if (this.藦 != 1) {
          break label196;
        }
        if (localObject2 != null) {
          break label183;
        }
        localObject2 = this.藛;
        localObject1 = localObject3;
      }
      for (;;)
      {
        if ((localObject2 != null) && (localObject1 != null))
        {
          int i = s.始("vivo_common_dialog_two_btn_width");
          localObject3 = (RelativeLayout.LayoutParams)((View)localObject2).getLayoutParams();
          localObject4 = (RelativeLayout.LayoutParams)((View)localObject1).getLayoutParams();
          驶((RelativeLayout.LayoutParams)localObject3);
          驶((RelativeLayout.LayoutParams)localObject4);
          ((RelativeLayout.LayoutParams)localObject3).width = i;
          ((RelativeLayout.LayoutParams)localObject4).width = i;
          ((RelativeLayout.LayoutParams)localObject3).addRule(9);
          ((RelativeLayout.LayoutParams)localObject4).addRule(11);
          ((View)localObject2).requestLayout();
          ((View)localObject1).requestLayout();
        }
        return;
        if (0 != 0) {
          break label202;
        }
        localObject4 = this.示;
        localObject1 = null;
        break;
        localObject3 = localObject4;
        localObject2 = localObject1;
        if (localObject4 != null) {
          break label47;
        }
        localObject3 = this.士;
        localObject2 = localObject1;
        break label47;
        label183:
        if (localObject3 == null) {
          localObject1 = this.藛;
        } else {
          label196:
          localObject1 = localObject3;
        }
      }
      label202:
      localObject1 = null;
    }
  }
  
  private void 示()
  {
    int i = s.始("vivo_common_dialog_three_btn_width");
    TextView localTextView1 = this.示;
    TextView localTextView2 = this.士;
    TextView localTextView3 = this.藛;
    RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)localTextView1.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)localTextView2.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams3 = (RelativeLayout.LayoutParams)localTextView3.getLayoutParams();
    驶(localLayoutParams1);
    驶(localLayoutParams2);
    驶(localLayoutParams3);
    localLayoutParams1.width = i;
    localLayoutParams2.width = i;
    localLayoutParams3.width = i;
    localLayoutParams1.addRule(9);
    localLayoutParams2.addRule(14);
    localLayoutParams3.addRule(11);
    localTextView1.requestLayout();
    localTextView2.requestLayout();
    localTextView3.requestLayout();
  }
  
  private void 驶()
  {
    int i = this.藡 + this.藥 + this.藦;
    if (i == 1) {
      始();
    }
    do
    {
      return;
      if (i == 2)
      {
        式();
        return;
      }
    } while (i != 3);
    示();
  }
  
  private void 驶(RelativeLayout.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams == null) {
      return;
    }
    paramLayoutParams.addRule(14, 0);
    paramLayoutParams.addRule(9, 0);
    paramLayoutParams.addRule(11, 0);
  }
  
  public void 始(String paramString)
  {
    this.始.setText(paramString);
  }
  
  public void 始(String paramString, View.OnClickListener paramOnClickListener)
  {
    this.藠.setVisibility(0);
    this.藛.setVisibility(0);
    this.藛.setText(paramString);
    this.藛.setOnClickListener(paramOnClickListener);
    this.藦 = 1;
    驶();
  }
  
  public View 式(String paramString)
  {
    this.式.setVisibility(8);
    paramString = s.驶(paramString, this.藟);
    this.藟.addView(paramString);
    return paramString;
  }
  
  public void 驶(int paramInt)
  {
    this.驶.setTextColor(paramInt);
  }
  
  public void 驶(String paramString)
  {
    this.藞.setVisibility(0);
    this.驶.setText(paramString);
  }
  
  public void 驶(String paramString, View.OnClickListener paramOnClickListener)
  {
    this.藠.setVisibility(0);
    this.示.setVisibility(0);
    this.示.setText(paramString);
    this.示.setOnClickListener(paramOnClickListener);
    this.藡 = 1;
    驶();
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.g
 * JD-Core Version:    0.7.0.1
 */