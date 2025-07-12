package com.vivo.plugin.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface IAccountCallBack
  extends IInterface
{
  public abstract void loginCancel();
  
  public abstract void loginResult(String paramString1, String paramString2, String paramString3);
  
  public abstract void updateCancel();
  
  public static abstract class Stub
    extends Binder
    implements IAccountCallBack
  {
    private static final String DESCRIPTOR = "com.vivo.plugin.aidl.IAccountCallBack";
    static final int TRANSACTION_loginCancel = 2;
    static final int TRANSACTION_loginResult = 1;
    static final int TRANSACTION_updateCancel = 3;
    
    public Stub()
    {
      attachInterface(this, "com.vivo.plugin.aidl.IAccountCallBack");
    }
    
    public static IAccountCallBack asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.vivo.plugin.aidl.IAccountCallBack");
      if ((localIInterface != null) && ((localIInterface instanceof IAccountCallBack))) {
        return (IAccountCallBack)localIInterface;
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
        paramParcel2.writeString("com.vivo.plugin.aidl.IAccountCallBack");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.IAccountCallBack");
        loginResult(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.IAccountCallBack");
        loginCancel();
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.vivo.plugin.aidl.IAccountCallBack");
      updateCancel();
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements IAccountCallBack
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
      
      public String getInterfaceDescriptor()
      {
        return "com.vivo.plugin.aidl.IAccountCallBack";
      }
      
      public void loginCancel()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.IAccountCallBack");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void loginResult(String paramString1, String paramString2, String paramString3)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.IAccountCallBack");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
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
      
      public void updateCancel()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.IAccountCallBack");
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.plugin.aidl.IAccountCallBack
 * JD-Core Version:    0.7.0.1
 */