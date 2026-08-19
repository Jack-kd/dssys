package com.beizi.fusion;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public class qj {

    /* renamed from: a, reason: collision with root package name */
    private Context f15821a;

    public qj(Context context) {
        this.f15821a = context;
    }

    public String a() throws RemoteException {
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f15821a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            if (bundleCall.getInt("code", -1) == 0) {
                return bundleCall.getString("id");
            }
            bundleCall.getString("message");
            return null;
        } catch (Exception e2) {
            rm.a(e2);
            return null;
        }
    }
}
