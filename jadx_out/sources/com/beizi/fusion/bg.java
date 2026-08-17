package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public final class bg extends k3 {
    public bg(Context context, boolean z2) {
        this.f14701a = new aj(context);
    }

    public void a(p1 p1Var) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof aj)) {
            ((aj) l3Var).a(p1Var);
        }
    }

    @Override // com.beizi.fusion.k3
    public void w() {
        l3 l3Var = this.f14701a;
        if (l3Var == null) {
            return;
        }
        l3Var.G();
    }

    public void a(Context context) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof aj)) {
            ((aj) l3Var).a(context);
        }
    }
}
