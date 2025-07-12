package org.apache.http.io;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;

@Deprecated
public abstract interface HttpMessageParser
{
  public abstract HttpMessage parse()
    throws IOException, HttpException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.io.HttpMessageParser
 * JD-Core Version:    0.7.0.1
 */