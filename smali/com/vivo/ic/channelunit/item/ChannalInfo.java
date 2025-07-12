package com.vivo.ic.channelunit.item;

public abstract class ChannalInfo
  extends TraceMap
{
  public static final int DEFAULT_MODE = -1;
  public static final ChannalInfo EMPTY_CHANNEL = new EmptyChannel();
  public static final int V1_MODE = 1;
  public static final int V2_MODE = 2;
  
  public abstract String getChannel();
  
  public abstract int getMode();
  
  public abstract boolean isRight();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.item.ChannalInfo
 * JD-Core Version:    0.7.0.1
 */