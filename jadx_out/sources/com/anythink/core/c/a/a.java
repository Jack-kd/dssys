package com.anythink.core.c.a;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.r;
import com.anythink.core.common.d.s;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.m.f;
import com.anythink.core.common.o;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.l;
import com.anythink.core.e.d;
import com.anythink.core.e.m;
import com.baidu.mobads.sdk.internal.aw;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class a extends AbstractC1114b {

    /* renamed from: K, reason: collision with root package name */
    private static final String f1872K = "a";

    /* renamed from: a, reason: collision with root package name */
    public static final int f1873a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f1874b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final String f1875c = "ex_pkg";

    /* renamed from: A, reason: collision with root package name */
    String f1876A;

    /* renamed from: B, reason: collision with root package name */
    JSONObject f1877B;

    /* renamed from: C, reason: collision with root package name */
    public long f1878C;

    /* renamed from: D, reason: collision with root package name */
    public long f1879D;

    /* renamed from: E, reason: collision with root package name */
    public long f1880E;

    /* renamed from: F, reason: collision with root package name */
    public long f1881F;

    /* renamed from: G, reason: collision with root package name */
    public long f1882G;

    /* renamed from: H, reason: collision with root package name */
    public long f1883H;

    /* renamed from: I, reason: collision with root package name */
    public int f1884I;

    /* renamed from: J, reason: collision with root package name */
    public long f1885J;

    /* renamed from: L, reason: collision with root package name */
    private int f1886L;

    /* renamed from: M, reason: collision with root package name */
    private final String f1887M = m.a.f8934j;

    /* renamed from: N, reason: collision with root package name */
    private final String f1888N = "request_id";

    /* renamed from: O, reason: collision with root package name */
    private final String f1889O = "ch_info";

    /* renamed from: P, reason: collision with root package name */
    private final String f1890P = f.bq;

    /* renamed from: Q, reason: collision with root package name */
    private final String f1891Q = "np";

    /* renamed from: R, reason: collision with root package name */
    private final String f1892R = "hb_size";

    /* renamed from: S, reason: collision with root package name */
    private final String f1893S = "last_wf";

    /* renamed from: T, reason: collision with root package name */
    private final String f1894T = "co";

    /* renamed from: U, reason: collision with root package name */
    private final String f1895U = m.a.f8917S;

    /* renamed from: V, reason: collision with root package name */
    private final String f1896V = aw.f11060a;

    /* renamed from: W, reason: collision with root package name */
    private final String f1897W = f.bj;

    /* renamed from: X, reason: collision with root package name */
    private final String f1898X = "last_win";

    /* renamed from: Y, reason: collision with root package name */
    private final String f1899Y = "last_m_data";

    /* renamed from: Z, reason: collision with root package name */
    private int f1900Z;
    private ATAdRequest aa;
    private long ab;
    private long ac;

    /* renamed from: l, reason: collision with root package name */
    String f1901l;

    /* renamed from: m, reason: collision with root package name */
    String f1902m;

    /* renamed from: n, reason: collision with root package name */
    String f1903n;

    /* renamed from: o, reason: collision with root package name */
    String f1904o;

    /* renamed from: p, reason: collision with root package name */
    String f1905p;

    /* renamed from: q, reason: collision with root package name */
    String f1906q;

    /* renamed from: r, reason: collision with root package name */
    String f1907r;

    /* renamed from: s, reason: collision with root package name */
    String f1908s;

    /* renamed from: t, reason: collision with root package name */
    int f1909t;

    /* renamed from: u, reason: collision with root package name */
    int f1910u;

    /* renamed from: v, reason: collision with root package name */
    int f1911v;

    /* renamed from: w, reason: collision with root package name */
    String f1912w;

    /* renamed from: x, reason: collision with root package name */
    String f1913x;

    /* renamed from: y, reason: collision with root package name */
    String f1914y;

    /* renamed from: z, reason: collision with root package name */
    String f1915z;

    public a(String str, String str2, String str3, List<JSONObject> list, int i2, m mVar) {
        this.f1900Z = 0;
        this.f1901l = str3;
        this.f1904o = str;
        this.f1905p = str2;
        this.f1886L = i2;
        JSONArray jSONArray = new JSONArray();
        Iterator<JSONObject> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        this.f1902m = j.a(jSONArray.toString().getBytes());
        if (mVar != null) {
            this.f1909t = mVar.ah();
            this.f1910u = mVar.ax();
            this.f1900Z = mVar.aT();
        }
    }

    private void b(int i2) {
        this.f1911v = i2;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        if (this.f1886L == 0) {
            map.put("Accept-Encoding", "gzip");
        }
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        return k().getBytes();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        m mVarB;
        JSONObject jSONObjectAN;
        Object obj;
        JSONObject jSONObjectA;
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectI.put("app_id", s.b().p());
            jSONObjectI.put(f.bn, this.f1905p);
            jSONObjectI.put("session_id", s.b().g(this.f1905p));
            jSONObjectI.put("t_g_id", this.f1909t);
            jSONObjectI.put("gro_id", this.f1910u);
            String strD = s.b().D();
            if (!TextUtils.isEmpty(strD)) {
                jSONObjectI.put("sy_id", strD);
            }
            String strE = s.b().E();
            if (TextUtils.isEmpty(strE)) {
                s.b().k(s.b().C());
                jSONObjectI.put("bk_id", s.b().C());
            } else {
                jSONObjectI.put("bk_id", strE);
            }
            jSONObjectI.put("deny", l.m(s.b().g()));
            if (this.f1886L == 0) {
                jSONObjectI.put("misk_spt", o.a().c());
                o.a();
                jSONObjectI.put("misk_pt_det", o.b());
            }
            JSONObject jSONObjectA2 = f.a(this.f1905p);
            if (jSONObjectA2 != null) {
                jSONObjectI.put("customs", jSONObjectA2);
            }
            f.a(jSONObjectI);
            com.anythink.core.e.o oVarA = com.anythink.core.e.o.a(s.b().g());
            String str = this.f1905p;
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (!TextUtils.isEmpty(str) && (mVarB = oVarA.b(str)) != null && (jSONObjectAN = mVarB.aN()) != null) {
                        jSONObjectI.put(m.a.aa, jSONObjectAN);
                    }
                } catch (Exception unused) {
                }
            }
            if (this.f1900Z > 0 && (jSONObjectA = com.anythink.core.d.b.a().a(this.f1905p, this.f1900Z)) != null) {
                jSONObjectI.put(f.as, jSONObjectA);
            }
            if (ATAdxSetting.getInstance().isAdxNetworkMode(this.f1905p)) {
                jSONObjectI.put(f.bh, 1);
                jSONObjectI.put("adap_c", this.f1877B);
            }
            boolean zB = com.anythink.core.common.v.o.b();
            com.anythink.core.e.b bVarB = d.a(s.b().g()).b(s.b().p());
            jSONObjectI.put("coppa", (bVarB.t() == 2 && zB) ? 1 : 2);
            jSONObjectI.put(GlobalSetting.CCPA, bVarB.s() == 3 ? 1 : 2);
            jSONObjectI.put("bid_ver", 1);
            r rVarC = s.b().c();
            if (rVarC != null) {
                rVarC.fillRequestDataForDl(jSONObjectI);
            }
            long j2 = this.f1878C;
            if (j2 > 0) {
                jSONObjectI.put("l_t_bstart", j2);
            }
            long j3 = this.f1879D;
            if (j3 > 0) {
                jSONObjectI.put("l_t_breq", j3);
            }
            long j4 = this.f1880E;
            if (j4 > 0) {
                jSONObjectI.put("h_s_t", j4);
            }
            long j5 = this.f1881F;
            if (j5 > 0) {
                jSONObjectI.put("h_b_to", j5);
            }
            long j6 = this.f1882G;
            if (j6 > 0) {
                jSONObjectI.put(m.a.f8900B, j6);
            }
            long j7 = this.f1883H;
            if (j7 > 0) {
                jSONObjectI.put("sp_to", j7);
            }
            Pair<Integer, List<String>> pairI = s.b().I();
            if (pairI != null && (obj = pairI.first) != null) {
                jSONObjectI.put(f.bC, ((Integer) obj).intValue());
            }
            String strE2 = bVarB.e();
            if (!TextUtils.isEmpty(strE2)) {
                jSONObjectI.put(f.bD, strE2);
            }
            ATAdRequest aTAdRequest = this.aa;
            if (aTAdRequest != null) {
                jSONObjectI.put(f.bB, aTAdRequest.getChannelSource());
            } else {
                jSONObjectI.put(f.bB, s.b().F());
            }
        } catch (Exception unused2) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject j() {
        JSONObject jSONObjectJ = super.j();
        try {
            jSONObjectJ.put("p_ls", this.f1884I);
            jSONObjectJ.put("p_lt_f_i", this.f1885J);
        } catch (Throwable unused) {
        }
        return jSONObjectJ;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() throws JSONException {
        String string = i().toString();
        String string2 = j().toString();
        HashMap map = new HashMap();
        String strA = j.a(string);
        String strA2 = j.a(string2);
        map.put("p", strA);
        map.put(f.f5774X, strA2);
        map.put(m.a.f8934j, this.f1902m);
        map.put("request_id", this.f1901l);
        int i2 = this.f1911v;
        if (i2 > 0) {
            map.put("hb_size", Integer.valueOf(i2));
        }
        if (this.f1886L == 0) {
            if (!TextUtils.isEmpty(this.f1903n)) {
                map.put("ch_info", this.f1903n);
            }
            if (!TextUtils.isEmpty(this.f1906q)) {
                map.put(f.bq, this.f1906q);
            }
            if (!TextUtils.isEmpty(this.f1907r)) {
                map.put("np", this.f1907r);
            }
            if (!TextUtils.isEmpty(this.f1912w)) {
                map.put("last_wf", this.f1912w);
            }
            if (!TextUtils.isEmpty(this.f1913x)) {
                map.put("co", this.f1913x);
            }
            map.put(m.a.f8917S, this.f1914y);
            if (s.b().l() != null) {
                map.put(f1875c, j.a(s.b().l().toString()));
            }
            if (s.b().G() && s.b().z()) {
                map.put(aw.f11060a, 1);
            }
            if (!TextUtils.isEmpty(this.f1908s)) {
                map.put(f.bj, this.f1908s);
            }
            if (!TextUtils.isEmpty(this.f1915z)) {
                map.put("last_win", this.f1915z);
            }
            if (!TextUtils.isEmpty(this.f1876A)) {
                map.put("last_m_data", this.f1876A);
            }
        }
        Set<String> setKeySet = map.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : setKeySet) {
                jSONObject.put(str, map.get(str));
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            System.gc();
            return null;
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int n() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_EXIT;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("bid");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final List<String> r() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        return arrayList;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        return this.f1904o;
    }

    public final void a(b bVar) {
        String str = bVar.f1916a;
        if (str != null) {
            this.f1903n = j.a(str.getBytes());
        }
        this.f1911v = bVar.f1921f;
        if (!TextUtils.isEmpty(bVar.f1917b) && !TextUtils.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, bVar.f1917b)) {
            this.f1906q = j.a(bVar.f1917b.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.f1918c) && !TextUtils.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, bVar.f1918c)) {
            this.f1907r = j.a(bVar.f1918c.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.f1919d) && !TextUtils.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, bVar.f1919d)) {
            this.f1912w = j.a(bVar.f1919d.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.f1920e) && !TextUtils.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, bVar.f1920e)) {
            this.f1913x = j.a(bVar.f1920e.getBytes());
        }
        this.f1914y = "";
        if (!TextUtils.isEmpty(bVar.f1922g)) {
            this.f1914y = j.a(bVar.f1922g.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.f1923h)) {
            this.f1908s = j.a(bVar.f1923h.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.f1924i) && !TextUtils.equals("{}", bVar.f1924i)) {
            this.f1915z = j.a(bVar.f1924i.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.f1925j) && !TextUtils.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, bVar.f1925j)) {
            this.f1876A = j.a(bVar.f1925j.getBytes());
        }
        this.f1877B = bVar.f1926k;
        this.f1878C = bVar.f1927l;
        this.f1879D = bVar.f1928m;
        this.f1880E = bVar.f1929n;
        this.f1881F = bVar.f1930o;
        this.f1882G = bVar.f1931p;
        this.f1883H = bVar.f1932q;
        this.f1884I = bVar.f1933r;
        this.f1885J = bVar.f1934s;
        this.aa = bVar.f1935t;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, Object obj) {
        super.a(i2, obj);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, com.anythink.core.common.m.s sVar) {
        this.ab = System.currentTimeMillis();
        this.ac = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        try {
            com.anythink.core.common.u.f.a("bid", this.f1905p, this.ab, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.ac, this.aa);
            return new JSONObject(obj.toString());
        } catch (Exception unused) {
            return null;
        }
    }
}
