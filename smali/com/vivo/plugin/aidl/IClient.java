package com.vivo.plugin.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface IClient
  extends IInterface
{
  public abstract void doCommandCallback(int paramInt, String paramString);
  
  public static abstract class Stub
    extends Binder
    implements IClient
  {
    private static final String DESCRIPTOR = "com.vivo.plugin.aidl.IClient";
    static final int TRANSACTION_doCommandCallback = 1;
    
    public Stub()
    {
      attachInterface(this, "com.vivo.plugin.aidl.IClient");
    }
    
    public static IClient asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.vivo.plugin.aidl.IClient");
      if ((localIInterface != null) && ((localIInterface instanceof IClient))) {
        return (IClient)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.vivo.plugin.aidl.IClient");
        return true;
      }
      paramParcel1.enforceInterface("com.vivo.plugin.aidl.IClient");
      doCommandCallback(paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements IClient
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public void doCommandCallback(int paramInt, String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.IClient");
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.vivo.plugin.aidl.IClient";
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.plugin.aidl.IClient
 * JD-Core Version:    0.7.0.1
 */