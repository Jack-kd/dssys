package com.byazt.tgw;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import com.anythink.core.common.k;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.ca;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public long f25843a;
    public int as;

    /* renamed from: b, reason: collision with root package name */
    public String f25844b;
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f25845d;
    public int di;
    public int dy;
    public long eb;
    public String ec;

    /* renamed from: f, reason: collision with root package name */
    public double f25847f;
    public String hp;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public long f25848j;
    public int jx;
    public JSONObject kg;
    public int ky;

    /* renamed from: l, reason: collision with root package name */
    public int f25850l;
    public int lv;
    public int mp;

    /* renamed from: ms, reason: collision with root package name */
    public com.byazt.lyn.eb f25852ms;

    /* renamed from: n, reason: collision with root package name */
    public int f25853n;
    public int nd;
    public int ns;
    public int nu;

    /* renamed from: o, reason: collision with root package name */
    public long f25854o;
    public int pu;

    /* renamed from: r, reason: collision with root package name */
    public int f25856r;
    public long rz;

    /* renamed from: s, reason: collision with root package name */
    public String f25857s;
    public String sz;

    /* renamed from: u, reason: collision with root package name */
    public int f25858u;
    public double ud;

    /* renamed from: v, reason: collision with root package name */
    public int f25859v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public long f25860w;
    public boolean wv;
    public com.byazt.lyn.q xh;
    public long xs;
    public double yr;

    /* renamed from: q, reason: collision with root package name */
    public List<e> f25855q = new CopyOnWriteArrayList();

    /* renamed from: e, reason: collision with root package name */
    public Map<Integer, List<e>> f25846e = new HashMap();
    public Map<Integer, List<e>> gu = new HashMap();
    public List<Integer> jl = new ArrayList();
    public double zy = -1.0d;

    /* renamed from: k, reason: collision with root package name */
    public double f25849k = -1.0d;

    /* renamed from: m, reason: collision with root package name */
    public int f25851m = 1000;
    public int hd = 0;
    public int zx = 2;

    /* renamed from: y, reason: collision with root package name */
    public int f25861y = 0;
    public int vq = 0;
    public long ea = 0;
    public int su = 0;
    public Map<String, Object> rv = new HashMap();

    public double a() {
        return this.f25847f;
    }

    public long as() {
        return this.f25860w;
    }

    public int b() {
        return this.cx;
    }

    public long cx() {
        return this.f25854o;
    }

    public double d() {
        return this.f25849k;
    }

    public int di() {
        return this.f25858u;
    }

    public boolean dy() {
        return this.f25845d;
    }

    public int e() {
        int iMin = Math.min(this.f25851m, 1000);
        if (iMin <= 0) {
            return 1000;
        }
        return iMin;
    }

    public long eb() {
        return this.rz;
    }

    /* renamed from: ec, reason: merged with bridge method [inline-methods] */
    public l clone() {
        l lVar = new l();
        lVar.hp = this.hp;
        lVar.f25850l = this.f25850l;
        lVar.jx = this.jx;
        lVar.f25848j = this.f25848j;
        lVar.f25860w = this.f25860w;
        lVar.f25843a = this.f25843a;
        lVar.eb = this.eb;
        lVar.f25857s = this.f25857s;
        lVar.xs = this.xs;
        lVar.cx = this.cx;
        lVar.sz = this.sz;
        lVar.vv = this.vv;
        lVar.ec = this.ec;
        lVar.f25853n = this.f25853n;
        lVar.ns = this.ns;
        lVar.f25844b = this.f25844b;
        lVar.di = this.di;
        lVar.f25854o = this.f25854o;
        lVar.hq = this.hq;
        lVar.ud = this.ud;
        lVar.lv = this.lv;
        lVar.f25856r = this.f25856r;
        lVar.pu = this.pu;
        lVar.nu = this.nu;
        lVar.dy = this.dy;
        lVar.as = this.as;
        lVar.f25852ms = this.f25852ms;
        lVar.xh = this.xh;
        lVar.ky = this.ky;
        lVar.f25845d = this.f25845d;
        lVar.wv = this.wv;
        lVar.kg = this.kg;
        lVar.zy = this.zy;
        lVar.f25858u = this.f25858u;
        lVar.f25855q = new CopyOnWriteArrayList(this.f25855q);
        lVar.f25846e = new HashMap(this.f25846e);
        lVar.f25859v = this.f25859v;
        lVar.jl = new ArrayList(this.jl);
        lVar.rv = new HashMap(this.rv);
        lVar.gu = new HashMap(this.gu);
        lVar.mp = this.mp;
        lVar.f25851m = this.f25851m;
        lVar.f25849k = this.f25849k;
        lVar.rz = this.rz;
        lVar.f25847f = this.f25847f;
        lVar.yr = this.yr;
        lVar.hd = this.hd;
        lVar.zx = this.zx;
        lVar.f25861y = this.f25861y;
        lVar.vq = this.vq;
        lVar.su = this.su;
        lVar.ea = this.ea;
        return lVar;
    }

    public int f() {
        return this.dy;
    }

    public com.byazt.lyn.eb gu() {
        return this.f25852ms;
    }

    public int hd() {
        return this.lv;
    }

    public int hp() {
        return this.su;
    }

    public long hq() {
        return this.xs;
    }

    public int j() {
        return this.nd;
    }

    public com.byazt.lyn.q jl() {
        return this.xh;
    }

    public int jx() {
        return this.vq;
    }

    public boolean k() {
        return this.lv == 3;
    }

    public long kg() {
        return this.f25843a;
    }

    public String ky() {
        return this.hp;
    }

    public long l() {
        return this.ea;
    }

    public boolean lv() {
        return this.wv;
    }

    public int m() {
        return this.nu;
    }

    public long mp() {
        return this.eb;
    }

    public long ms() {
        return this.f25848j;
    }

    public double n() {
        return this.ud;
    }

    public String nd() {
        return this.sz;
    }

    public String ns() {
        return this.f25844b;
    }

    public String nu() {
        return this.ec;
    }

    public double o() {
        return this.zy;
    }

    public List<Integer> pu() {
        return this.jl;
    }

    public int q() {
        return this.mp;
    }

    public String r() {
        return this.f25857s;
    }

    public List<e> rz() {
        return this.f25855q;
    }

    public Map<String, Object> s() {
        return this.rv;
    }

    public int sz() {
        return this.pu;
    }

    public String toString() {
        return "AdsenseRitConfig{mRitId='" + this.hp + "', mIsSpeed=" + k() + ", mHasServerbidding=" + this.f25845d + ", mHasClientOrMultiLevel=" + this.wv + ", mRitType=" + this.f25850l + ", mLookType=" + this.jx + ", mMinWaitTime=" + this.f25848j + ", mLayerTimeOut=" + this.f25860w + ", mTotalTimeOut=" + this.f25843a + ", mWaterFallConfigList=" + this.f25855q + ", mWaterFallConfMap=" + this.f25846e + ", mLoadSortLevelList=" + this.jl + ", mCurrentCommonAdMaxCpm=" + this.zy + ", mTotalLoadLevelCount=" + this.f25859v + ", mTotalWaterFallCount=" + this.f25858u + ", mWaterfallAbTestParam=" + this.sz + ", mServerSideVerifyPreRequestTime=" + this.nu + ", mServerSideVerifyRewardType=" + this.dy + '}';
    }

    public int u() {
        return this.hd;
    }

    public int ud() {
        return this.vv;
    }

    public boolean v() {
        return this.as == 1;
    }

    public l vv() {
        List<String> listHp = com.byazt.zg.q.hp();
        l lVar = new l();
        lVar.hp = this.hp;
        com.byazt.zg.q.hp(listHp, "mRitId");
        lVar.f25850l = this.f25850l;
        com.byazt.zg.q.hp(listHp, "mRitType");
        lVar.jx = this.jx;
        com.byazt.zg.q.hp(listHp, "mLookType");
        lVar.f25848j = this.f25848j;
        com.byazt.zg.q.hp(listHp, "mMinWaitTime");
        lVar.f25860w = this.f25860w;
        com.byazt.zg.q.hp(listHp, "mLayerTimeOut");
        lVar.f25843a = this.f25843a;
        com.byazt.zg.q.hp(listHp, "mTotalTimeOut");
        lVar.eb = this.eb;
        com.byazt.zg.q.hp(listHp, "mCacheTimeOut");
        lVar.f25857s = this.f25857s;
        com.byazt.zg.q.hp(listHp, "mVersion");
        lVar.xs = this.xs;
        com.byazt.zg.q.hp(listHp, "mWaterFallId");
        lVar.cx = this.cx;
        com.byazt.zg.q.hp(listHp, "reqType");
        lVar.sz = this.sz;
        com.byazt.zg.q.hp(listHp, "mWaterfallAbTestParam");
        lVar.vv = this.vv;
        com.byazt.zg.q.hp(listHp, "segmentId");
        lVar.ec = this.ec;
        com.byazt.zg.q.hp(listHp, "segmentVersion");
        lVar.f25853n = this.f25853n;
        com.byazt.zg.q.hp(listHp, "preLoadSortControl");
        lVar.ns = this.ns;
        com.byazt.zg.q.hp(listHp, "preShowSortControl");
        lVar.f25844b = this.f25844b;
        com.byazt.zg.q.hp(listHp, "waterfallExtra");
        lVar.di = this.di;
        com.byazt.zg.q.hp(listHp, "mMultilevelAfterP");
        lVar.f25854o = this.f25854o;
        com.byazt.zg.q.hp(listHp, "mMultilevelTimeOut");
        lVar.hq = this.hq;
        com.byazt.zg.q.hp(listHp, "mRefreshTime");
        lVar.ud = this.ud;
        com.byazt.zg.q.hp(listHp, "mBidFloor");
        lVar.lv = this.lv;
        com.byazt.zg.q.hp(listHp, "mParallelType");
        lVar.f25856r = this.f25856r;
        com.byazt.zg.q.hp(listHp, "mReqParallelNum");
        lVar.pu = this.pu;
        com.byazt.zg.q.hp(listHp, "mAdCount");
        lVar.nu = this.nu;
        com.byazt.zg.q.hp(listHp, "serverSideVerifyPreRequestTime");
        lVar.dy = this.dy;
        com.byazt.zg.q.hp(listHp, "serverSideRewardType");
        lVar.as = this.as;
        com.byazt.zg.q.hp(listHp, "mAdPrime");
        lVar.zx = this.zx;
        com.byazt.zg.q.hp(listHp, "mRefreshNum");
        lVar.hd = this.hd;
        com.byazt.zg.q.hp(listHp, "mIsRefresh");
        lVar.f25852ms = this.f25852ms;
        com.byazt.zg.q.hp(listHp, "mIntervalFreqctlBean");
        lVar.xh = this.xh;
        com.byazt.zg.q.hp(listHp, "mIntervalPacingBean");
        lVar.ky = this.ky;
        com.byazt.zg.q.hp(listHp, "mWaterFallTimingMode");
        lVar.rz = this.rz;
        com.byazt.zg.q.hp(listHp, "mReqInterval");
        lVar.f25847f = this.f25847f;
        com.byazt.zg.q.hp(listHp, "mTotalTimeoutRate");
        lVar.yr = this.yr;
        com.byazt.zg.q.hp(listHp, "mLayerTimeoutRate");
        lVar.rv = new HashMap(this.rv);
        lVar.mp = this.mp;
        lVar.f25851m = this.f25851m;
        lVar.f25849k = this.f25849k;
        lVar.gu = new HashMap(this.gu);
        com.byazt.zg.q.l(listHp, "AdsenseRitConfig");
        lVar.f25861y = this.f25861y;
        com.byazt.zg.q.hp(listHp, "mBehaviorTTL");
        lVar.vq = this.vq;
        com.byazt.zg.q.hp(listHp, "mIsSamste");
        lVar.su = this.su;
        com.byazt.zg.q.hp(listHp, "fillStrategy");
        return lVar;
    }

    public double w() {
        return this.yr;
    }

    public Map<Integer, List<e>> wv() {
        HashMap map = new HashMap();
        Map<Integer, List<e>> map2 = this.f25846e;
        if (map2 != null) {
            for (Map.Entry<Integer, List<e>> entry : map2.entrySet()) {
                List<e> value = entry.getValue();
                Integer key = entry.getKey();
                key.intValue();
                map.put(key, new ArrayList(value));
            }
        }
        return map;
    }

    public int xh() {
        return this.f25850l;
    }

    public int xs() {
        int i2 = this.zx;
        if (i2 < 2) {
            return 2;
        }
        return i2;
    }

    public int y() {
        return this.f25861y;
    }

    public Map<Integer, List<e>> yr() {
        return this.gu;
    }

    public int zx() {
        int i2 = this.f25856r;
        if (i2 <= 0) {
            return 1;
        }
        return i2;
    }

    public boolean zy() {
        return this.ky == 1;
    }

    private static Long b(int i2) {
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                return 5000L;
            }
            if (i2 != 5) {
                return (i2 == 7 || i2 == 8) ? 600000L : 10000L;
            }
        }
        return 10000L;
    }

    private static Long cx(int i2) {
        return (i2 == 1 || !(i2 == 2 || i2 == 3 || i2 != 5)) ? 1000L : 0L;
    }

    public void a(int i2) {
        this.as = i2;
    }

    public void e(int i2) {
        this.pu = i2;
    }

    public void eb(int i2) {
        this.ky = i2;
    }

    public int gu(int i2) {
        if (q() == 2) {
            int iHp = com.byazt.ney.j.hp(this.hp, i2, s());
            if (this.hq != 0 && iHp != 0) {
                return iHp;
            }
        }
        return this.hq;
    }

    public void hp(int i2) {
        this.su = i2;
    }

    public void j(int i2) {
        this.mp = i2;
    }

    public void jl(int i2) {
        this.hq = i2;
    }

    public void jx(int i2) {
        this.nd = i2;
    }

    public void k(int i2) {
        this.cx = i2;
    }

    public void l(int i2) {
        this.vq = i2;
    }

    public void n(int i2) {
        this.f25856r = i2;
    }

    public void ns(int i2) {
        this.f25861y = i2;
    }

    public void q(int i2) {
        this.zx = i2;
    }

    public void s(int i2) {
        this.hd = i2;
    }

    public void sz(int i2) {
        this.lv = i2;
    }

    public void u(int i2) {
        this.f25850l = i2;
    }

    public void v(int i2) {
        this.vv = i2;
    }

    public void w(int i2) {
        this.f25851m = i2;
    }

    public void xs(int i2) {
        this.jx = i2;
    }

    public void zy(int i2) {
        this.di = i2;
    }

    public void a(long j2) {
        this.f25860w = j2;
    }

    public void eb(long j2) {
        this.f25843a = j2;
    }

    public void hp(long j2) {
        this.ea = j2;
    }

    public void j(double d2) {
        this.zy = d2;
    }

    public void jx(double d2) {
        this.ud = d2;
    }

    public void l(double d2) {
        if (d2 < 0.01d || d2 > 1.0d) {
            d2 = 0.01d;
        }
        this.f25847f = d2;
    }

    public void s(long j2) {
        this.eb = j2;
    }

    public void w(double d2) {
        this.f25849k = d2;
    }

    public static l eb(String str) {
        if (TextUtils.isEmpty(str)) {
            com.byazt.aw.l.hp("AdsenseRitConfig", "TMe jsonStr is null or empty");
            return null;
        }
        try {
            return hp(new JSONObject(str), true);
        } catch (JSONException unused) {
            return null;
        }
    }

    public e a(String str) {
        List<e> list;
        if (!TextUtils.isEmpty(str) && (list = this.f25855q) != null && list.size() != 0) {
            for (e eVar : this.f25855q) {
                if (str.equals(eVar.vv())) {
                    return eVar;
                }
            }
        }
        return null;
    }

    public void hp(double d2) {
        if (d2 < 0.1d || d2 > 1.0d) {
            d2 = 0.1d;
        }
        this.yr = d2;
    }

    public void j(long j2) {
        this.xs = j2;
    }

    public void jx(long j2) {
        this.f25854o = j2;
    }

    public void l(long j2) {
        if (j2 < 1000) {
            j2 = 1000;
        }
        this.rz = j2;
    }

    public void w(long j2) {
        this.f25848j = j2;
    }

    public void hp(com.byazt.lyn.eb ebVar) {
        this.f25852ms = ebVar;
    }

    public void j(String str) {
        this.hp = str;
    }

    public void jx(String str) {
        this.f25857s = str;
    }

    public void l(String str) {
        this.ec = str;
    }

    public void w(String str) {
        this.sz = str;
    }

    private void j(List<e> list) {
        int iO;
        List<e> arrayList;
        if (list == null) {
            return;
        }
        this.gu.clear();
        int i2 = -1000;
        for (int i3 = 0; i3 < list.size(); i3++) {
            e eVar = list.get(i3);
            if (eVar != null) {
                if (eVar.o() != i2) {
                    arrayList = new ArrayList<>();
                    iO = eVar.o();
                } else {
                    iO = i2;
                    arrayList = this.gu.get(Integer.valueOf(i2));
                }
                if (arrayList != null) {
                    arrayList.add(eVar);
                    this.gu.put(Integer.valueOf(iO), arrayList);
                }
                i2 = iO;
            }
        }
    }

    private void jx(List<e> list) {
        int iO;
        List<e> arrayList;
        if (list == null) {
            return;
        }
        this.gu.clear();
        int i2 = -1000;
        for (int i3 = 0; i3 < list.size(); i3++) {
            e eVar = list.get(i3);
            if (eVar != null) {
                if (eVar.ec() == 0) {
                    arrayList = new ArrayList<>();
                    iO = eVar.d();
                } else if (eVar.o() != i2) {
                    arrayList = new ArrayList<>();
                    iO = eVar.o();
                } else {
                    iO = i2;
                    arrayList = this.gu.get(Integer.valueOf(i2));
                }
                if (arrayList != null) {
                    arrayList.add(eVar);
                    this.gu.put(Integer.valueOf(iO), arrayList);
                }
                i2 = iO;
            }
        }
    }

    public void hp(com.byazt.lyn.q qVar) {
        this.xh = qVar;
    }

    public void l(boolean z2) {
        this.wv = z2;
    }

    public void hp(String str) {
        this.f25844b = str;
    }

    public void l(List<e> list) {
        int iO;
        List<e> arrayList;
        jx(list);
        this.f25855q = list;
        if (list == null) {
            return;
        }
        this.f25859v = 0;
        this.f25846e.clear();
        this.jl.clear();
        this.f25858u = this.f25855q.size();
        int i2 = -1000;
        for (int i3 = 0; i3 < this.f25855q.size(); i3++) {
            e eVar = list.get(i3);
            if (eVar != null) {
                if (eVar.ec() == 0) {
                    this.f25859v++;
                    arrayList = new ArrayList<>();
                    iO = eVar.d();
                } else if (eVar.o() != i2) {
                    this.f25859v++;
                    arrayList = new ArrayList<>();
                    iO = eVar.o();
                } else {
                    iO = i2;
                    arrayList = this.f25846e.get(Integer.valueOf(i2));
                }
                if (arrayList != null) {
                    arrayList.add(eVar);
                    this.f25846e.put(Integer.valueOf(iO), arrayList);
                }
                i2 = iO;
            }
        }
        this.jl.addAll(this.f25846e.keySet());
    }

    public void hp(boolean z2) {
        this.f25845d = z2;
    }

    public void hp(List<e> list) {
        int iO;
        List<e> arrayList;
        j(list);
        this.f25855q = list;
        if (list == null) {
            return;
        }
        this.f25859v = 0;
        this.f25846e.clear();
        this.jl.clear();
        this.f25858u = this.f25855q.size();
        int i2 = -1000;
        for (int i3 = 0; i3 < this.f25855q.size(); i3++) {
            e eVar = list.get(i3);
            if (eVar != null) {
                if (eVar.o() != i2) {
                    this.f25859v++;
                    arrayList = new ArrayList<>();
                    iO = eVar.o();
                } else {
                    iO = i2;
                    arrayList = this.f25846e.get(Integer.valueOf(i2));
                }
                if (arrayList != null) {
                    arrayList.add(eVar);
                    this.f25846e.put(Integer.valueOf(iO), arrayList);
                }
                i2 = iO;
            }
        }
        this.jl.addAll(this.f25846e.keySet());
    }

    public void hp(JSONObject jSONObject) {
        this.kg = jSONObject;
    }

    public static l hp(JSONObject jSONObject, boolean z2) throws JSONException {
        String str;
        JSONObject jSONObject2;
        e eVar;
        String str2;
        int i2;
        String str3;
        String str4 = null;
        if (jSONObject == null) {
            return null;
        }
        l lVar = new l();
        lVar.hp(jSONObject);
        lVar.jx(jSONObject.optDouble("bid_floor", 0.0d));
        lVar.j(jSONObject.optString("rit_id"));
        lVar.jx(jSONObject.optString(cl.f49059n));
        lVar.j(jSONObject.optLong("waterfall_id", -1L));
        lVar.u(jSONObject.optInt("rit_type"));
        lVar.xs(jSONObject.optInt("look_type", 1));
        lVar.w(jSONObject.optLong("time_min", cx(lVar.xh()).longValue()));
        lVar.a(jSONObject.optLong("layer_time_out", 2000L));
        lVar.eb(jSONObject.optLong("total_time_out", b(lVar.xh()).longValue()));
        lVar.jx(jSONObject.optLong("multilevel_time_out", 2000L));
        lVar.s(jSONObject.optLong("cache_time_out", 3000L));
        lVar.k(jSONObject.optInt("req_type", 0));
        com.byazt.gp.j.hp().hp(lVar.ky(), lVar.b());
        lVar.v(jSONObject.optInt("segment_id"));
        lVar.l(jSONObject.optString("segment_version"));
        lVar.hp(jSONObject.optString("waterfall_extra"));
        lVar.zy(jSONObject.optInt("multilevel_after_p", 1));
        lVar.jl(jSONObject.optInt("refresh_time", 0));
        lVar.s(jSONObject.optInt("is_refresh", 0));
        lVar.q(jSONObject.optInt("refresh_num", 2));
        lVar.sz(jSONObject.optInt("parallel_type", 1));
        lVar.a(jSONObject.optInt("is_adprime", 0));
        lVar.n(jSONObject.optInt("req_parallel_num", 1));
        lVar.vv(jSONObject.optInt("reward_start_time", ca.f49002b));
        lVar.ec(jSONObject.optInt("reward_callback_type"));
        lVar.l(jSONObject.optLong("req_interval", 1000L));
        lVar.l(jSONObject.optDouble("total_time_rate", 0.01d));
        lVar.hp(jSONObject.optDouble("layer_time_rate", 0.1d));
        lVar.jx(jSONObject.optInt("support_render_control", 0));
        lVar.ns(jSONObject.optInt("behavior_ttl"));
        lVar.hp(jSONObject.optLong("save_time"));
        int iOptInt = jSONObject.optInt(PointParamKey.AD_COUNT, 0);
        if (iOptInt < 0) {
            iOptInt = 0;
        } else if (iOptInt > 3) {
            iOptInt = 3;
        }
        lVar.e(iOptInt);
        lVar.j(jSONObject.optInt("group_type"));
        lVar.w(jSONObject.optInt("bidding_time_out", 1000));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("waterfall_abtest");
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("waterfall_ab_version");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString.trim()) || TextUtils.equals(strOptString.trim(), "null")) {
                jSONObjectOptJSONObject.remove("waterfall_ab_version");
            }
            lVar.w(jSONObjectOptJSONObject.toString());
        }
        int iOptInt2 = jSONObject.optInt("waterfall_timing_mode");
        lVar.eb(iOptInt2);
        if (lVar.zy()) {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("waterfall_show_pacing_rule");
            if (jSONObjectOptJSONObject2 == null) {
                str3 = "waterfall_show_rules_version";
            } else {
                String str5 = lVar.ky();
                String strOptString2 = jSONObject.optString("waterfall_show_rules_version");
                String strOptString3 = jSONObjectOptJSONObject2.optString("waterfall_show_pacing");
                String strOptString4 = jSONObjectOptJSONObject2.optString("waterfall_show_pacing_rule_id");
                str3 = "waterfall_show_rules_version";
                lVar.hp(new com.byazt.lyn.q(str5, "", strOptString2, "", iOptInt2, strOptString3, strOptString4));
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("waterfall_show_freqctl_rules");
            lVar.hp(new com.byazt.lyn.eb(lVar.ky(), "", jSONObject.optString(str3), "", iOptInt2, jSONArrayOptJSONArray == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : jSONArrayOptJSONArray.toString()));
        }
        lVar.l(jSONObject.optInt("is_smaste", 0));
        lVar.hp(jSONObject.optInt("fill_strategy", 0));
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("adn_rit_conf");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray2 != null) {
            int i3 = 0;
            while (i3 < jSONArrayOptJSONArray2.length()) {
                try {
                    jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i3);
                    eVar = new e();
                    eVar.jx(jSONObject2.optString(MediationConstant.EXTRA_ADN_NAME));
                    if (com.byazt.di.l.l().jx(jSONObject2.optString(MediationConstant.EXTRA_ADN_NAME))) {
                        eVar.j(jSONObject2.optString("custom_adn_name"));
                    } else {
                        eVar.j(str4);
                    }
                    eVar.s(lVar.nd());
                    String strOptString5 = jSONObject2.optString("adn_slot_id");
                    eVar.w(strOptString5);
                    if (!z2 && !TextUtils.isEmpty(strOptString5) && !TextUtils.isEmpty(lVar.ky())) {
                        com.byazt.mey.j.f22962l.put(strOptString5, lVar.ky());
                    }
                    eVar.hp(jSONObject2.optInt("is_refresh", 0));
                    int iOptInt3 = jSONObject2.optInt("freqctl_timing_mode");
                    eVar.l(iOptInt3);
                    if (eVar.j()) {
                        JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("show_pacing_rule");
                        if (jSONObjectOptJSONObject3 != null) {
                            str = str4;
                            try {
                                StringBuilder sb = new StringBuilder();
                                try {
                                    sb.append(lVar.ky());
                                    str2 = strOptString5;
                                    i2 = iOptInt3;
                                    eVar.hp(new com.byazt.lyn.q(sb.toString(), str2, "", "", i2, jSONObjectOptJSONObject3.optString(k.f5362G), jSONObjectOptJSONObject3.optString(a.C0051a.f3218o)));
                                } catch (JSONException unused) {
                                }
                            } catch (JSONException unused2) {
                            }
                        } else {
                            str = str4;
                            str2 = strOptString5;
                            i2 = iOptInt3;
                        }
                        JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("show_freqctl_rules");
                        eVar.hp(new com.byazt.lyn.eb(lVar.ky(), str2, "", jSONObject2.optString("show_freqctl_rules_version"), i2, jSONArrayOptJSONArray3 == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : jSONArrayOptJSONArray3.toString()));
                    } else {
                        str = str4;
                    }
                    eVar.e(jSONObject2.optInt("req_bidding_type"));
                    eVar.eb(jSONObject2.optString("slot_cpm", "0"));
                    eVar.a(jSONObject2.optString("discount"));
                    eVar.l(jSONObject2.optString("exchange_rate"));
                    eVar.gu(jSONObject2.optInt("load_sort"));
                    eVar.jl(jSONObject2.optInt("show_sort"));
                    eVar.j(jSONObject2.optInt("ad_expired_time", 1800000));
                    com.byazt.gp.j.hp().hp(lVar.ky(), eVar.vv(), eVar.s());
                    com.byazt.xob.hp.hp().hp(lVar.ky(), eVar.vv(), eVar.s());
                    eVar.s(jSONObject2.optInt("if_is_ready", 1));
                    com.byazt.gp.j.hp().l(lVar.ky(), eVar.vv(), eVar.jl());
                    com.byazt.xob.hp.hp().l(lVar.ky(), eVar.vv(), eVar.jl());
                    eVar.w(jSONObject2.optInt("if_reuse_ads", 0));
                    com.byazt.xob.hp.hp().jx(lVar.ky(), eVar.vv(), eVar.q());
                    eVar.eb(jSONObject2.optInt("if_pre_request", 0));
                    com.byazt.xob.hp.hp().a(lVar.ky(), eVar.vv(), eVar.gu());
                    eVar.q(lVar.xh());
                    eVar.hp("%1$s%2$sAdapter");
                    eVar.a(jSONObject2.optInt("origin_type"));
                    eVar.jx(jSONObject2.optInt("sub_adtype"));
                    eVar.hp(l(jSONObject2.optJSONObject("multilevel_slot_cpm")));
                } catch (JSONException unused3) {
                    str = str4;
                }
                if (eVar.ec() == 1) {
                    lVar.l(true);
                } else if (eVar.ec() == 2) {
                    lVar.hp(true);
                } else {
                    if (eVar.ec() == 3) {
                        lVar.l(true);
                    } else if (eVar.ec() != 100) {
                        if (lVar.o() == -1.0d || lVar.o() < eVar.b()) {
                            lVar.j(eVar.b());
                        }
                        if (lVar.d() == -1.0d || lVar.d() > eVar.b()) {
                            lVar.w(eVar.b());
                        }
                    }
                    eVar.e(jSONObject2.optString("customer_adapter_json"));
                    arrayList.add(eVar);
                    i3++;
                    str4 = str;
                }
                eVar.e(jSONObject2.optString("customer_adapter_json"));
                arrayList.add(eVar);
                i3++;
                str4 = str;
            }
        }
        Collections.sort(arrayList);
        if (lVar.k()) {
            lVar.l(arrayList);
        } else {
            lVar.hp(arrayList);
        }
        return lVar;
    }

    private static Map<String, String> l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys == null) {
                return null;
            }
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString = jSONObject.optString(next);
                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(strOptString)) {
                    map.put(next, strOptString);
                }
            }
            if (map.size() == 0) {
                return null;
            }
            return map;
        } catch (Exception unused) {
            return null;
        }
    }

    public void ec(int i2) {
        this.dy = i2;
    }

    public void vv(int i2) {
        this.nu = i2;
    }
}
