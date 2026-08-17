package com.smartdigimkt.l0;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class x implements w {

    /* renamed from: a, reason: collision with root package name */
    public final e[] f41605a;

    /* renamed from: b, reason: collision with root package name */
    public final f0 f41606b;

    /* renamed from: c, reason: collision with root package name */
    public final h0 f41607c;

    public x(e... eVarArr) {
        e[] eVarArr2 = (e[]) Arrays.copyOf(eVarArr, eVarArr.length + 2);
        this.f41605a = eVarArr2;
        f0 f0Var = new f0();
        this.f41606b = f0Var;
        h0 h0Var = new h0();
        this.f41607c = h0Var;
        eVarArr2[eVarArr.length] = f0Var;
        eVarArr2[eVarArr.length + 1] = h0Var;
    }

    public final com.smartdigimkt.j0.a0 a(com.smartdigimkt.j0.a0 a0Var) {
        f0 f0Var = this.f41606b;
        f0Var.f41486e = a0Var.f40853c;
        f0Var.flush();
        h0 h0Var = this.f41607c;
        float f2 = a0Var.f40851a;
        h0Var.getClass();
        int i2 = com.smartdigimkt.a1.t.f39303a;
        float fMax = Math.max(0.1f, Math.min(f2, 8.0f));
        if (h0Var.f41527d != fMax) {
            h0Var.f41527d = fMax;
            h0Var.f41531h = null;
        }
        h0Var.flush();
        h0 h0Var2 = this.f41607c;
        float f3 = a0Var.f40852b;
        h0Var2.getClass();
        float fMax2 = Math.max(0.1f, Math.min(f3, 8.0f));
        if (h0Var2.f41528e != fMax2) {
            h0Var2.f41528e = fMax2;
            h0Var2.f41531h = null;
        }
        h0Var2.flush();
        return new com.smartdigimkt.j0.a0(fMax, fMax2, a0Var.f40853c);
    }
}
