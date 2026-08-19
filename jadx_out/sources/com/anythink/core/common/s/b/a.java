package com.anythink.core.common.s.b;

import java.util.Map;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final c f7639a;

    /* renamed from: b, reason: collision with root package name */
    private final f f7640b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f7641c;

    public a(c cVar, f fVar) {
        this.f7639a = cVar;
        this.f7640b = fVar;
    }

    public final void a() {
        if (this.f7641c) {
            return;
        }
        c cVar = this.f7639a;
        if (cVar == null || !cVar.d()) {
            this.f7641c = true;
            f fVar = this.f7640b;
            if (fVar == null || this.f7639a == null) {
                return;
            }
            Map<String, Object> mapA = fVar.a();
            if (mapA == null || mapA.isEmpty()) {
                this.f7639a.e();
                return;
            }
            for (String str : mapA.keySet()) {
                com.anythink.core.common.s.b.a();
                if (!com.anythink.core.common.s.b.a(str) && !this.f7639a.a(str)) {
                    this.f7639a.a(str, (String) mapA.get(str));
                }
            }
            this.f7639a.e();
            this.f7640b.b();
        }
    }
}
