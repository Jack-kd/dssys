package com.beizi.fusion;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public class pj {

    /* renamed from: a, reason: collision with root package name */
    private Context f15652a;

    public pj(Context context) {
        this.f15652a = context;
    }

    public String a() throws RemoteException {
        Bundle bundleCall;
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f15652a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
        } catch (Exception unused) {
        }
        if (bundleCall.getInt("code", -1) == 0) {
            return bundleCall.getString("id");
        }
        bundleCall.getString("message");
        return null;
    }
}
