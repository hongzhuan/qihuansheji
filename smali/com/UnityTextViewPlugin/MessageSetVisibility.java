package com.UnityTextViewPlugin;

import android.view.ViewGroup;

final class MessageSetVisibility
  extends MessageWrapper
{
  private final boolean mVisible;
  
  public MessageSetVisibility(int paramInt, boolean paramBoolean)
  {
    super(paramInt);
    this.mVisible = paramBoolean;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView = (ViewGroup)paramMyTextView.getParent();
    if (this.mVisible) {}
    for (int i = 0;; i = 4)
    {
      paramMyTextView.setVisibility(i);
      return;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetVisibility
 * JD-Core Version:    0.7.0.1
 */