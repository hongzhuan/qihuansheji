package com.vivo.plugin.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface ISinglePayCallBack
  extends IInterface
{
  public abstract void payResult(String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4);
  
  public static abstract class Stub
    extends Binder
    implements ISinglePayCallBack
  {
    private static final String DESCRIPTOR = "com.vivo.plugin.aidl.ISinglePayCallBack";
    static final int TRANSACTION_payResult = 1;
    
    public Stub()
    {
      attachInterface(this, "com.vivo.plugin.aidl.ISinglePayCallBack");
    }
    
    public static ISinglePayCallBack asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.vivo.plugin.aidl.ISinglePayCallBack");
      if ((localIInterface != null) && ((localIInterface instanceof ISinglePayCallBack))) {
        return (ISinglePayCallBack)localIInterface;
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
        paramParcel2.writeString("com.vivo.plugin.aidl.ISinglePayCallBack");
        return true;
      }
      paramParcel1.enforceInterface("com.vivo.plugin.aidl.ISinglePayCallBack");
      String str = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        payResult(str, bool, paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      }
    }
    
    private static class Proxy
      implements ISinglePayCallBack
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
        return "com.vivo.plugin.aidl.ISinglePayCallBack";
      }
      
      /* Error */
      public void payResult(String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4)
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore 6
        //   3: invokestatic 34	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 7
        //   8: invokestatic 34	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 8
        //   13: aload 7
        //   15: ldc 26
        //   17: invokevirtual 38	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 7
        //   22: aload_1
        //   23: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   26: iload_2
        //   27: ifeq +62 -> 89
        //   30: aload 7
        //   32: iload 6
        //   34: invokevirtual 45	android/os/Parcel:writeInt	(I)V
        //   37: aload 7
        //   39: aload_3
        //   40: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   43: aload 7
        //   45: aload 4
        //   47: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   50: aload 7
        //   52: aload 5
        //   54: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   57: aload_0
        //   58: getfield 19	com/vivo/plugin/aidl/ISinglePayCallBack$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   61: iconst_1
        //   62: aload 7
        //   64: aload 8
        //   66: iconst_0
        //   67: invokeinterface 51 5 0
        //   72: pop
        //   73: aload 8
        //   75: invokevirtual 54	android/os/Parcel:readException	()V
        //   78: aload 8
        //   80: invokevirtual 57	android/os/Parcel:recycle	()V
        //   83: aload 7
        //   85: invokevirtual 57	android/os/Parcel:recycle	()V
        //   88: return
        //   89: iconst_0
        //   90: istore 6
        //   92: goto -62 -> 30
        //   95: astore_1
        //   96: aload 8
        //   98: invokevirtual 57	android/os/Parcel:recycle	()V
        //   101: aload 7
        //   103: invokevirtual 57	android/os/Parcel:recycle	()V
        //   106: aload_1
        //   107: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	108	0	this	Proxy
        //   0	108	1	paramString1	String
        //   0	108	2	paramBoolean	boolean
        //   0	108	3	paramString2	String
        //   0	108	4	paramString3	String
        //   0	108	5	paramString4	String
        //   1	90	6	i	int
        //   6	96	7	localParcel1	Parcel
        //   11	86	8	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   13	26	95	finally
        //   30	78	95	finally
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.plugin.aidl.ISinglePayCallBack
 * JD-Core Version:    0.7.0.1
 */