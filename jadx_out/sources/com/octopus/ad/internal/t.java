package com.octopus.ad.internal;

import com.octopus.ad.internal.c.d;

/* loaded from: classes4.dex */
public class t extends com.octopus.ad.internal.c.d {

    /* renamed from: a, reason: collision with root package name */
    private final String f35046a;

    /* renamed from: b, reason: collision with root package name */
    private d.a f35047b;

    public t(String str) {
        super(true);
        this.f35046a = str;
    }

    public t a(d.a aVar) {
        this.f35047b = aVar;
        return this;
    }

    @Override // com.octopus.ad.internal.c.d
    public void a(com.octopus.ad.internal.c.e eVar) {
        d.a aVar = this.f35047b;
        if (aVar == null || eVar == null) {
            return;
        }
        aVar.a(eVar.b(), eVar.a(), eVar.d());
    }

    @Override // com.octopus.ad.internal.c.d
    public String a() {
        return this.f35046a;
    }
}
