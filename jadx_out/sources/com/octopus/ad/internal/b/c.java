package com.octopus.ad.internal.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.octopus.ad.IBidding;
import com.octopus.ad.NativeAdListener;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.b.a;
import com.octopus.ad.internal.c.j;
import com.octopus.ad.internal.c.m;
import com.octopus.ad.internal.c.s;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.utils.ThreadUtils;

/* loaded from: classes4.dex */
public class c extends com.octopus.ad.internal.b.a implements IBidding, com.octopus.ad.internal.a {

    /* renamed from: b, reason: collision with root package name */
    public com.octopus.ad.internal.c f34252b;

    /* renamed from: c, reason: collision with root package name */
    private NativeAdListener f34253c;

    /* renamed from: d, reason: collision with root package name */
    private a f34254d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f34255e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f34256f;

    /* renamed from: g, reason: collision with root package name */
    private Context f34257g;

    /* renamed from: h, reason: collision with root package name */
    private com.octopus.ad.internal.d f34258h;

    /* renamed from: i, reason: collision with root package name */
    private int f34259i;

    /* renamed from: j, reason: collision with root package name */
    private String f34260j;

    /* renamed from: k, reason: collision with root package name */
    private final String f34261k;

    /* renamed from: l, reason: collision with root package name */
    private String f34262l;

    /* renamed from: m, reason: collision with root package name */
    private long f34263m;

    /* renamed from: n, reason: collision with root package name */
    private long f34264n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f34265o = false;

    /* renamed from: p, reason: collision with root package name */
    private boolean f34266p = false;

    public class a implements com.octopus.ad.internal.b, j.c {

        /* renamed from: a, reason: collision with root package name */
        j f34267a;

        /* renamed from: b, reason: collision with root package name */
        NativeAdResponse f34268b;

        private a() {
        }

        @Override // com.octopus.ad.internal.b
        public void a(long j2) {
        }

        @Override // com.octopus.ad.internal.b
        public void b() {
        }

        @Override // com.octopus.ad.internal.b
        public void c() {
        }

        @Override // com.octopus.ad.internal.b
        public void d() {
        }

        @Override // com.octopus.ad.internal.c.j.c
        public void e() {
            if (c.this.f34253c != null) {
                c.this.f34253c.onAdLoaded(this.f34268b);
            }
            this.f34267a = null;
            this.f34268b = null;
            c.this.f34266p = false;
        }

        @Override // com.octopus.ad.internal.b
        public void a(com.octopus.ad.internal.e.c cVar) {
        }

        @Override // com.octopus.ad.internal.b
        public void a(boolean z2) {
        }

