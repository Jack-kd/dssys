package com.smartdigimkt.v1;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class l0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f44526a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f44527b;

    public l0(n0 n0Var, ArrayList arrayList) {
        this.f44527b = n0Var;
        this.f44526a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u0 u0Var = this.f44527b.f44552a;
        if (u0Var != null) {
            u0Var.a(this.f44526a);
        }
    }
}
