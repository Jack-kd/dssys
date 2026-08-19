package com.anythink.core.common.t;

import android.os.SystemClock;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.b.e;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    long f7671a;

    /* renamed from: b, reason: collision with root package name */
    long f7672b;

    /* renamed from: c, reason: collision with root package name */
    Runnable f7673c;

    /* renamed from: d, reason: collision with root package name */
    boolean f7674d;

    /* renamed from: e, reason: collision with root package name */
    boolean f7675e;

    /* renamed from: f, reason: collision with root package name */
    com.anythink.core.common.v.b.d f7676f;

    /* renamed from: g, reason: collision with root package name */
    private final a f7677g;

    private b(long j2, Runnable runnable) {
        this.f7674d = false;
        this.f7675e = true;
        this.f7677g = c.a();
        this.f7676f = new com.anythink.core.common.v.b.d(e.dr, new Runnable() { // from class: com.anythink.core.common.t.b.1
            @Override // java.lang.Runnable
            public final void run() {
                b bVar = b.this;
                bVar.f7674d = false;
                bVar.f7672b = -1L;
                if (!bVar.f7675e) {
                    com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(e.cU, b.this.f7673c));
                } else {
                    s.b();
                    s.b(b.this.f7673c);
                }
            }
        });
        this.f7672b = j2;
        this.f7673c = runnable;
    }

    private synchronized void c() {
        if (this.f7674d) {
            this.f7674d = false;
            this.f7672b -= SystemClock.elapsedRealtime() - this.f7671a;
            this.f7677g.a(this.f7676f);
        }
    }

    public final synchronized void a() {
        if (this.f7672b >= 0 && !this.f7674d) {
            this.f7674d = true;
            this.f7671a = SystemClock.elapsedRealtime();
            this.f7677g.a(this.f7676f, this.f7672b);
        }
    }

    public final synchronized void b() {
        this.f7674d = false;
        this.f7677g.a(this.f7676f);
        this.f7672b = -1L;
    }

    public b(long j2, Runnable runnable, byte b3) {
        this(j2, runnable);
        this.f7675e = false;
    }
}
