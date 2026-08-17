package com.smartdigimkt.r2;

import android.content.DialogInterface;
import android.webkit.GeolocationPermissions;

/* loaded from: classes5.dex */
public final class x implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GeolocationPermissions.Callback f43045a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43046b;

    public x(String str, GeolocationPermissions.Callback callback) {
        this.f43045a = callback;
        this.f43046b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        GeolocationPermissions.Callback callback = this.f43045a;
        if (callback != null) {
            callback.invoke(this.f43046b, true, false);
        }
    }
}
