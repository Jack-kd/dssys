package com.octopus.ad.internal;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.internal.b.a;
import java.lang.ref.SoftReference;

/* loaded from: classes4.dex */
class f extends s {

    /* renamed from: a, reason: collision with root package name */
    private final SoftReference<com.octopus.ad.internal.e.a> f34918a;

    /* renamed from: b, reason: collision with root package name */
    private com.octopus.ad.internal.b.a f34919b;

    /* renamed from: c, reason: collision with root package name */
    private String f34920c;

    public f(com.octopus.ad.internal.e.a aVar, String str) {
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "AdViewRequestManagerImpl 开始");
        this.f34918a = new SoftReference<>(aVar);
        this.f34920c = str;
    }

    @Override // com.octopus.ad.internal.e
    public void a() {
        com.octopus.ad.internal.e.a aVar = this.f34918a.get();
        if (aVar == null || d() == null) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Before execute request manager, you should set ad request!");
            return;
        }
        try {
            if (q.a().c()) {
                aVar.getAdDispatcher().a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR);
                return;
            }
            this.f34919b = new com.octopus.ad.internal.b.a(d());
            com.octopus.ad.d.b.f.d("OctopusAd_Time", "new AdRequestImpl");
            e();
            this.f34919b.a(this);
            this.f34919b.a(this.f34920c);
            aVar.getAdDispatcher().c();
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    @Override // com.octopus.ad.internal.e
    public d b() {
        com.octopus.ad.internal.e.a aVar = this.f34918a.get();
        if (aVar != null) {
            return aVar.getAdParameters();
        }
        return null;
    }

    @Override // com.octopus.ad.internal.s
    public void c() {
        if (this.f34919b != null) {
            this.f34919b = null;
        }
    }

    public a.C0746a d() {
        if (this.f34918a.get() != null) {
            return this.f34918a.get().getAdRequest();
        }
        return null;
    }

    @Override // com.octopus.ad.internal.e
    public void a(int i2) {
        f();
        com.octopus.ad.internal.e.a aVar = this.f34918a.get();
        if (aVar == null || aVar.getAdDispatcher() == null) {
            return;
        }
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "send onAdFailedToLoad");
        aVar.getAdDispatcher().a(i2);
    }

    @Override // com.octopus.ad.internal.e
    public void a(com.octopus.ad.internal.b.f fVar) {
        com.octopus.ad.internal.e.a aVar = this.f34918a.get();
        if (aVar != null) {
            if (fVar != null && fVar.u()) {
                com.octopus.ad.d.b.f.d("OctopusAd_Time", "handleStandardAds");
                a(aVar, fVar);
            } else {
                com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34569e, com.octopus.ad.internal.c.f.a(R.string.response_no_ads));
                if (aVar.getAdDispatcher() != null) {
                    aVar.getAdDispatcher().a(80100);
                }
            }
        }
    }

    private void a(final com.octopus.ad.internal.e.a aVar, final com.octopus.ad.internal.b.f fVar) {
        try {
            aVar.setServerResponse(fVar);
            aVar.getAdParameters().a(false);
            a(new com.octopus.ad.internal.b.b() { // from class: com.octopus.ad.internal.f.1
                @Override // com.octopus.ad.internal.b.b
                public p a() {
                    return aVar.getMediaType();
                }

                @Override // com.octopus.ad.internal.b.b
                public NativeAdResponse b() {
                    return null;
                }

                @Override // com.octopus.ad.internal.b.b
                public int c() {
                    return fVar.q();
                }

                @Override // com.octopus.ad.internal.b.b
                public String d() {
                    return fVar.s();
                }

                @Override // com.octopus.ad.internal.b.b
                public long e() {
                    return fVar.t();
                }
            });
            com.octopus.ad.internal.e.b bVar = new com.octopus.ad.internal.e.b(aVar);
            bVar.a(fVar);
            if (fVar.a() != null && fVar.a().i() != null) {
                aVar.a(fVar.a().i(), fVar.p() > 0 ? fVar.p() / 640.0f : 1.0f);
                aVar.a(fVar.an(), fVar.p());
            } else {
                aVar.a(fVar.am(), fVar.an(), fVar.p());
            }
            com.octopus.ad.internal.e.c cVarC = bVar;
            if (aVar.getMediaType() != p.INTERSTITIAL) {
                cVarC = bVar;
                if (aVar.getMediaType() != p.FULLSCREEN) {
                    cVarC = aVar.getMediaType() == p.REWARD ? bVar : bVar.c();
                }
            }
            aVar.getAdDispatcher().a(cVarC);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Exception initializing the view: " + e2.getMessage());
            a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL);
        }
    }

    public void a(com.octopus.ad.internal.b.b bVar) {
        f();
        com.octopus.ad.internal.e.a aVar = this.f34918a.get();
        if (aVar != null) {
            aVar.getAdDispatcher().a(bVar);
        }
    }
}
