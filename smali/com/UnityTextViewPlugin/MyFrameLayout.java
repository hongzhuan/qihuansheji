package com.UnityTextViewPlugin;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;

final class MyFrameLayout
  extends FrameLayout
{
  private final String TAG = "LayoutView1";
  
  public MyFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return false;
      Log.e("LayoutView1", "onInterceptTouchEvent action:ACTION_DOWN");
      continue;
      Log.e("LayoutView1", "onInterceptTouchEvent action:ACTION_MOVE");
      continue;
      Log.e("LayoutView1", "onInterceptTouchEvent action:ACTION_UP");
      continue;
      Log.e("LayoutView1", "onInterceptTouchEvent action:ACTION_CANCEL");
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return false;
      Log.e("LayoutView1", "onTouchEvent action:ACTION_DOWN");
      continue;
      Log.e("LayoutView1", "onTouchEvent action:ACTION_MOVE");
      continue;
      Log.e("LayoutView1", "onTouchEvent action:ACTION_UP");
      continue;
      Log.e("LayoutView1", "onTouchEvent action:ACTION_CANCEL");
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MyFrameLayout
 * JD-Core Version:    0.7.0.1
 */