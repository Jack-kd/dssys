package com.anythink.core.common.h;

import android.os.Looper;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;

/* loaded from: classes2.dex */
public class c implements Comparable<c> {

    /* renamed from: b, reason: collision with root package name */
    private int f4136b;

    /* renamed from: c, reason: collision with root package name */
    private long f4137c;

    /* renamed from: d, reason: collision with root package name */
    private ATBaseAdAdapter f4138d;

    /* renamed from: e, reason: collision with root package name */
    private BaseAd f4139e;

    /* renamed from: f, reason: collision with root package name */
    private int f4140f;

    /* renamed from: g, reason: collision with root package name */
    private long f4141g;

    /* renamed from: h, reason: collision with root package name */
    private int f4142h;

    /* renamed from: i, reason: collision with root package name */
    private long f4143i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f4144j;

    /* renamed from: l, reason: collision with root package name */
    private boolean f4146l;

    /* renamed from: a, reason: collision with root package name */
    private String f4135a = getClass().getSimpleName();

    /* renamed from: k, reason: collision with root package name */
    private String f4145k = "1";

    private long r() {
        return this.f4141g;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(c cVar) {
        c cVar2 = cVar;
        by unitGroupInfo = this.f4138d.getUnitGroupInfo();
        by unitGroupInfo2 = cVar2.f4138d.getUnitGroupInfo();
        int iB = com.anythink.core.common.v.k.b(unitGroupInfo, unitGroupInfo2);
        if (iB < 0) {
            return -1;
        }
        if (iB > 0) {
            return 1;
        }
        int i2 = unitGroupInfo.f4113m;
        int i3 = unitGroupInfo2.f4113m;
        if (i2 < i3) {
            return -1;
        }
        if (i2 != i3) {
            return 1;
        }
        if (b() < cVar2.b()) {
            return -1;
        }
        return b() != cVar2.b() ? 1 : 0;
    }

    public final long d() {
        return this.f4137c;
    }

    public final ATBaseAdAdapter e() {
        return this.f4138d;
    }

    public final BaseAd f() {
        return this.f4139e;
    }

    public final boolean g() {
        BaseAd baseAd;
        by unitGroupInfo;
        ad adVarY;
        try {
        } catch (Exception e2) {
            Log.e("AdCacheInfo", "isNetworkAdReady()  >>> " + e2.getMessage());
        }
        if (this.f4144j || this.f4140f > 0) {
            return false;
        }
        ATBaseAdAdapter aTBaseAdAdapter = this.f4138d;
        if (aTBaseAdAdapter != null && (unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo()) != null && (adVarY = unitGroupInfo.Y()) != null && adVarY.y()) {
            this.f4146l = true;
            return false;
        }
        if (this.f4138d != null && (baseAd = this.f4139e) != null && baseAd.isValid()) {
            return true;
        }
        try {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
        } catch (Throwable unused) {
        }
        ATBaseAdAdapter aTBaseAdAdapter2 = this.f4138d;
        if (aTBaseAdAdapter2 != null) {
            return aTBaseAdAdapter2.internalIsAdReady();
        }
        return false;
    }

    public final boolean h() {
        return this.f4144j;
    }

    public final n i() {
        BaseAd baseAd = this.f4139e;
        return baseAd != null ? baseAd.getDetail() : this.f4138d.getTrackingInfo();
    }

    public final boolean j() {
        return this.f4137c + this.f4141g > System.currentTimeMillis();
    }

    public final boolean k() {
        return j() && g();
    }

    public final String l() {
        return this.f4145k;
    }

    public final synchronized void m() {
        if (this.f4144j) {
            return;
        }
        this.f4144j = true;
        if (this.f4140f <= 0) {
            com.anythink.core.common.d.s.b();
            com.anythink.core.common.d.s.b(new Runnable() { // from class: com.anythink.core.common.h.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (c.this.f4140f <= 0) {
                            if (c.this.f4138d != null) {
                                c.this.f4138d.internalDestroy();
                            }
                            if (c.this.f4139e != null) {
                                c.this.f4139e.destroy();
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public final double n() {
        return com.anythink.core.common.v.o.a(this.f4138d.getUnitGroupInfo());
    }

    public final by o() {
        return this.f4138d.getUnitGroupInfo();
    }

    public final ATAdInfo p() {
        BaseAd baseAd = this.f4139e;
        ATBaseAdAdapter aTBaseAdAdapter = this.f4138d;
        if (baseAd != null) {
            return com.anythink.core.common.d.k.a(baseAd, aTBaseAdAdapter, 4);
        }
        if (aTBaseAdAdapter != null) {
            return com.anythink.core.common.d.k.a(aTBaseAdAdapter, 4);
        }
        return null;
    }

    public final boolean q() {
        return this.f4146l;
    }

    public String toString() {
        return "AdCacheInfo{UnitGroupInfo:" + this.f4138d.getUnitGroupInfo().toString() + ", showTime=" + this.f4140f + ", cacheTime=" + this.f4141g + ", upStatus=" + this.f4142h + ", upStatusOutDateTime=" + (this.f4137c + this.f4143i) + ", hasDestroy=" + this.f4144j + '}';
    }

    private int d(c cVar) {
        by unitGroupInfo = this.f4138d.getUnitGroupInfo();
        by unitGroupInfo2 = cVar.f4138d.getUnitGroupInfo();
        int iB = com.anythink.core.common.v.k.b(unitGroupInfo, unitGroupInfo2);
        if (iB < 0) {
            return -1;
        }
        if (iB > 0) {
            return 1;
        }
        int i2 = unitGroupInfo.f4113m;
        int i3 = unitGroupInfo2.f4113m;
        if (i2 < i3) {
            return -1;
        }
        if (i2 != i3) {
            return 1;
        }
        if (b() < cVar.b()) {
            return -1;
        }
        return b() != cVar.b() ? 1 : 0;
    }

    public final boolean a() {
        return this.f4142h == 1 && System.currentTimeMillis() - this.f4137c < this.f4143i;
    }

    public final long b() {
        return this.f4137c + this.f4143i;
    }

    public final int c() {
        return this.f4140f;
    }

    public final void a(long j2) {
        this.f4143i = j2;
    }

    public final void b(long j2) {
        this.f4141g = j2;
    }

    public final void c(long j2) {
        this.f4142h = 1;
        this.f4137c = j2;
    }

    public final void a(int i2) {
        by unitGroupInfo;
        ad adVarY;
        this.f4140f = i2;
        if (i2 > 0) {
            this.f4142h = 0;
            ATBaseAdAdapter aTBaseAdAdapter = this.f4138d;
            if (aTBaseAdAdapter == null || (unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo()) == null || (adVarY = unitGroupInfo.Y()) == null) {
                return;
            }
            adVarY.p();
        }
    }

    public final void a(ATBaseAdAdapter aTBaseAdAdapter) {
        this.f4138d = aTBaseAdAdapter;
    }

    public final void a(BaseAd baseAd) {
        this.f4139e = baseAd;
        ATBaseAdAdapter aTBaseAdAdapter = this.f4138d;
        if ((!(aTBaseAdAdapter != null) || !(aTBaseAdAdapter.getUnitGroupInfo() != null)) || this.f4138d.getUnitGroupInfo().bf() != null) {
            return;
        }
        this.f4138d.getUnitGroupInfo().a(baseAd);
    }

    public final void a(String str) {
        this.f4145k = str;
    }
}
