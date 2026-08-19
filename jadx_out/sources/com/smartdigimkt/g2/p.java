package com.smartdigimkt.g2;

import android.view.View;
import com.smartdigimkt.v1.r0;

/* loaded from: classes5.dex */
public final class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f40355a;

    public p(q qVar) {
        this.f40355a = qVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r0 r0Var = this.f40355a.f40356a.f40327h;
        if (r0Var != null) {
            r0Var.f44590a.y();
        }
    }
}
