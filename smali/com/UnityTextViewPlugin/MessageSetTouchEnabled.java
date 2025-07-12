package com.UnityTextViewPlugin;

import android.text.method.MovementMethod;
import android.text.method.ScrollingMovementMethod;

final class MessageSetTouchEnabled
  extends MessageWrapper
{
  private boolean mTouchEnabled = true;
  
  public MessageSetTouchEnabled(int paramInt, boolean paramBoolean)
  {
    super(paramInt);
    this.mTouchEnabled = paramBoolean;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    this.mTouchEnabled = true;
    if (this.mTouchEnabled) {}
    for (MovementMethod localMovementMethod = ScrollingMovementMethod.getInstance();; localMovementMethod = null)
    {
      paramMyTextView.setMovementMethod(localMovementMethod);
      return;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetTouchEnabled
 * JD-Core Version:    0.7.0.1
 */