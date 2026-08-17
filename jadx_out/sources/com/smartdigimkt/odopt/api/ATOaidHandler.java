package com.smartdigimkt.odopt.api;

import android.content.Context;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;

/* loaded from: classes5.dex */
public class ATOaidHandler {
    private static boolean allowUserOaidSDK = false;

    public static void handleInitOaidSDK(Context context, final OaidSDKCallbackListener oaidSDKCallbackListener) {
        try {
            if (allowUserOaidSDK) {
                MdidSdkHelper.InitSdk(context.getApplicationContext(), true, new IIdentifierListener() { // from class: com.smartdigimkt.odopt.api.ATOaidHandler.1
                    @Override // com.bun.miitmdid.interfaces.IIdentifierListener
                    public void OnSupport(boolean z2, IdSupplier idSupplier) {
                        OaidSDKCallbackListener oaidSDKCallbackListener2 = oaidSDKCallbackListener;
                        if (oaidSDKCallbackListener2 != null) {
                            oaidSDKCallbackListener2.OnSupport(z2, idSupplier);
                        }
                    }

                    public void onSupport(IdSupplier idSupplier) {
                        OaidSDKCallbackListener oaidSDKCallbackListener2 = oaidSDKCallbackListener;
                        if (oaidSDKCallbackListener2 != null) {
                            oaidSDKCallbackListener2.onSupport(idSupplier);
                        }
                    }
                });
            } else if (oaidSDKCallbackListener != null) {
                oaidSDKCallbackListener.OnSupport(false, null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void setAllowUseMdidSDK(boolean z2) {
        allowUserOaidSDK = z2;
    }
}
