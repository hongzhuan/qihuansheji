package org.apache.http.io;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;

@Deprecated
public abstract interface HttpMessageWriter
{
  public abstract void write(HttpMessage paramHttpMessage)
    throws IOException, HttpException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.io.HttpMessageWriter
 * JD-Core Version:    0.7.0.1
 */