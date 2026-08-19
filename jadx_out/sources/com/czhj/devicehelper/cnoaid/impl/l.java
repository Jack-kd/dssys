package com.czhj.devicehelper.cnoaid.impl;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes3.dex */
class l implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29162a;

    public l(Context context) {
        this.f29162a = context;
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) throws RemoteException {
        if (this.f29162a == null || cVar == null) {
            return;
        }
        if (!a()) {
            com.czhj.devicehelper.cnoaid.g.a("Only supports Android 10.0 and above for Nubia");
            cVar.a(new com.czhj.devicehelper.cnoaid.f("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f29162a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                throw new com.czhj.devicehelper.cnoaid.f("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string == null || string.length() == 0) {
                throw new com.czhj.devicehelper.cnoaid.f("OAID query failed: " + bundleCall.getString("message"));
            }
            com.czhj.devicehelper.cnoaid.g.a("OAID query success: " + string);
            cVar.a(string);
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            cVar.a(e2);
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    @SuppressLint({"AnnotateVersionCheck"})
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }
}
