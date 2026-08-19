package com.octopus.ad.internal;

import com.octopus.ad.internal.c.d;

/* loaded from: classes4.dex */
public class i extends com.octopus.ad.internal.c.d {

    /* renamed from: a, reason: collision with root package name */
    private final String f34936a;

    /* renamed from: b, reason: collision with root package name */
    private d.a f34937b;

    public i(String str) {
        super(false);
        this.f34936a = str;
    }

    public i a(d.a aVar) {
        this.f34937b = aVar;
        return this;
    }

    @Override // com.octopus.ad.internal.c.d
    public void a(com.octopus.ad.internal.c.e eVar) {
        d.a aVar = this.f34937b;
        if (aVar == null || eVar == null) {
            return;
        }
        aVar.a(eVar.b(), eVar.a(), eVar.d());
    }

    @Override // com.octopus.ad.internal.c.d
    public String a() {
        return this.f34936a;
    }
}
