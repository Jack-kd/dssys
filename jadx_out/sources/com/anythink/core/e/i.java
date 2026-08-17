package com.anythink.core.e;

import com.anythink.core.common.h.au;
import java.util.List;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private final int f8820a;

    /* renamed from: b, reason: collision with root package name */
    private final List<au> f8821b;

    public i(b bVar, List<au> list) {
        this.f8820a = bVar != null ? bVar.aB() : 2;
        this.f8821b = list;
    }

    public final void a(com.anythink.core.common.m.s sVar) {
        int i2 = this.f8820a;
        if (i2 == 1) {
            new com.anythink.core.common.m.n(this.f8821b).a(0, sVar);
        } else {
            if (i2 == 2) {
                new com.anythink.core.common.m.d.d(this.f8821b).a(sVar);
                return;
            }
            com.anythink.core.common.m.p pVar = new com.anythink.core.common.m.p(sVar);
            new com.anythink.core.common.m.n(this.f8821b).a(0, (com.anythink.core.common.m.s) pVar);
            new com.anythink.core.common.m.d.d(this.f8821b).a(pVar);
        }
    }

    private int a() {
        return this.f8820a;
    }
}
