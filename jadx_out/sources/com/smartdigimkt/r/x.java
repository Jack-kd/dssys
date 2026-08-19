package com.smartdigimkt.r;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

/* loaded from: classes5.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42920a;

    public x(Context context) {
        this.f42920a = context;
    }

    public final String a() {
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f42920a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            contentProviderClientAcquireContentProviderClient.close();
            return (bundleCall == null || bundleCall.getInt("code", -1) != 0) ? "" : bundleCall.getString("id");
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
