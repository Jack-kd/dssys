package com.smartdigimkt.g2;

import android.view.View;
import com.smartdigimkt.v1.r0;

/* loaded from: classes5.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f40336a;

    public f(g gVar) {
        this.f40336a = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r0 r0Var = this.f40336a.f40327h;
        if (r0Var != null) {
            r0Var.f44590a.y();
        }
    }
}
