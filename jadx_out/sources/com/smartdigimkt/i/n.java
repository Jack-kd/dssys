package com.smartdigimkt.i;

import android.view.View;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ApkConfirmDialogActivity f40612a;

    public n(ApkConfirmDialogActivity apkConfirmDialogActivity) {
        this.f40612a = apkConfirmDialogActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.b4.e.a().c(new m());
        this.f40612a.finish();
    }
}
