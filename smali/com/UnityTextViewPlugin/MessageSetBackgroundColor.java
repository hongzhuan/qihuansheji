package com.UnityTextViewPlugin;

final class MessageSetBackgroundColor
  extends MessageWrapper
{
  private final int mBackgroundColor;
  
  public MessageSetBackgroundColor(int paramInt1, int paramInt2)
  {
    super(paramInt1);
    this.mBackgroundColor = paramInt2;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView.setBackgroundColor(this.mBackgroundColor);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetBackgroundColor
 * JD-Core Version:    0.7.0.1
 */