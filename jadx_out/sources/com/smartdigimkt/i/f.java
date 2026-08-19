package com.smartdigimkt.i;

import android.view.View;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ApkConfirmDialogActivity f40602a;

    public f(ApkConfirmDialogActivity apkConfirmDialogActivity) {
        this.f40602a = apkConfirmDialogActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.b4.e.a().c(new e());
        this.f40602a.finish();
    }
}
