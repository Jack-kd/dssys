package com.smartdigimkt.p1;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.bridge.a;
import com.smartdigimkt.e5.b0;
import com.smartdigimkt.e5.c0;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Map;

/* loaded from: classes5.dex */
public final class r implements a, g, s {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.j1.f f42570a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.k f42571b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.q3.a f42572c;

    /* renamed from: g, reason: collision with root package name */
    public final a f42576g;

    /* renamed from: f, reason: collision with root package name */
    public int f42575f = 0;

    /* renamed from: d, reason: collision with root package name */
    public boolean f42573d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f42574e = false;

    public r(com.smartdigimkt.j1.f fVar, a aVar) {
        this.f42570a = fVar;
        this.f42571b = fVar.f41069e;
        this.f42572c = fVar.f41076l;
        this.f42576g = aVar;
    }

    public final void a() {
        com.smartdigimkt.m3.k kVar;
        com.smartdigimkt.m3.e eVar;
        Context contextD;
        com.smartdigimkt.q3.a aVar = this.f42572c;
        if (aVar == null || (kVar = this.f42571b) == null || (eVar = kVar.f41832w) == null) {
            return;
        }
        com.smartdigimkt.m3.d dVar = eVar.f41897T1;
        boolean zA = false;
        if (dVar != null) {
            long j2 = dVar.f41836a;
            if (j2 > 0) {
                com.smartdigimkt.j1.f fVar = this.f42570a;
                com.smartdigimkt.l3.a aVar2 = fVar != null ? fVar.f41067c : null;
                aVar.f42769k0 = com.smartdigimkt.m3.h.a(j2, kVar, aVar2);
                if (j2 <= 0) {
                    j2 = 0;
                }
                aVar.f42771l0 = j2;
                long j3 = this.f42572c.f42769k0;
                com.smartdigimkt.j1.f fVar2 = this.f42570a;
                boolean z2 = (fVar2 instanceof com.smartdigimkt.j1.j) && ((com.smartdigimkt.j1.j) fVar2).f41093n;
                com.smartdigimkt.m3.k kVar2 = this.f42571b;
                if (aVar2 != null && aVar2.f41628b == 1 && com.smartdigimkt.m3.h.a(j3)) {
                    zA = (com.smartdigimkt.m3.p.f42139a && com.smartdigimkt.m3.h.a(j3) && (contextD = SDKContext.getInstance().d()) != null && z2) ? com.smartdigimkt.k2.k.a(contextD, kVar2) : true;
                }
                this.f42572c.f42773m0 = zA;
                return;
            }
        }
        aVar.f42773m0 = false;
    }

