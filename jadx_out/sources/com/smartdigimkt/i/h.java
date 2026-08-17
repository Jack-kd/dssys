package com.smartdigimkt.i;

import android.view.View;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40605a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ApkConfirmDialogActivity f40606b;

    public h(ApkConfirmDialogActivity apkConfirmDialogActivity, com.smartdigimkt.m3.c cVar) {
        this.f40606b = apkConfirmDialogActivity;
        this.f40605a = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.d5.e.a(this.f40606b, this.f40605a.f41830u);
    }
}
