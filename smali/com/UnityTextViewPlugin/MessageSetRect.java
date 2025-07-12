package com.UnityTextViewPlugin;

import android.graphics.RectF;
import android.view.ViewGroup;

final class MessageSetRect
  extends MessageWrapper
{
  private final RectF mRect;
  
  public MessageSetRect(int paramInt, RectF paramRectF)
  {
    super(paramInt);
    this.mRect = paramRectF;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView = (ViewGroup)paramMyTextView.getParent();
    paramMyTextView.getLayoutParams().width = ((int)this.mRect.right);
    paramMyTextView.getLayoutParams().height = ((int)this.mRect.bottom);
    paramMyTextView.setPadding((int)this.mRect.left, (int)this.mRect.top, 0, 0);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetRect
 * JD-Core Version:    0.7.0.1
 */