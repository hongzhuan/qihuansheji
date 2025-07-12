package com.vivo.plugin.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface ExecuteServiceAIDL
  extends IInterface
{
  public abstract void doCommand(int paramInt1, String paramString1, String paramString2, int paramInt2);
  
  public abstract void paymentActionInit(String paramString1, String paramString2);
  
  public abstract void paymentActionInitial(String paramString);
  
  public abstract void registerCallBack(String paramString, IAccountCallBack paramIAccountCallBack, IPayAndRechargeCallBack paramIPayAndRechargeCallBack, int paramInt, ISinglePayCallBack paramISinglePayCallBack);
  
  public abstract void registerClient(IClient paramIClient, String paramString1, String paramString2, int paramInt1, int paramInt2);
  
  public abstract void registerProcessDeath(IBinder paramIBinder, String paramString);
  
  public abstract void startAssistService(String paramString);
  
  public abstract void stopAssistService();
  
  public abstract void unregisterClient(String paramString, int paramInt);
  
  public abstract void vivoAccountreportRoleInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public static abstract class Stub
    extends Binder
    implements ExecuteServiceAIDL
  {
    private static final String DESCRIPTOR = "com.vivo.plugin.aidl.ExecuteServiceAIDL";
    static final int TRANSACTION_doCommand = 7;
    static final int TRANSACTION_paymentActionInit = 4;
    static final int TRANSACTION_paymentActionInitial = 5;
    static final int TRANSACTION_registerCallBack = 1;
    static final int TRANSACTION_registerClient = 8;
    static final int TRANSACTION_registerProcessDeath = 10;
    static final int TRANSACTION_startAssistService = 3;
    static final int TRANSACTION_stopAssistService = 2;
    static final int TRANSACTION_unregisterClient = 9;
    static final int TRANSACTION_vivoAccountreportRoleInfo = 6;
    
    public Stub()
    {
      attachInterface(this, "com.vivo.plugin.aidl.ExecuteServiceAIDL");
    }
    
    public static ExecuteServiceAIDL asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
      if ((localIInterface != null) && ((localIInterface instanceof ExecuteServiceAIDL))) {
        return (ExecuteServiceAIDL)localIInterface;
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
        paramParcel2.writeString("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        registerCallBack(paramParcel1.readString(), IAccountCallBack.Stub.asInterface(paramParcel1.readStrongBinder()), IPayAndRechargeCallBack.Stub.asInterface(paramParcel1.readStrongBinder()), paramParcel1.readInt(), ISinglePayCallBack.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        stopAssistService();
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        startAssistService(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        paymentActionInit(paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        paymentActionInitial(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        vivoAccountreportRoleInfo(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        doCommand(paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        registerClient(IClient.Stub.asInterface(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
        unregisterClient(paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.vivo.plugin.aidl.ExecuteServiceAIDL");
      registerProcessDeath(paramParcel1.readStrongBinder(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements ExecuteServiceAIDL
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
      
      public void doCommand(int paramInt1, String paramString1, String paramString2, int paramInt2)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeInt(paramInt2);
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
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
        return "com.vivo.plugin.aidl.ExecuteServiceAIDL";
      }
      
      public void paymentActionInit(String paramString1, String paramString2)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void paymentActionInitial(String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeString(paramString);
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public void registerCallBack(String paramString, IAccountCallBack paramIAccountCallBack, IPayAndRechargeCallBack paramIPayAndRechargeCallBack, int paramInt, ISinglePayCallBack paramISinglePayCallBack)
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore 6
        //   3: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 7
        //   8: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 8
        //   13: aload 7
        //   15: ldc 32
        //   17: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 7
        //   22: aload_1
        //   23: invokevirtual 43	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   26: aload_2
        //   27: ifnull +94 -> 121
        //   30: aload_2
        //   31: invokeinterface 66 1 0
        //   36: astore_1
        //   37: aload 7
        //   39: aload_1
        //   40: invokevirtual 69	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   43: aload_3
        //   44: ifnull +82 -> 126
        //   47: aload_3
        //   48: invokeinterface 72 1 0
        //   53: astore_1
        //   54: aload 7
        //   56: aload_1
        //   57: invokevirtual 69	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   60: aload 7
        //   62: iload 4
        //   64: invokevirtual 40	android/os/Parcel:writeInt	(I)V
        //   67: aload 6
        //   69: astore_1
        //   70: aload 5
        //   72: ifnull +11 -> 83
        //   75: aload 5
        //   77: invokeinterface 75 1 0
        //   82: astore_1
        //   83: aload 7
        //   85: aload_1
        //   86: invokevirtual 69	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   89: aload_0
        //   90: getfield 19	com/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   93: iconst_1
        //   94: aload 7
        //   96: aload 8
        //   98: iconst_0
        //   99: invokeinterface 49 5 0
        //   104: pop
        //   105: aload 8
        //   107: invokevirtual 52	android/os/Parcel:readException	()V
        //   110: aload 8
        //   112: invokevirtual 55	android/os/Parcel:recycle	()V
        //   115: aload 7
        //   117: invokevirtual 55	android/os/Parcel:recycle	()V
        //   120: return
        //   121: aconst_null
        //   122: astore_1
        //   123: goto -86 -> 37
        //   126: aconst_null
        //   127: astore_1
        //   128: goto -74 -> 54
        //   131: astore_1
        //   132: aload 8
        //   134: invokevirtual 55	android/os/Parcel:recycle	()V
        //   137: aload 7
        //   139: invokevirtual 55	android/os/Parcel:recycle	()V
        //   142: aload_1
        //   143: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	144	0	this	Proxy
        //   0	144	1	paramString	String
        //   0	144	2	paramIAccountCallBack	IAccountCallBack
        //   0	144	3	paramIPayAndRechargeCallBack	IPayAndRechargeCallBack
        //   0	144	4	paramInt	int
        //   0	144	5	paramISinglePayCallBack	ISinglePayCallBack
        //   1	67	6	localObject	Object
        //   6	132	7	localParcel1	Parcel
        //   11	122	8	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   13	26	131	finally
        //   30	37	131	finally
        //   37	43	131	finally
        //   47	54	131	finally
        //   54	67	131	finally
        //   75	83	131	finally
        //   83	110	131	finally
      }
      
      /* Error */
      public void registerClient(IClient paramIClient, String paramString1, String paramString2, int paramInt1, int paramInt2)
      {
        // Byte code:
        //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 6
        //   5: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 7
        //   10: aload 6
        //   12: ldc 32
        //   14: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload_1
        //   18: ifnull +75 -> 93
        //   21: aload_1
        //   22: invokeinterface 80 1 0
        //   27: astore_1
        //   28: aload 6
        //   30: aload_1
        //   31: invokevirtual 69	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   34: aload 6
        //   36: aload_2
        //   37: invokevirtual 43	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   40: aload 6
        //   42: aload_3
        //   43: invokevirtual 43	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   46: aload 6
        //   48: iload 4
        //   50: invokevirtual 40	android/os/Parcel:writeInt	(I)V
        //   53: aload 6
        //   55: iload 5
        //   57: invokevirtual 40	android/os/Parcel:writeInt	(I)V
        //   60: aload_0
        //   61: getfield 19	com/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   64: bipush 8
        //   66: aload 6
        //   68: aload 7
        //   70: iconst_0
        //   71: invokeinterface 49 5 0
        //   76: pop
        //   77: aload 7
        //   79: invokevirtual 52	android/os/Parcel:readException	()V
        //   82: aload 7
        //   84: invokevirtual 55	android/os/Parcel:recycle	()V
        //   87: aload 6
        //   89: invokevirtual 55	android/os/Parcel:recycle	()V
        //   92: return
        //   93: aconst_null
        //   94: astore_1
        //   95: goto -67 -> 28
        //   98: astore_1
        //   99: aload 7
        //   101: invokevirtual 55	android/os/Parcel:recycle	()V
        //   104: aload 6
        //   106: invokevirtual 55	android/os/Parcel:recycle	()V
        //   109: aload_1
        //   110: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	111	0	this	Proxy
        //   0	111	1	paramIClient	IClient
        //   0	111	2	paramString1	String
        //   0	111	3	paramString2	String
        //   0	111	4	paramInt1	int
        //   0	111	5	paramInt2	int
        //   3	102	6	localParcel1	Parcel
        //   8	92	7	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	17	98	finally
        //   21	28	98	finally
        //   28	82	98	finally
      }
      
      public void registerProcessDeath(IBinder paramIBinder, String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeStrongBinder(paramIBinder);
          localParcel1.writeString(paramString);
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void startAssistService(String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeString(paramString);
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
      
      public void stopAssistService()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
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
      
      public void unregisterClient(String paramString, int paramInt)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeString(paramString);
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void vivoAccountreportRoleInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vivo.plugin.aidl.ExecuteServiceAIDL");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
          localParcel1.writeString(paramString4);
          localParcel1.writeString(paramString5);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.vivo.plugin.aidl.ExecuteServiceAIDL
 * JD-Core Version:    0.7.0.1
 */