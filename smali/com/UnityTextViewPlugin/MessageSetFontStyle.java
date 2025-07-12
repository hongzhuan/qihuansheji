package com.UnityTextViewPlugin;

final class MessageSetFontStyle
  extends MessageWrapper
{
  private final int mFontStyle;
  
  public MessageSetFontStyle(int paramInt1, int paramInt2)
  {
    super(paramInt1);
    this.mFontStyle = paramInt2;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    switch (this.mFontStyle)
    {
    default: 
      paramMyTextView.setTypeface(paramMyTextView.getTypeface(), 0);
      return;
    case 1: 
      paramMyTextView.setTypeface(paramMyTextView.getTypeface(), 1);
      return;
    case 2: 
      paramMyTextView.setTypeface(paramMyTextView.getTypeface(), 2);
      return;
    }
    paramMyTextView.setTypeface(paramMyTextView.getTypeface(), 3);
  }
  
  final class FontStyle
  {
    public static final int Bold = 1;
    public static final int BoldAndItalic = 3;
    public static final int Italic = 2;
    public static final int Normal = 0;
    
    FontStyle() {}
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetFontStyle
 * JD-Core Version:    0.7.0.1
 */