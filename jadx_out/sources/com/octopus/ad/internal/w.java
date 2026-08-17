package com.octopus.ad.internal;

import android.os.Handler;
import com.octopus.ad.internal.b.a;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes4.dex */
public class w extends s {

    /* renamed from: a, reason: collision with root package name */
    private com.octopus.ad.internal.b.a f35061a;

    /* renamed from: b, reason: collision with root package name */
    private final d f35062b;

    /* renamed from: c, reason: collision with root package name */
    private String f35063c;

    /* renamed from: d, reason: collision with root package name */
    private String f35064d;

    public w(String str) {
        this.f35064d = str;
        d dVar = new d(q.a().l(), com.octopus.ad.internal.c.p.a());
        this.f35062b = dVar;
        dVar.a(p.SPLASH);
        dVar.b(str);
    }

    @Override // com.octopus.ad.internal.e
    public d b() {
        return this.f35062b;
    }

    @Override // com.octopus.ad.internal.s
    public void c() {
        if (this.f35061a != null) {
            this.f35061a = null;
        }
    }

    public String d() {
        return this.f35063c;
    }

    @Override // com.octopus.ad.internal.e
    public void a() {
        this.f35061a = new com.octopus.ad.internal.b.a(new a.C0746a());
        e();
        try {
            this.f35061a.a(this);
            this.f35063c = this.f35061a.a(this.f35062b, true);
            int iB = com.octopus.ad.internal.c.o.b(q.a().l(), "s2sDelay", 0);
            if (iB > 0) {
                new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.w.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.octopus.ad.internal.b.a.a(w.this.f35064d, true);
                    }
                }, iB * 1000);
            }
        } catch (RejectedExecutionException e2) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Concurrent Thread Exception while firing new ad request: " + e2.getMessage());
        } catch (Exception e3) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Exception while firing new ad request: " + e3.getMessage());
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
