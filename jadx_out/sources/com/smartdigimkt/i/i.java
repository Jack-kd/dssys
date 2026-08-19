package com.smartdigimkt.i;

import android.view.View;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class i implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40607a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ApkConfirmDialogActivity f40608b;

    public i(ApkConfirmDialogActivity apkConfirmDialogActivity, com.smartdigimkt.m3.c cVar) {
        this.f40608b = apkConfirmDialogActivity;
        this.f40607a = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.d5.e.a(this.f40608b, this.f40607a.f41829t);
    }
}
