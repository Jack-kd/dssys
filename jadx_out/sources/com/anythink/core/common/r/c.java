package com.anythink.core.common.r;

import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.n;
import com.anythink.core.e.m;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: l, reason: collision with root package name */
    private static final String f7276l = "c";

    /* renamed from: a, reason: collision with root package name */
    String f7277a;

    /* renamed from: b, reason: collision with root package name */
    h f7278b;

    /* renamed from: c, reason: collision with root package name */
    int f7279c;

    /* renamed from: d, reason: collision with root package name */
    d f7280d;

    /* renamed from: e, reason: collision with root package name */
    int f7281e;

    /* renamed from: f, reason: collision with root package name */
    boolean f7282f;

    /* renamed from: g, reason: collision with root package name */
    long f7283g;

    /* renamed from: h, reason: collision with root package name */
    String f7284h;

    /* renamed from: i, reason: collision with root package name */
    boolean f7285i;

    /* renamed from: j, reason: collision with root package name */
    Boolean f7286j;

    /* renamed from: k, reason: collision with root package name */
    com.anythink.core.common.v.b.d f7287k;

    /* renamed from: m, reason: collision with root package name */
    private ATAdRequest f7288m;

    /* renamed from: com.anythink.core.common.r.c$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.this.k();
        }
    }

    public c(String str) {
        this.f7277a = str;
        this.f7284h = str + "_" + hashCode();
    }

    private Boolean f() {
        return this.f7286j;
    }

    private void g() {
        if (this.f7282f && this.f7283g != -1) {
            this.f7287k = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ds, new AnonymousClass1());
            com.anythink.core.common.t.c.a().a(this.f7287k, this.f7283g);
        }
    }

    private void h() {
        if (this.f7287k != null) {
            com.anythink.core.common.t.c.a().a(this.f7287k);
        }
    }

    private com.anythink.core.common.f i() {
        return com.anythink.core.common.f.a(s.b().g(), this.f7277a, String.valueOf(this.f7281e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        h();
        d dVar = this.f7280d;
        if (dVar != null) {
            dVar.a(this.f7284h, this.f7278b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        d dVar = this.f7280d;
        if (dVar != null) {
            dVar.b(this.f7284h, this.f7278b);
        }
    }

    private as l() {
        com.anythink.core.common.h.d dVar;
        as asVar = new as();
        asVar.a(s.b().M());
        asVar.f3811c = this.f7279c;
        asVar.a(this.f7288m);
        h hVar = this.f7278b;
        if (hVar != null) {
            n nVar = hVar.f7315g;
            as asVar2 = hVar.f7314f;
            m mVar = hVar.f7316h;
            g gVar = hVar.f7318j;
            if (asVar2 != null) {
                dVar = asVar2.f3817i;
                if (dVar == null) {
                    dVar = new com.anythink.core.common.h.d();
                }
                dVar.a(asVar2.f3809a);
            } else {
                dVar = new com.anythink.core.common.h.d();
                if (this.f7279c == 17) {
                    dVar.b(nVar != null ? 1 : 2);
                }
            }
            dVar.a(this.f7278b.f7317i);
            if (nVar != null) {
                dVar.a(nVar.aQ(), nVar.aa(), nVar.aO());
            } else if (mVar != null) {
                dVar.a(mVar.i(), mVar.ax(), mVar.ah());
            }
            if (gVar != null) {
                dVar.b(gVar.h());
                dVar.a(gVar.f());
                dVar.a(gVar.k());
            }
        } else {
            dVar = null;
        }
        asVar.f3817i = dVar;
        return asVar;
    }

    public final void c() {
        com.anythink.core.common.h.d dVar;
        com.anythink.core.common.f fVarA = com.anythink.core.common.f.a(s.b().g(), this.f7277a, String.valueOf(this.f7281e));
        if (this.f7282f && this.f7283g != -1) {
            this.f7287k = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ds, new AnonymousClass1());
            com.anythink.core.common.t.c.a().a(this.f7287k, this.f7283g);
        }
        as asVar = new as();
        asVar.a(s.b().M());
        asVar.f3811c = this.f7279c;
        asVar.a(this.f7288m);
        h hVar = this.f7278b;
        if (hVar != null) {
            n nVar = hVar.f7315g;
            as asVar2 = hVar.f7314f;
            m mVar = hVar.f7316h;
            g gVar = hVar.f7318j;
            if (asVar2 != null) {
                dVar = asVar2.f3817i;
                if (dVar == null) {
                    dVar = new com.anythink.core.common.h.d();
                }
                dVar.a(asVar2.f3809a);
            } else {
                dVar = new com.anythink.core.common.h.d();
                if (this.f7279c == 17) {
                    dVar.b(nVar != null ? 1 : 2);
                }
            }
            dVar.a(this.f7278b.f7317i);
            if (nVar != null) {
                dVar.a(nVar.aQ(), nVar.aa(), nVar.aO());
            } else if (mVar != null) {
                dVar.a(mVar.i(), mVar.ax(), mVar.ah());
            }
            if (gVar != null) {
                dVar.b(gVar.h());
                dVar.a(gVar.f());
                dVar.a(gVar.k());
            }
        } else {
            dVar = null;
        }
        asVar.f3817i = dVar;
        fVarA.a(s.b().g(), String.valueOf(this.f7281e), this.f7277a, asVar, new com.anythink.core.common.d.a() { // from class: com.anythink.core.common.r.c.2
            @Override // com.anythink.core.common.d.a
            public final void onAdLoadFail(AdError adError) {
                c.this.a(adError);
            }

            @Override // com.anythink.core.common.d.a
            public final void onAdLoaded() {
                c.this.j();
            }
        });
    }

    public final int d() {
        return this.f7279c;
    }

    public final String e() {
        return this.f7277a;
    }

    public final boolean b() {
        return this.f7286j == null || !this.f7285i;
    }

    public final void a(b bVar) {
        h hVar = bVar.f7270a;
        this.f7278b = hVar;
        this.f7279c = bVar.f7271b;
        this.f7281e = hVar.f7309a;
        this.f7280d = bVar.f7274e;
        this.f7282f = bVar.f7272c;
        this.f7283g = bVar.f7273d;
        this.f7288m = bVar.f7275f;
    }

    public final String a() {
        return this.f7284h;
    }

    private void a(Boolean bool) {
        this.f7286j = bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(AdError adError) {
        h();
        d dVar = this.f7280d;
        if (dVar != null) {
            dVar.a(this.f7284h, this.f7278b, adError);
        }
    }
}
