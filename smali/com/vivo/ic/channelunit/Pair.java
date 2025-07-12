package com.vivo.ic.channelunit;

public final class Pair
{
  private final Object mFirst;
  private final Object mSecond;
  
  public Pair(Object paramObject1, Object paramObject2)
  {
    this.mFirst = paramObject1;
    this.mSecond = paramObject2;
  }
  
  public static Pair create(Object paramObject1, Object paramObject2)
  {
    return new Pair(paramObject1, paramObject2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (Pair)paramObject;
        if (this.mFirst == null)
        {
          if (paramObject.mFirst != null) {
            return false;
          }
        }
        else if (!this.mFirst.equals(paramObject.mFirst)) {
          return false;
        }
        if (this.mSecond != null) {
          break;
        }
      } while (paramObject.mSecond == null);
      return false;
    } while (this.mSecond.equals(paramObject.mSecond));
    return false;
  }
  
  public Object getFirst()
  {
    return this.mFirst;
  }
  
  public Object getSecond()
  {
    return this.mSecond;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (this.mFirst == null)
    {
      i = 0;
      if (this.mSecond != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 31) * 31 + j;
      i = this.mFirst.hashCode();
      break;
      label39:
      j = this.mSecond.hashCode();
    }
  }
  
  public String toString()
  {
    return "first = " + this.mFirst + " , second = " + this.mSecond;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.Pair
 * JD-Core Version:    0.7.0.1
 */