package org.apache.http;

import java.util.Iterator;

@Deprecated
public abstract interface TokenIterator
  extends Iterator
{
  public abstract boolean hasNext();
  
  public abstract String nextToken();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.TokenIterator
 * JD-Core Version:    0.7.0.1
 */