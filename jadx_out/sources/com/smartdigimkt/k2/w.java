package com.smartdigimkt.k2;

import android.view.View;

/* loaded from: classes5.dex */
public final class w implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f41355a;

    public w(y yVar) {
        this.f41355a = yVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        y yVar = this.f41355a;
        if (yVar.f41311h != null) {
            this.f41355a.f41311h.a(1, com.smartdigimkt.z.z.b(yVar.f41305b, yVar.f41306c) ? 1 : 5);
        }
    }
}
