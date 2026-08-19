package com.octopus.ad.internal.e;

/* loaded from: classes4.dex */
public class d implements e {

    /* renamed from: a, reason: collision with root package name */
    private final long f34872a;

    /* renamed from: b, reason: collision with root package name */
    private final c f34873b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f34874c;

    public d(c cVar, Long l2, boolean z2) {
        this.f34872a = l2.longValue();
        this.f34873b = cVar;
        this.f34874c = z2;
    }

    @Override // com.octopus.ad.internal.e.e
    public long a() {
        return this.f34872a;
    }

    @Override // com.octopus.ad.internal.e.e
    public boolean b() {
        return this.f34874c;
    }

    @Override // com.octopus.ad.internal.e.e
    public b c() {
        c cVar = this.f34873b;
        if (cVar == null) {
            return null;
        }
        return cVar.getAdWebView();
    }
}
