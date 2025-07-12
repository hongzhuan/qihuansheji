package com.UnityAlertViewPlugin;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.util.Log;
import android.widget.EditText;
import com.unity3d.player.UnityPlayer;

public class AlertViewWrapper
{
  private static final String mCallbackGameObjectMethod = "onClick";
  private static final String mCallbackGameObjectMethodForEditDialog = "onClickFromEditView";
  private static final String mCallbackGameObjectName = "AlertViewCallbackListener#";
  private static Handler mMainThreadHandler;
  private static Handler mMainThreadHandlerForEditDialog;
  private static final String[] mSeperators = { "ð¿¿" };
  private final int mAlertId;
  private final String[] mButtonTexts;
  private final String mHint;
  private int mInputType = 2;
  private final String mMessage;
  private final String mTitle;
  
  private AlertViewWrapper(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    this.mTitle = paramString1;
    this.mMessage = paramString2;
    this.mButtonTexts = paramArrayOfString;
    this.mAlertId = hashCode();
    this.mHint = paramString3;
    Log.d("AlertViewWarpper - EditView", "alertViewId = " + this.mAlertId);
  }
  
  private AlertViewWrapper(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    this.mTitle = paramString1;
    this.mMessage = paramString2;
    this.mButtonTexts = paramArrayOfString;
    this.mAlertId = hashCode();
    this.mHint = "";
    Log.d("AlertViewWarpper", "alertViewId = " + this.mAlertId);
  }
  
  private void doShowAlertDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(UnityPlayer.currentActivity);
    localBuilder.setCancelable(false);
    localBuilder.setTitle(this.mTitle);
    localBuilder.setMessage(this.mMessage);
    final String str = "AlertViewCallbackListener#" + this.mAlertId;
    if (this.mButtonTexts.length > 0) {
      localBuilder.setPositiveButton(this.mButtonTexts[0], new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UnityPlayer.UnitySendMessage(str, "onClick", "0");
        }
      });
    }
    if (this.mButtonTexts.length > 1) {
      localBuilder.setNeutralButton(this.mButtonTexts[1], new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UnityPlayer.UnitySendMessage(str, "onClick", "1");
        }
      });
    }
    if (this.mButtonTexts.length > 2) {
      localBuilder.setNegativeButton(this.mButtonTexts[2], new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UnityPlayer.UnitySendMessage(str, "onClick", "2");
        }
      });
    }
    localBuilder.show();
  }
  
  private void doShowEditDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(UnityPlayer.currentActivity);
    localBuilder.setCancelable(false);
    localBuilder.setTitle(this.mTitle);
    localBuilder.setMessage(this.mMessage);
    final EditText localEditText = new EditText(UnityPlayer.currentActivity);
    localEditText.setHint(this.mHint);
    localEditText.setInputType(this.mInputType);
    localBuilder.setView(localEditText);
    final String str = "AlertViewCallbackListener#" + this.mAlertId;
    if (this.mButtonTexts.length > 0) {
      localBuilder.setPositiveButton(this.mButtonTexts[0], new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UnityPlayer.UnitySendMessage(str, "onClickFromEditView", "0" + AlertViewWrapper.mSeperators[0] + localEditText.getText().toString());
        }
      });
    }
    if (this.mButtonTexts.length > 1) {
      localBuilder.setNeutralButton(this.mButtonTexts[1], new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UnityPlayer.UnitySendMessage(str, "onClickFromEditView", "1" + AlertViewWrapper.mSeperators[0] + localEditText.getText().toString());
        }
      });
    }
    if (this.mButtonTexts.length > 2) {
      localBuilder.setNegativeButton(this.mButtonTexts[2], new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UnityPlayer.UnitySendMessage(str, "onClickFromEditView", "2" + AlertViewWrapper.mSeperators[0] + localEditText.getText().toString());
        }
      });
    }
    localBuilder.show();
  }
  
  public static int showAlertDialog(String paramString1, String paramString2, String paramString3)
  {
    if (mMainThreadHandler == null) {
      mMainThreadHandler = new Handler(Looper.getMainLooper())
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          if (paramAnonymousMessage.what == AlertViewWrapper.class.hashCode()) {
            ((AlertViewWrapper)paramAnonymousMessage.obj).doShowAlertDialog();
          }
        }
      };
    }
    paramString1 = new AlertViewWrapper(paramString1, paramString2, paramString3.split(mSeperators[0]));
    mMainThreadHandler.sendMessage(mMainThreadHandler.obtainMessage(AlertViewWrapper.class.hashCode(), paramString1));
    return paramString1.mAlertId;
  }
  
  public static int showEditDialog(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (mMainThreadHandlerForEditDialog == null) {
      mMainThreadHandlerForEditDialog = new Handler(Looper.getMainLooper())
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          if (paramAnonymousMessage.what == AlertViewWrapper.class.hashCode()) {
            ((AlertViewWrapper)paramAnonymousMessage.obj).doShowEditDialog();
          }
        }
      };
    }
    paramString1 = new AlertViewWrapper(paramString1, paramString2, paramString3, paramString4.split(mSeperators[0]));
    mMainThreadHandlerForEditDialog.sendMessage(mMainThreadHandlerForEditDialog.obtainMessage(AlertViewWrapper.class.hashCode(), paramString1));
    return paramString1.mAlertId;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityAlertViewPlugin.AlertViewWrapper
 * JD-Core Version:    0.7.0.1
 */