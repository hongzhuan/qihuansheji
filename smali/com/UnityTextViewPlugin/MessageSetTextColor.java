package com.UnityTextViewPlugin;

final class MessageSetTextColor
  extends MessageWrapper
{
  private final int mTextColor;
  
  public MessageSetTextColor(int paramInt1, int paramInt2)
  {
    super(paramInt1);
    this.mTextColor = paramInt2;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView.setTextColor(this.mTextColor);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetTextColor
 * JD-Core Version:    0.7.0.1
 */