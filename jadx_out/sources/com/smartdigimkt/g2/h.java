package com.smartdigimkt.g2;

import android.view.View;
import com.smartdigimkt.v1.r0;

/* loaded from: classes5.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40339a;

    public h(i iVar) {
        this.f40339a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r0 r0Var = this.f40339a.f40340a.f40327h;
        if (r0Var != null) {
            r0Var.f44590a.y();
        }
    }
}