    public final void b(int i2) {
        com.smartdigimkt.j1.f fVar;
        com.smartdigimkt.l3.a aVar;
        if (this.f42572c == null || (fVar = this.f42570a) == null || this.f42571b == null || (aVar = fVar.f41067c) == null || aVar.f41628b != 1) {
            return;
        }
        a();
        if (com.smartdigimkt.m3.h.a(this.f42572c.f42769k0)) {
            com.smartdigimkt.q3.a aVarA = this.f42572c.a();
            aVarA.f42775n0 = i2;
            com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(25, aVarA, -1L);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:213|43|208|(1:(7:(1:48)|51|52|211|(1:(2:(1:57)|60)(1:58))(1:59)|210|60)(1:49))(1:50)|207|51|52|211|(0)(0)|210|60) */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6 A[Catch: all -> 0x00f8, TRY_LEAVE, TryCatch #3 {all -> 0x00f8, blocks: (B:57:0x00f0, B:58:0x00f3, B:59:0x00f6), top: B:211:0x00e9 }] */
    @Override // com.smartdigimkt.p1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAdClick(com.smartdigimkt.p1.u r18) {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p1.r.onAdClick(com.smartdigimkt.p1.u):void");
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdClosed() {
        com.smartdigimkt.b4.e.a().a(new o(this));
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdShow(u uVar) {
        com.smartdigimkt.j1.f fVar;
        com.smartdigimkt.o3.b bVar;
        com.smartdigimkt.m3.k kVar = this.f42571b;
        if (kVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar2 = (com.smartdigimkt.m3.b) kVar;
            if (bVar2.f41778w0 == 1) {
                com.smartdigimkt.f3.k kVarA = com.smartdigimkt.f3.k.a();
                kVarA.getClass();
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.h(kVarA, bVar2));
                if (this.f42572c != null && !this.f42573d) {
                    this.f42573d = true;
                    com.smartdigimkt.f3.p pVarB = com.smartdigimkt.f3.p.b();
                    String str = this.f42572c.f42748a;
                    pVarB.getClass();
                    com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.n(pVarB, str, bVar2));
                }
            }
        }
        Map map = this.f42570a.f41072h;
        if (uVar != null) {
            int i2 = this.f42571b.f41793N;
            int i3 = uVar.f42581e;
            if (map != null) {
                map.put(a.b.f1728b, Integer.valueOf(i2));
                map.put(a.b.f1729c, Integer.valueOf(uVar.f42581e));
            }
            com.smartdigimkt.q3.a aVar = this.f42572c;
            if (aVar != null) {
                aVar.f42789x = i2;
                aVar.f42790y = i3;
            }
        }
        if (uVar != null) {
            int i4 = this.f42570a.f41067c.f41628b;
            if (i4 == 1) {
                if (map != null) {
                    map.put(a.b.f1730d, Integer.valueOf(uVar.f42579c));
                    map.put(a.b.f1731e, Integer.valueOf(uVar.f42583g));
                }
                com.smartdigimkt.q3.a aVar2 = this.f42572c;
                aVar2.f42729H = uVar.f42579c;
                aVar2.f42728G = uVar.f42583g;
            } else if (i4 == 3 && map != null) {
                map.put(a.b.f1731e, Integer.valueOf(uVar.f42583g));
                map.put(a.b.f1732f, Integer.valueOf(uVar.f42580d));
                int i5 = uVar.f42582f ? uVar.f42580d == 1 ? 3 : 1 : uVar.f42580d == 1 ? 4 : 2;
                map.put(a.b.f1733g, Integer.valueOf(i5));
                com.smartdigimkt.q3.a aVar3 = this.f42572c;
                aVar3.f42730I = uVar.f42580d;
                aVar3.f42728G = uVar.f42583g;
                aVar3.f42727F = i5;
            }
        }
        a();
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(4, this.f42572c, -1L);
        com.smartdigimkt.q3.a aVar4 = this.f42572c;
        if (aVar4 != null && !aVar4.f42787v && (fVar = this.f42570a) != null && (bVar = fVar.f41075k) != null) {
            double d2 = bVar.f42233A;
            String str2 = bVar.f42262y;
            if (bVar.f42259v) {
                double d3 = d2 > 0.0d ? bVar.f42224d * d2 : bVar.f42224d;
                if (TextUtils.isEmpty(str2)) {
                    str2 = bVar.f42229i;
                }
                if (!TextUtils.isEmpty(str2)) {
                    new com.smartdigimkt.q4.h(str2.replace(com.anythink.core.c.d.c.f2018b, c0.a(bVar, d3))).a(0, (com.smartdigimkt.l4.b) null);
                }
            } else {
                String strReplace = bVar.f42229i;
                if (!TextUtils.isEmpty(strReplace)) {
                    SDMLossInfo sDMLossInfo = bVar.f42260w;
                    if (sDMLossInfo != null) {
                        SDMLossInfo.LOSS_REASON lossReason = sDMLossInfo.getLossReason();
                        String str3 = "103";
                        if (lossReason != null) {
                            int i6 = b0.f40079a[lossReason.ordinal()];
                            if (i6 == 1) {
                                str3 = "100";
                            } else if (i6 == 2) {
                                str3 = "2";
                            } else if (i6 == 3) {
                                str3 = "102";
                            }
                        }
                        strReplace = strReplace.replace(com.anythink.core.c.d.c.f2020d, str3);
                    }
                    new com.smartdigimkt.q4.h(strReplace).a(0, (com.smartdigimkt.l4.b) null);
                }
            }
        }
        com.smartdigimkt.b4.e.a().a(new i(this, uVar));
    }

    @Override // com.smartdigimkt.p1.a
    public final void onDeeplinkCallback(boolean z2) {
        com.smartdigimkt.m3.e eVar = this.f42571b.f41832w;
        boolean z3 = eVar != null && this.f42575f <= eVar.f41843B1;
        if (this.f42572c.f42787v || z3) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new p(this, z2));
    }

    @Override // com.smartdigimkt.p1.g
    public final void onRewardTaskFirst() {
        b(1);
        com.smartdigimkt.b4.e.a().a(new m(this));
    }

    @Override // com.smartdigimkt.p1.g
    public final void onRewarded() {
        b(2);
        com.smartdigimkt.b4.e.a().a(new n(this));
    }

    @Override // com.smartdigimkt.p1.a
    public final void onShowFailed(com.smartdigimkt.i0.f fVar) {
        com.smartdigimkt.b4.e.a().a(new q(this, fVar));
    }

    @Override // com.smartdigimkt.p1.g
    public final void onVideoAdPlayEnd() {
        a();
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(9, this.f42572c, -1L);
        com.smartdigimkt.b4.e.a().a(new l(this));
    }

    @Override // com.smartdigimkt.p1.g
    public final void onVideoAdPlayStart() {
        a();
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(8, this.f42572c, -1L);
        com.smartdigimkt.b4.e.a().a(new k(this));
    }

    @Override // com.smartdigimkt.p1.s
    public final void a(int i2) {
        com.smartdigimkt.b4.e.a().a(new h(this, i2));
    }
}
