package com.baidu.oauth.sdkbqt.auth;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes2.dex */
public class z implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ JsResult f11842b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y f11843c;

    public z(y yVar, JsResult jsResult) {
        this.f11843c = yVar;
        this.f11842b = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        this.f11842b.confirm();
    }
}
