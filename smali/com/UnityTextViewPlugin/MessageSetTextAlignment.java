package com.UnityTextViewPlugin;

final class MessageSetTextAlignment
  extends MessageWrapper
{
  private final int mTextAlignment;
  
  public MessageSetTextAlignment(int paramInt1, int paramInt2)
  {
    super(paramInt1);
    this.mTextAlignment = paramInt2;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    switch (this.mTextAlignment)
    {
    default: 
      paramMyTextView.setGravity(3);
      return;
    case 1: 
      paramMyTextView.setGravity(1);
      return;
    }
    paramMyTextView.setGravity(5);
  }
  
  final class TextAlignment
  {
    public static final int CENTER = 1;
    public static final int LEFT = 0;
    public static final int RIGHT = 2;
    
    TextAlignment() {}
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetTextAlignment
 * JD-Core Version:    0.7.0.1
 */