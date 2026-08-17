package com.smartdigimkt.q1;

import android.content.DialogInterface;

/* loaded from: classes5.dex */
public final class m implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f42687a;

    public m(o oVar) {
        this.f42687a = oVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f42687a.f42692d.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
        o oVar = this.f42687a;
        oVar.f42691c.removeView(oVar.f42692d);
        this.f42687a.f42692d.release();
        o oVar2 = this.f42687a;
        oVar2.f42692d = null;
        oVar2.f42694f = null;
    }
}
