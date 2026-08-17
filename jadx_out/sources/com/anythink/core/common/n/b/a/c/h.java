package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.n.b.ag;
import com.anythink.core.common.n.b.x;

/* loaded from: classes2.dex */
public final class h extends ag {

    /* renamed from: a, reason: collision with root package name */
    private final String f6248a;

    /* renamed from: b, reason: collision with root package name */
    private final long f6249b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.n.c.e f6250c;

    public h(String str, long j2, com.anythink.core.common.n.c.e eVar) {
        this.f6248a = str;
        this.f6249b = j2;
        this.f6250c = eVar;
    }

    @Override // com.anythink.core.common.n.b.ag
    public final x a() {
        String str = this.f6248a;
        if (str != null) {
            return x.b(str);
        }
        return null;
    }

    @Override // com.anythink.core.common.n.b.ag
    public final long b() {
        return this.f6249b;
    }

    @Override // com.anythink.core.common.n.b.ag
    public final com.anythink.core.common.n.c.e c() {
        return this.f6250c;
    }
}
