package com.vivo.ic.channelunit.item;

import android.text.TextUtils;
import java.util.HashMap;

public class V1ChannelComment
  extends ChannalInfo
{
  public String mChannel;
  public long mCommentAreaOffset = 0L;
  public short mOriginCommentLen = 0;
  
  public String getChannel()
  {
    return this.mChannel;
  }
  
  public int getMode()
  {
    return 1;
  }
  
  public boolean isRight()
  {
    return (this.mCommentAreaOffset > 0L) && (!TextUtils.isEmpty(this.mChannel));
  }
  
  public HashMap toMap()
  {
    HashMap localHashMap = new HashMap();
    if (this.mException != null)
    {
      localHashMap.put("errCLS", this.mException.getClass().toString());
      localHashMap.put("errMsg", this.mException.getMessage());
    }
    localHashMap.put("errPkg", this.mPkg);
    localHashMap.put("errCat", toString());
    return localHashMap;
  }
  
  public String toString()
  {
    return "V1ChannelComment{" + this.mCommentAreaOffset + "," + this.mChannel + '\'' + "," + this.mOriginCommentLen + '}';
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.item.V1ChannelComment
 * JD-Core Version:    0.7.0.1
 */