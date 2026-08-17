package com.octopus.ad.internal;

import com.octopus.ad.internal.b.a;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes4.dex */
public class r extends s {

    /* renamed from: a, reason: collision with root package name */
    private com.octopus.ad.internal.b.a f35041a;

    /* renamed from: b, reason: collision with root package name */
    private final d f35042b = new d(q.a().l(), com.octopus.ad.internal.c.p.a());

    /* renamed from: c, reason: collision with root package name */
    private String f35043c;

    public r(String str) {
        this.f35043c = str;
    }

    @Override // com.octopus.ad.internal.e
    public void a() {
        this.f35041a = new com.octopus.ad.internal.b.a(new a.C0746a());
        e();
        try {
            this.f35041a.a(this);
            this.f35041a.a(this.f35043c);
        } catch (RejectedExecutionException e2) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Concurrent Thread Exception while firing new ad request: " + e2.getMessage());
        } catch (Exception e3) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Exception while firing new ad request: " + e3.getMessage());
        }
    }

    @Override // com.octopus.ad.internal.e
    public d b() {
        return this.f35042b;
    }

    @Override // com.octopus.ad.internal.s
    public void c() {
        if (this.f35041a != null) {
            this.f35041a = null;
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(int i2) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34570f, "Failed to load prefetch request: " + i2);
    }

    @Override // com.octopus.ad.internal.e
    public void a(com.octopus.ad.internal.b.f fVar) {
        Iterator<String> it = fVar.ae().iterator();
        while (it.hasNext()) {
            String next = it.next();
            com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, "Prefetch resource: " + next);
        }
    }
}
