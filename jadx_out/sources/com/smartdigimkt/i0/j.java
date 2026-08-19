package com.smartdigimkt.i0;

import com.smartdigimkt.v1.m1;
import com.smartdigimkt.v1.v1;

/* loaded from: classes5.dex */
public final class j implements com.smartdigimkt.i1.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f40663a;

    public j(k kVar) {
        this.f40663a = kVar;
    }

    @Override // com.smartdigimkt.i1.a
    public final boolean a() {
        v1 v1Var;
        m1 m1Var = (m1) this.f40663a;
        if (m1Var.f44540b.hasWindowFocus() && m1Var.f44540b.isShown() && (v1Var = m1Var.f44540b.f43326k) != null) {
            return v1Var.a();
        }
        return false;
    }
}
