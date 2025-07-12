package org.apache.http;

import java.util.Iterator;

@Deprecated
public abstract interface HeaderElementIterator
  extends Iterator
{
  public abstract boolean hasNext();
  
  public abstract HeaderElement nextElement();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.HeaderElementIterator
 * JD-Core Version:    0.7.0.1
 */