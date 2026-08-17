package com.smartdigimkt.i;

import android.view.View;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40609a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ApkConfirmDialogActivity f40610b;

    public j(ApkConfirmDialogActivity apkConfirmDialogActivity, com.smartdigimkt.m3.c cVar) {
        this.f40610b = apkConfirmDialogActivity;
        this.f40609a = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.d5.e.a(this.f40610b, this.f40609a.f41831v);
    }
}
