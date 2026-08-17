package com.beizi.fusion;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
class rj implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15985a;

    public rj(Context context) {
        this.f15985a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) throws RemoteException {
        if (this.f15985a == null || lcVar == null) {
            return;
        }
        if (!a()) {
            ak.a("Only supports Android 10.0 and above for Nubia");
            lcVar.a(new vj("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f15985a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall == null) {
                throw new vj("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string == null || string.length() == 0) {
                throw new vj("OAID query failed: " + bundleCall.getString("message"));
            }
            ak.a("OAID query success: " + string);
            lcVar.a(string);
        } catch (Exception e2) {
            ak.a(e2);
            lcVar.a(e2);
        }
    }
}
