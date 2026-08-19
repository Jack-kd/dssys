package com.smartdigimkt.g2;

import android.view.View;
import com.smartdigimkt.v1.r0;

/* loaded from: classes5.dex */
public final class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f40348a;

    public n(o oVar) {
        this.f40348a = oVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        o oVar = this.f40348a;
        if (oVar.f40353t || oVar.f40351r != 4) {
            r0 r0Var = oVar.f40327h;
            if (r0Var != null) {
                r0Var.f44590a.y();
                return;
            }
            return;
        }
        a aVar = oVar.f40324e;
        if (aVar != null) {
            aVar.a(1, 39);
        }
    }
}
