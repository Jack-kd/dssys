package com.smartdigimkt.v1;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class m0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f44538a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f44539b;

    public m0(n0 n0Var, ArrayList arrayList) {
        this.f44539b = n0Var;
        this.f44538a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u0 u0Var = this.f44539b.f44552a;
        if (u0Var != null) {
            u0Var.a(this.f44538a);
        }
    }
}
