package org.apache.http.entity;

import java.io.IOException;
import java.io.OutputStream;

@Deprecated
public abstract interface ContentProducer
{
  public abstract void writeTo(OutputStream paramOutputStream)
    throws IOException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.entity.ContentProducer
 * JD-Core Version:    0.7.0.1
 */