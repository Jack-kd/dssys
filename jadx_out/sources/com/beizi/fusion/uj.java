package com.beizi.fusion;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class uj extends fp {

    /* renamed from: b, reason: collision with root package name */
    private static final gp f16501b = b(cp.f13257b);

    /* renamed from: a, reason: collision with root package name */
    private final dp f16502a;

    public class a implements gp {
        public a() {
        }
    }

    private uj(dp dpVar) {
        this.f16502a = dpVar;
    }

    private static gp b(dp dpVar) {
        return new uj(dpVar).new a();
    }

    public static gp a(dp dpVar) {
        return dpVar == cp.f13257b ? f16501b : b(dpVar);
    }

    @Override // com.beizi.fusion.fp
    public void a(rg rgVar, Number number) throws IOException {
        rgVar.a(number);
    }
}
