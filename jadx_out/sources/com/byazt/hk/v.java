package com.byazt.hk;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.byazt.hk.xs;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 227, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public final class v implements xs {
    @Override // com.byazt.hk.xs
    public xs.hp jx(Context context) throws RemoteException {
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return null;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                return null;
            }
            if (bundleCall.getInt("code", -1) == 0) {
                xs.hp hpVar = new xs.hp();
                hpVar.f20732l = bundleCall.getString("id");
                return hpVar;
            }
            String string = bundleCall.getString("message");
            if (!TextUtils.isEmpty(string)) {
                com.byazt.gt.e.l(string);
            }
            return null;
        } catch (Exception e2) {
            com.byazt.gt.e.hp(e2);
            return null;
        }
    }

    @Override // com.byazt.hk.xs
    public boolean l(Context context) {
        return Build.VERSION.SDK_INT > 28;
    }
}
