package com.byazt.tgw;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 45})
/* loaded from: classes3.dex */
public class e implements Comparable<e> {

    /* renamed from: a, reason: collision with root package name */
    public String f25812a;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.lyn.q f25813b;
    public int cx;
    public com.byazt.lyn.eb di;

    /* renamed from: e, reason: collision with root package name */
    public int f25814e;
    public int eb;
    public s ec;
    public String gu;
    public String hp;
    public String jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public int f25816k;

    /* renamed from: l, reason: collision with root package name */
    public String f25817l;

    /* renamed from: n, reason: collision with root package name */
    public int f25818n;
    public String ns;

    /* renamed from: o, reason: collision with root package name */
    public int f25819o;

    /* renamed from: q, reason: collision with root package name */
    public int f25820q;

    /* renamed from: s, reason: collision with root package name */
    public int f25821s;
    public Map<String, String> sz;

    /* renamed from: u, reason: collision with root package name */
    public int f25822u;

    /* renamed from: v, reason: collision with root package name */
    public int f25823v;
    public int vv;
    public int xs;
    public String zy;

    /* renamed from: j, reason: collision with root package name */
    public String f25815j = "1";

    /* renamed from: w, reason: collision with root package name */
    public String f25824w = "0";

    public int a() {
        return this.f25818n;
    }

    public boolean as() {
        return com.byazt.di.l.l().jx(this.hp);
    }

    public double b() {
        try {
            return Double.valueOf(this.f25824w).doubleValue() * Double.valueOf(this.f25815j).doubleValue();
        } catch (Exception e2) {
            com.byazt.aw.l.j("WaterFallConfig", "getEcpm error " + e2.toString());
            return 0.0d;
        }
    }

    public String cx() {
        return this.f25812a;
    }

    public int d() {
        return this.f25820q;
    }

    public double di() throws NumberFormatException {
        if (TextUtils.isEmpty(this.f25812a)) {
            return b();
        }
        try {
            double d2 = Double.parseDouble(this.f25812a);
            if (d2 > 0.0d && d2 <= 100.0d) {
                return (b() * d2) / 100.0d;
            }
            return b();
        } catch (Exception unused) {
            return b();
        }
    }

    public boolean dy() {
        return this.eb == 2;
    }

    public int e() {
        return this.f25822u;
    }

    public String eb() {
        return this.gu;
    }

    public int ec() {
        return this.eb;
    }

    public int gu() {
        return this.xs;
    }

    public void hp(int i2) {
        this.f25819o = i2;
    }

    public String hq() {
        return this.zy;
    }

    public boolean j() {
        return this.cx == 1;
    }

    public int jl() {
        return this.vv;
    }

    public com.byazt.lyn.q jx() {
        return this.f25813b;
    }

    public String k() {
        return this.f25815j;
    }

    public boolean ky() {
        return dy() || lv() || pu();
    }

    public com.byazt.lyn.eb l() {
        return this.di;
    }

    public boolean lv() {
        return this.eb == 1;
    }

    public String ms() {
        return this.ns;
    }

    public double n() {
        s sVar = this.ec;
        if (sVar != null && !TextUtils.isEmpty(sVar.w())) {
            try {
                return Double.valueOf(this.ec.w()).doubleValue();
            } catch (Exception e2) {
                com.byazt.aw.l.j("WaterFallConfig", "getServerBiddingShowEcpm error " + e2.toString());
            }
        }
        return -1.0d;
    }

    public double ns() {
        s sVar = this.ec;
        if (sVar != null && !TextUtils.isEmpty(sVar.a())) {
            try {
                return Double.valueOf(this.ec.a()).doubleValue();
            } catch (Exception e2) {
                com.byazt.aw.l.j("WaterFallConfig", "getServerBiddingLoadEcpm error " + e2.toString());
            }
        }
        return -1.0d;
    }

    public Map<String, String> nu() {
        return this.sz;
    }

    public int o() {
        return this.f25821s;
    }

    public boolean pu() {
        return this.eb == 3;
    }

    public int q() {
        return this.f25823v;
    }

    public boolean r() {
        return this.eb == 100;
    }

    public int s() {
        return this.f25816k;
    }

    public boolean sz() {
        int i2 = this.eb;
        return i2 == 0 || i2 == 100;
    }

    public String toString() {
        return "WaterFallConfig{mAdnetworkName='" + this.hp + "', mCustomAdnetworkName='" + this.f25817l + "', mAdnetwokrSlotId='" + this.jx + "', mExchangeRate=" + this.f25815j + ", mSlotEcpm=" + this.f25824w + ", mAdnetworkSlotType=" + this.eb + ", mLoadSort=" + this.f25821s + ", mShowSort=" + this.f25820q + '}';
    }

    public String u() {
        return this.f25817l;
    }

    public s ud() {
        return this.ec;
    }

    public String v() {
        return this.hp;
    }

    public String vv() {
        return this.jx;
    }

