package com.unity3d.player;

final class q
{
  private static boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private boolean d = true;
  
  static void a()
  {
    a = true;
  }
  
  static void b()
  {
    a = false;
  }
  
  static boolean c()
  {
    return a;
  }
  
  final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  final void b(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  final void c(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  final boolean d()
  {
    return this.d;
  }
  
  final boolean e()
  {
    return (a) && (this.b) && (!this.d) && (!this.c);
  }
  
  final boolean f()
  {
    return this.c;
  }
  
  public final String toString()
  {
    return super.toString();
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.q
 * JD-Core Version:    0.7.0.1
 */