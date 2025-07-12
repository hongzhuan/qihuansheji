package com.vivo.ic.channelunit.item;

import android.text.TextUtils;
import java.util.HashMap;

public class V2ChannelBlock
  extends ChannalInfo
{
  public int mCentralDirOffsetFix = 0;
  public long mChannelBlockLen = 0L;
  public long mChannelBlockOffset = 0L;
  public String mChannelinfo = "";
  public long mEocdCentralOffset = 0L;
  public long mV2BlockLen = 0L;
  public long mV2SchemeOffset = 0L;
  
  public String getChannel()
  {
    return this.mChannelinfo;
  }
  
  public int getMode()
  {
    return 2;
  }
  
  public boolean isRight()
  {
    return (!TextUtils.isEmpty(this.mChannelinfo)) && (this.mChannelBlockLen > 0L) && (this.mChannelBlockOffset > 0L) && (this.mV2SchemeOffset > 0L) && (this.mCentralDirOffsetFix > 0) && (this.mChannelBlockLen == this.mChannelinfo.length() + 12);
  }
  
  public HashMap toMap()
  {
    HashMap localHashMap = new HashMap();
    if (this.mException != null)
    {
      localHashMap.put("errCLS", this.mException.getClass().toString());
      localHashMap.put("errMsg", this.mException.getMessage());
      localHashMap.put("errPkg", this.mPkg);
    }
    localHashMap.put("errCat", toString());
    return localHashMap;
  }
  
  public String toString()
  {
    return "V2ChannelBlock{" + this.mChannelBlockOffset + "," + this.mChannelBlockLen + "," + this.mV2SchemeOffset + "," + this.mChannelinfo + "," + this.mV2BlockLen + "," + this.mCentralDirOffsetFix + "," + this.mEocdCentralOffset + '}';
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.item.V2ChannelBlock
 * JD-Core Version:    0.7.0.1
 */