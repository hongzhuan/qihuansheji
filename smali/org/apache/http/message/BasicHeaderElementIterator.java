package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderElementIterator;
import org.apache.http.HeaderIterator;

@Deprecated
public class BasicHeaderElementIterator
  implements HeaderElementIterator
{
  public BasicHeaderElementIterator(HeaderIterator paramHeaderIterator)
  {
    throw new RuntimeException("Stub!");
  }
  
  public BasicHeaderElementIterator(HeaderIterator paramHeaderIterator, HeaderValueParser paramHeaderValueParser)
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean hasNext()
  {
    throw new RuntimeException("Stub!");
  }
  
  public final Object next()
    throws NoSuchElementException
  {
    throw new RuntimeException("Stub!");
  }
  
  public HeaderElement nextElement()
    throws NoSuchElementException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void remove()
    throws UnsupportedOperationException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.message.BasicHeaderElementIterator
 * JD-Core Version:    0.7.0.1
 */