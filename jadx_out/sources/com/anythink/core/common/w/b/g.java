package com.anythink.core.common.w.b;

import java.util.List;

/* loaded from: classes2.dex */
public final class g implements a {

    /* renamed from: a, reason: collision with root package name */
    private final List<c> f8425a;

    /* renamed from: b, reason: collision with root package name */
    private final h f8426b;

    /* renamed from: c, reason: collision with root package name */
    private final int f8427c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f8428d;

    public g(List<c> list, h hVar, int i2) {
        this.f8425a = list;
        this.f8426b = hVar;
        this.f8427c = i2;
    }

    private void b(h hVar) {
        if (this.f8428d || hVar == null || hVar.f8432d == null) {
            return;
        }
        this.f8428d = true;
        hVar.f8432d.a();
    }

    @Override // com.anythink.core.common.w.b.a
    public final h a() {
        return this.f8426b;
    }

    @Override // com.anythink.core.common.w.b.a
    public final void a(h hVar) {
        try {
            List<c> list = this.f8425a;
            if (list == null || this.f8427c < list.size()) {
                this.f8425a.get(this.f8427c).a(new g(this.f8425a, hVar, this.f8427c + 1));
            } else {
                b(hVar);
            }
        } catch (Throwable unused) {
            b(hVar);
        }
    }
}
