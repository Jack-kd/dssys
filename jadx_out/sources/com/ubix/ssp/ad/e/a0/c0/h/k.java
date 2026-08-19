package com.ubix.ssp.ad.e.a0.c0.h;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes5.dex */
class k implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46178a;

    public k(Context context) {
        this.f46178a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) throws RemoteException {
        if (this.f46178a == null || cVar == null) {
            return;
        }
        if (!a()) {
            com.ubix.ssp.ad.e.a0.c0.f.a("Only supports Android 10.0 and above for Nubia");
            cVar.a(new com.ubix.ssp.ad.e.a0.c0.e("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f46178a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string == null || string.length() == 0) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("OAID query failed: " + bundleCall.getString("message"));
            }
            com.ubix.ssp.ad.e.a0.c0.f.a("OAID query success: " + string);
            cVar.a(string);
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            cVar.a(e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    @SuppressLint({"AnnotateVersionCheck"})
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }
}
