package com.UnityTextViewPlugin;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.TextView;

final class MyTextView
  extends TextView
{
  public MyTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    setText("MyTextView onTouch");
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MyTextView
 * JD-Core Version:    0.7.0.1
 */