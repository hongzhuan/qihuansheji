package com.unity3d.player;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class o
{
  public static o a;
  private final FrameLayout b;
  private Set c = new HashSet();
  private View d;
  private View e;
  
  o(FrameLayout paramFrameLayout)
  {
    this.b = paramFrameLayout;
    a = this;
  }
  
  private void e(View paramView)
  {
    this.b.addView(paramView, this.b.getChildCount());
  }
  
  private void f(View paramView)
  {
    this.b.removeView(paramView);
    this.b.requestLayout();
  }
  
  public final Context a()
  {
    return this.b.getContext();
  }
  
  public final void a(View paramView)
  {
    this.c.add(paramView);
    if (this.d != null) {
      e(paramView);
    }
  }
  
  public final void b(View paramView)
  {
    this.c.remove(paramView);
    if (this.d != null) {
      f(paramView);
    }
  }
  
  public final void c(View paramView)
  {
    if (this.d != paramView)
    {
      this.d = paramView;
      this.b.addView(paramView);
      paramView = this.c.iterator();
      while (paramView.hasNext()) {
        e((View)paramView.next());
      }
      if (this.e != null) {
        this.e.setVisibility(4);
      }
    }
  }
  
  public final void d(View paramView)
  {
    if (this.d == paramView)
    {
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext()) {
        f((View)localIterator.next());
      }
      this.b.removeView(paramView);
      this.d = null;
      if (this.e != null) {
        this.e.setVisibility(0);
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.o
 * JD-Core Version:    0.7.0.1
 */