package com.octopus.ad.d.a.b;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public class j implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33983a;

    public j(Context context) {
        this.f33983a = context;
    }

    @Override // com.octopus.ad.d.a.d
    @SuppressLint({"AnnotateVersionCheck"})
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) throws RemoteException {
        if (this.f33983a == null || cVar == null) {
            return;
        }
        if (!a()) {
            com.octopus.ad.d.a.f.a("Only supports Android 10.0 and above for Nubia");
            cVar.a(new com.octopus.ad.d.a.e("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f33983a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                throw new com.octopus.ad.d.a.e("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string == null || string.length() == 0) {
                throw new com.octopus.ad.d.a.e("OAID query failed: " + bundleCall.getString("message"));
            }
            com.octopus.ad.d.a.f.a("OAID query success: " + string);
            cVar.a(string);
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            cVar.a(e2);
        }
    }
}