    public e w() {
        ConcurrentHashMap concurrentHashMap;
        List<String> listL = com.byazt.zg.q.l();
        e eVar = new e();
        eVar.hp = this.hp;
        com.byazt.zg.q.hp(listL, "mAdnetworkName");
        eVar.jx = this.jx;
        com.byazt.zg.q.hp(listL, "mAdnetwokrSlotId");
        eVar.f25815j = this.f25815j;
        com.byazt.zg.q.hp(listL, "mExchangeRate");
        eVar.f25824w = this.f25824w;
        com.byazt.zg.q.hp(listL, "mEcpm");
        eVar.f25812a = this.f25812a;
        com.byazt.zg.q.hp(listL, "mDiscount");
        eVar.eb = this.eb;
        com.byazt.zg.q.hp(listL, "mAdnetworkSlotType");
        eVar.f25821s = this.f25821s;
        com.byazt.zg.q.hp(listL, "mLoadSort");
        eVar.f25820q = this.f25820q;
        com.byazt.zg.q.hp(listL, "mShowSort");
        eVar.f25814e = this.f25814e;
        com.byazt.zg.q.hp(listL, "mRitType");
        eVar.f25822u = this.f25822u;
        com.byazt.zg.q.hp(listL, "originType");
        eVar.f25818n = this.f25818n;
        com.byazt.zg.q.hp(listL, "mSubAdType");
        eVar.gu = this.gu;
        com.byazt.zg.q.hp(listL, "mLoaderAdapterName");
        eVar.jl = this.jl;
        com.byazt.zg.q.hp(listL, "mWaterfallAbTestParam");
        eVar.zy = this.zy;
        com.byazt.zg.q.hp(listL, "mServerBiddingExtra");
        eVar.f25816k = this.f25816k;
        com.byazt.zg.q.hp(listL, "adExpiredTime");
        eVar.f25823v = this.f25823v;
        com.byazt.zg.q.hp(listL, "ifReuseAds");
        eVar.xs = this.xs;
        com.byazt.zg.q.hp(listL, "ifPreRequest");
        eVar.vv = this.vv;
        com.byazt.zg.q.hp(listL, "ifIsReady");
        eVar.f25819o = this.f25819o;
        com.byazt.zg.q.hp(listL, "isRefresh");
        eVar.f25817l = this.f25817l;
        com.byazt.zg.q.hp(listL, "mCustomAdnetworkName");
        Map<String, String> map = this.sz;
        if (map == null || map.size() <= 0) {
            concurrentHashMap = null;
        } else {
            concurrentHashMap = new ConcurrentHashMap();
            concurrentHashMap.putAll(this.sz);
        }
        eVar.sz = concurrentHashMap;
        com.byazt.zg.q.hp(listL, "mMultilevelSlotCpm");
        eVar.ns = this.ns;
        com.byazt.zg.q.hp(listL, "mCustomAdapterJson");
        eVar.cx = this.cx;
        com.byazt.zg.q.hp(listL, "mAdnRitTimingMode");
        eVar.di = this.di;
        com.byazt.zg.q.hp(listL, "mIntervalFreqctlBean");
        eVar.f25813b = this.f25813b;
        com.byazt.zg.q.hp(listL, "mIntervalPacingBean");
        com.byazt.zg.q.l(listL, "WaterFallConfig");
        return eVar;
    }

    public String wv() {
        return this.jl;
    }

    public boolean xh() {
        return this.eb == 0;
    }

    public String xs() {
        return TextUtils.isEmpty(this.hp) ? this.f25817l : this.hp;
    }

    public int zy() {
        return this.f25814e;
    }

    public void a(int i2) {
        this.f25822u = i2;
    }

    public void e(int i2) {
        this.eb = i2;
    }

    public void eb(int i2) {
        this.xs = i2;
    }

    public void gu(int i2) {
        this.f25821s = i2;
    }

    public int hp() {
        return this.f25819o;
    }

    public void j(int i2) {
        this.f25816k = i2;
    }

    public void jl(int i2) {
        this.f25820q = i2;
    }

    public void jx(int i2) {
        this.f25818n = i2;
    }

    public void l(int i2) {
        this.cx = i2;
    }

    public void q(int i2) {
        this.f25814e = i2;
    }

    public void s(int i2) {
        this.vv = i2;
    }

    public void a(String str) {
        this.f25812a = str;
    }

    public void e(String str) {
        this.ns = str;
    }

    public void eb(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        this.f25824w = str;
    }

    public void hp(com.byazt.lyn.eb ebVar) {
        this.di = ebVar;
    }

    public void j(String str) {
        this.f25817l = str;
    }

    public void jx(String str) {
        this.hp = str;
    }

    public void l(String str) {
        this.f25815j = str;
    }

    public void q(String str) {
        this.zy = str;
    }

    public void s(String str) {
        this.jl = str;
    }

    public void hp(com.byazt.lyn.q qVar) {
        this.f25813b = qVar;
    }

    public void hp(String str) {
        this.gu = str;
    }

    public void hp(s sVar) {
        this.ec = sVar;
    }

    public void hp(Map<String, String> map) {
        this.sz = map;
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(e eVar) {
        if (eVar == null || this.f25821s > eVar.o()) {
            return 1;
        }
        if (this.f25821s < eVar.o()) {
            return -1;
        }
        if (this.f25820q > eVar.d()) {
            return 1;
        }
        return this.f25820q < eVar.d() ? -1 : 0;
    }

    public void w(int i2) {
        this.f25823v = i2;
    }

    public void w(String str) {
        this.jx = str;
    }
}
