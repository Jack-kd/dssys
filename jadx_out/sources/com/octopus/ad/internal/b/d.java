package com.octopus.ad.internal.b;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.s;
import java.lang.ref.SoftReference;

/* loaded from: classes4.dex */
public class d extends s {

    /* renamed from: a, reason: collision with root package name */
    private final SoftReference<c> f34276a;

    /* renamed from: b, reason: collision with root package name */
    private String f34277b;

    public d(c cVar, String str) {
        this.f34276a = new SoftReference<>(cVar);
        this.f34277b = str;
    }

    @Override // com.octopus.ad.internal.e
    public void a() {
        c cVar = this.f34276a.get();
        if (cVar == null) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Before execute request manager, you should set ad request!");
            return;
        }
        try {
            if (q.a().c()) {
                cVar.l().a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR);
                return;
            }
            e();
            cVar.a(this);
            cVar.a(this.f34277b);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    @Override // com.octopus.ad.internal.e
    public com.octopus.ad.internal.d b() {
        c cVar = this.f34276a.get();
        if (cVar != null) {
            return cVar.j();
        }
        return null;
    }

    @Override // com.octopus.ad.internal.s
    public void c() {
    }

    @Override // com.octopus.ad.internal.e
    public void a(int i2) {
        f();
        c cVar = this.f34276a.get();
        if (cVar != null) {
            cVar.l().a(i2);
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(final f fVar) {
        final c cVar = this.f34276a.get();
        if (cVar != null) {
            if (!fVar.u()) {
                com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34569e, com.octopus.ad.internal.c.f.a(R.string.response_no_ads));
                cVar.l().a(80100);
                return;
            }
            final e eVar = (e) fVar.l();
            if (eVar == null) {
                return;
            }
            eVar.f(cVar.c());
            a(new b() { // from class: com.octopus.ad.internal.b.d.1
                @Override // com.octopus.ad.internal.b.b
                public p a() {
                    return cVar.getMediaType();
                }

                @Override // com.octopus.ad.internal.b.b
                public NativeAdResponse b() {
                    return eVar;
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
        }
    }

    public void a(b bVar) {
        f();
        c cVar = this.f34276a.get();
        if (cVar != null) {
            cVar.l().a(bVar);
        }
    }
}
