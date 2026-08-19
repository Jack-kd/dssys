package com.meishu.sdk.core.oaid.impl;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import com.meishu.sdk.core.oaid.OAIDException;

/* loaded from: classes4.dex */
public class k implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31698a;

    public k(Context context) {
        this.f31698a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    @SuppressLint({"AnnotateVersionCheck"})
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) throws RemoteException {
        if (this.f31698a == null || aVar == null) {
            return;
        }
        if (!a()) {
            ((com.meishu.sdk.core.utils.l) aVar).a(new OAIDException("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f31698a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                throw new OAIDException("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string != null && string.length() != 0) {
                ((com.meishu.sdk.core.utils.l) aVar).a(string);
                return;
            }
            throw new OAIDException("OAID query failed: " + bundleCall.getString("message"));
        } catch (Exception e2) {
            ((com.meishu.sdk.core.utils.l) aVar).a(e2);
        }
    }
}
