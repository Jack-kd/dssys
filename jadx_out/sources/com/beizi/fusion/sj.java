package com.beizi.fusion;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
class sj implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f16253a;

    public sj(Context context) {
        this.f16253a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) throws RemoteException {
        if (this.f16253a == null || mcVar == null) {
            return;
        }
        if (!a()) {
            bk.a("Only supports Android 10.0 and above for Nubia");
            mcVar.a(new wj("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f16253a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                throw new wj("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string == null || string.length() == 0) {
                throw new wj("OAID query failed: " + bundleCall.getString("message"));
            }
            bk.a("OAID query success: " + string);
            mcVar.a(string);
        } catch (Exception e2) {
            bk.a(e2);
            mcVar.a(e2);
        }
    }
}
