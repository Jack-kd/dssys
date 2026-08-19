package com.anythink.core.e;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final int f8632a;

    public a(b bVar) {
        this.f8632a = bVar != null ? bVar.aB() : 2;
    }

    public final void a(com.anythink.core.common.m.s sVar) {
        int i2 = this.f8632a;
        if (i2 == 1) {
            new com.anythink.core.common.m.l().a(0, sVar);
        } else {
            if (i2 == 2) {
                new com.anythink.core.common.m.d.c().a(sVar);
                return;
            }
            com.anythink.core.common.m.p pVar = new com.anythink.core.common.m.p(sVar);
            new com.anythink.core.common.m.l().a(0, (com.anythink.core.common.m.s) pVar);
            new com.anythink.core.common.m.d.c().a(pVar);
        }
    }

    public final int a() {
        return this.f8632a;
    }
}
