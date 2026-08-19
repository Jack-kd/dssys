package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class cj extends k3 {
    public cj(Context context) {
        this.f14701a = new dj(context);
    }

    public void a(ej ejVar) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof dj)) {
            ((dj) l3Var).a(ejVar);
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
        if (l3Var != null && (l3Var instanceof dj)) {
            ((dj) l3Var).a(context);
        }
    }
}