        @Override // com.octopus.ad.internal.b
        public void a(b bVar) {
            if (!bVar.a().equals(p.NATIVE) && !bVar.a().equals(p.BANNER) && !bVar.a().equals(p.DRAW)) {
                a(80103);
                return;
            }
            final NativeAdResponse nativeAdResponseB = bVar.b();
            if (nativeAdResponseB == null) {
                return;
            }
            this.f34268b = nativeAdResponseB;
            e eVar = (e) nativeAdResponseB;
            eVar.a(c.this);
            eVar.a(c.this.i());
            eVar.a(c.this.f34257g);
            if (c.this.f34258h.l()) {
                eVar.h();
                return;
            }
            if (eVar.a() != 1) {
                c.this.f34265o = true;
                c.this.f34264n = System.currentTimeMillis();
                c.this.a(bVar.c());
                c.this.c(bVar.d());
                c.this.a(bVar.e());
                c.this.f(nativeAdResponseB.getLandingPageUrl());
                eVar.a(c.this.f34264n, c.this.f34263m);
                if (!c.this.f34255e && !c.this.f34256f) {
                    if (c.this.f34253c != null) {
                        c.this.f34253c.onAdLoaded(nativeAdResponseB);
                    }
                    c.this.f34266p = false;
                    return;
                }
                this.f34267a = new j();
                if (c.this.f34255e) {
                    this.f34267a.a(new j.b() { // from class: com.octopus.ad.internal.b.c.a.1
                        @Override // com.octopus.ad.internal.c.j.b
                        public void a(Bitmap bitmap) {
                            nativeAdResponseB.setImage(bitmap);
                        }

                        @Override // com.octopus.ad.internal.c.j.b
                        public void a() {
                            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34569e, "Image downloading logFailed for url " + nativeAdResponseB.getImageUrl());
                        }
                    }, nativeAdResponseB.getImageUrl());
                }
                if (c.this.f34256f) {
                    this.f34267a.a(new j.b() { // from class: com.octopus.ad.internal.b.c.a.2
                        @Override // com.octopus.ad.internal.c.j.b
                        public void a(Bitmap bitmap) {
                            nativeAdResponseB.setIcon(bitmap);
                        }

                        @Override // com.octopus.ad.internal.c.j.b
                        public void a() {
                            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34569e, "Image downloading logFailed for url " + nativeAdResponseB.getIconUrl());
                        }
                    }, nativeAdResponseB.getIconUrl());
                }
                this.f34267a.a(this);
                this.f34267a.a();
                return;
            }
            a(80100);
            eVar.g();
            if (eVar.i()) {
                return;
            }
            com.octopus.ad.internal.b.a.b(eVar.b());
        }

        @Override // com.octopus.ad.internal.b
        public void a(final int i2) {
            ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.b.c.a.3
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f34253c != null) {
                        c.this.f34253c.onAdFailed(i2);
                    }
                }
            });
            c.this.f34266p = false;
        }

        @Override // com.octopus.ad.internal.b
        public void a() {
            NativeAdResponse nativeAdResponse = this.f34268b;
            if (nativeAdResponse != null) {
                nativeAdResponse.destroy();
                this.f34268b = null;
            }
        }
    }

    public c(Context context, String str, p pVar, String str2) {
        this.f34257g = context;
        this.f34261k = str2;
        com.octopus.ad.internal.c.b.a(context.getApplicationContext());
        s.a(context.getApplicationContext());
        m.a(context.getApplicationContext());
        com.octopus.ad.internal.d dVar = new com.octopus.ad.internal.d(context, com.octopus.ad.internal.c.p.a());
        this.f34258h = dVar;
        dVar.b(str);
        this.f34258h.a(1);
        this.f34258h.a(pVar);
        com.octopus.ad.internal.c cVar = new com.octopus.ad.internal.c(this);
        this.f34252b = cVar;
        cVar.a(-1, str2);
        this.f34254d = new a();
    }

    @Override // com.octopus.ad.internal.a
    public p getMediaType() {
        return this.f34258h.q();
    }

    public boolean h() {
        return System.currentTimeMillis() - this.f34264n < this.f34263m;
    }

    public String i() {
        return !TextUtils.isEmpty(this.f34258h.f()) ? this.f34258h.f() : this.f34258h.a();
    }

    public com.octopus.ad.internal.d j() {
        return this.f34258h;
    }

    public void k() {
    }

    public com.octopus.ad.internal.b l() {
        return this.f34254d;
    }

    public void m() {
        this.f34254d.a();
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        NativeAdResponse nativeAdResponse;
        try {
            a aVar = this.f34254d;
            if (aVar == null || (nativeAdResponse = aVar.f34268b) == null) {
                return;
            }
            e eVar = (e) nativeAdResponse;
            eVar.a(i2, str, str2);
            eVar.g();
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        NativeAdResponse nativeAdResponse;
        try {
            a aVar = this.f34254d;
            if (aVar == null || (nativeAdResponse = aVar.f34268b) == null) {
                return;
            }
            ((e) nativeAdResponse).b(i2);
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    public boolean c() {
        return this.f34258h.p();
    }

    public String d() {
        return this.f34258h.c();
    }

    public int e() {
        return this.f34259i;
    }

    public String f() {
        return this.f34260j;
    }

    public boolean g() {
        return this.f34265o;
    }

    public void b(boolean z2) {
        a(z2);
    }

    public void c(String str) {
        this.f34260j = str;
    }

    public void d(String str) {
        this.f34258h.c(str);
    }

    public void e(String str) {
        this.f34258h.d(str);
    }

    public void f(String str) {
        this.f34262l = str;
    }

    public void a(boolean z2) {
        this.f34258h.d(z2);
    }

    public void b(String str) {
        this.f34258h.b(str);
    }

    public void a(int i2) {
        this.f34259i = i2;
    }

    public void a(long j2) {
        q.f34985y = j2;
        this.f34263m = j2;
    }

    public void a(NativeAdListener nativeAdListener) {
        this.f34253c = nativeAdListener;
    }

    @Override // com.octopus.ad.internal.a
    public boolean a() {
        return this.f34258h.r();
    }

    public boolean a(a.C0746a c0746a) {
        if (this.f34266p) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34576l, "Still loading last nativead ad , won't load a new ad");
            return false;
        }
        k();
        if (this.f34258h.r()) {
            this.f34252b.a();
            this.f34252b.c();
            this.f34252b.a(this.f34261k);
            this.f34266p = true;
            return true;
        }
        a aVar = this.f34254d;
        if (aVar != null) {
            aVar.a(MediationConstant.ErrorCode.ADN_INIT_FAIL);
        }
        return false;
    }
}
