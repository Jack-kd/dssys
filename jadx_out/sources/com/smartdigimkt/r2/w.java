package com.smartdigimkt.r2;

import android.content.DialogInterface;
import android.webkit.GeolocationPermissions;

/* loaded from: classes5.dex */
public final class w implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GeolocationPermissions.Callback f43043a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43044b;

    public w(String str, GeolocationPermissions.Callback callback) {
        this.f43043a = callback;
        this.f43044b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        GeolocationPermissions.Callback callback = this.f43043a;
        if (callback != null) {
            callback.invoke(this.f43044b, false, false);
        }
    }
}
