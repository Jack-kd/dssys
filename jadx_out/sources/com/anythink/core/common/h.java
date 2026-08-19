package com.anythink.core.common;

import com.anythink.core.common.h.by;
import java.util.List;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private final String f3539a = h.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f3540b;

    /* renamed from: c, reason: collision with root package name */
    private d f3541c;

    /* renamed from: d, reason: collision with root package name */
    private b f3542d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3543e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3544f;

    /* renamed from: g, reason: collision with root package name */
    private long f3545g;

    /* renamed from: h, reason: collision with root package name */
    private long f3546h;

    /* renamed from: i, reason: collision with root package name */
    private long f3547i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f3548j;

    /* renamed from: k, reason: collision with root package name */
    private final g f3549k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f3550l;

    public class a {

        /* renamed from: b, reason: collision with root package name */
        private boolean f3553b;

        /* renamed from: c, reason: collision with root package name */
        private com.anythink.core.c.d f3554c;

        /* renamed from: d, reason: collision with root package name */
        private int f3555d;

        public a(com.anythink.core.c.d dVar, int i2) {
            this.f3554c = dVar;
            this.f3555d = i2;
            if (h.this.f3544f) {
                com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aG, new Runnable() { // from class: com.anythink.core.common.h.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.a();
                    }
                }), 2 == i2 ? h.this.f3545g : h.this.f3546h);
            } else {
                a();
            }
        }

        public static /* synthetic */ boolean c(a aVar) {
            aVar.f3553b = true;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void a() {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aI, new Runnable() { // from class: com.anythink.core.common.h.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.f3553b) {
                        return;
                    }
                    a.c(a.this);
                    if (h.this.f3542d != null) {
                        h.this.f3542d.a(a.this.f3554c, a.this.f3555d);
                    }
                }
            }));
        }
    }

    public interface b {
        void a(com.anythink.core.c.d dVar, int i2);
    }

    public class c {
        public c() {
            if (h.this.f3544f) {
                com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aH, new Runnable() { // from class: com.anythink.core.common.h.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b();
                    }
                }), h.this.f3547i);
            } else {
                h.this.b();
            }
        }
    }

    public interface d {
        void a(g gVar);
    }

    public h(String str, g gVar) {
        this.f3540b = str;
        this.f3549k = gVar;
    }

    public static /* synthetic */ boolean f(h hVar) {
        hVar.f3548j = true;
        return true;
    }

    public static /* synthetic */ boolean g(h hVar) {
        hVar.f3543e = false;
        return false;
    }

    public final void a(com.anythink.core.e.m mVar, boolean z2) {
        if (mVar == null) {
            this.f3544f = false;
            return;
        }
        this.f3550l = z2;
        this.f3544f = mVar.b() == 1;
        this.f3545g = mVar.e();
        this.f3546h = mVar.f();
        this.f3547i = mVar.d();
        if (this.f3544f) {
            return;
        }
        this.f3545g = 0L;
        this.f3546h = 0L;
        this.f3547i = 0L;
    }

    public final synchronized void b() {
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aF, new Runnable() { // from class: com.anythink.core.common.h.1
            @Override // java.lang.Runnable
            public final void run() {
                if (h.this.f3541c != null && !h.this.f3548j) {
                    h.this.f3541c.a(h.this.f3549k);
                }
                h.f(h.this);
                h.g(h.this);
            }
        }));
    }

    public final long c() {
        if (this.f3544f) {
            return Math.max(this.f3546h, this.f3545g);
        }
        return 0L;
    }

    public final boolean d() {
        return this.f3543e;
    }

    public final boolean e() {
        return this.f3544f;
    }

    private static boolean a(List<by> list, by byVar) {
        return list == null || list.isEmpty() || com.anythink.core.common.v.k.a(byVar, list.get(0)) == -1;
    }

    public final void a() {
        this.f3543e = true;
        new c();
    }

    private void a(com.anythink.core.c.d dVar, int i2) {
        if (dVar != null) {
            new a(dVar, i2);
        }
    }

    public final void a(d dVar) {
        this.f3541c = dVar;
    }

    public final void a(b bVar) {
        this.f3542d = bVar;
    }

    private void a(boolean z2) {
        this.f3544f = z2;
    }
}
