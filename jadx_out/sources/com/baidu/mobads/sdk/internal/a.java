package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f10877a = "none";

    /* renamed from: b, reason: collision with root package name */
    public static final String f10878b = "text";

    /* renamed from: c, reason: collision with root package name */
    public static final String f10879c = "static_image";

    /* renamed from: d, reason: collision with root package name */
    public static final String f10880d = "gif";

    /* renamed from: e, reason: collision with root package name */
    public static final String f10881e = "rich_media";

    /* renamed from: f, reason: collision with root package name */
    public static final String f10882f = "html";

    /* renamed from: g, reason: collision with root package name */
    public static final String f10883g = "hybrid";

    /* renamed from: h, reason: collision with root package name */
    public static final String f10884h = "video";

    /* renamed from: i, reason: collision with root package name */
    public static final String f10885i = "live";

    /* renamed from: j, reason: collision with root package name */
    private static final long f10886j = 1750000;

    /* renamed from: A, reason: collision with root package name */
    private String f10887A;

    /* renamed from: B, reason: collision with root package name */
    private String f10888B;

    /* renamed from: C, reason: collision with root package name */
    private String f10889C;

    /* renamed from: D, reason: collision with root package name */
    private String f10890D;

    /* renamed from: E, reason: collision with root package name */
    private String f10891E;

    /* renamed from: F, reason: collision with root package name */
    private String f10892F;

    /* renamed from: G, reason: collision with root package name */
    private String f10893G;

    /* renamed from: H, reason: collision with root package name */
    private int f10894H;

    /* renamed from: I, reason: collision with root package name */
    private String f10895I;

    /* renamed from: J, reason: collision with root package name */
    private int f10896J;

    /* renamed from: K, reason: collision with root package name */
    private int f10897K;

    /* renamed from: L, reason: collision with root package name */
    private int f10898L;

    /* renamed from: M, reason: collision with root package name */
    private int f10899M;

    /* renamed from: N, reason: collision with root package name */
    private int f10900N;

    /* renamed from: O, reason: collision with root package name */
    private int f10901O;

    /* renamed from: P, reason: collision with root package name */
    private String f10902P;

    /* renamed from: R, reason: collision with root package name */
    private List<String> f10904R;

    /* renamed from: S, reason: collision with root package name */
    private JSONObject f10905S;

    /* renamed from: T, reason: collision with root package name */
    private long f10906T;

    /* renamed from: U, reason: collision with root package name */
    private long f10907U;

    /* renamed from: V, reason: collision with root package name */
    private String f10908V;

    /* renamed from: W, reason: collision with root package name */
    private String f10909W;

    /* renamed from: X, reason: collision with root package name */
    private String f10910X;

    /* renamed from: Y, reason: collision with root package name */
    private String f10911Y;

    /* renamed from: Z, reason: collision with root package name */
    private String f10912Z;
    private String aa;
    private String ab;
    private JSONObject ac;
    private int ad;
    private int ae;
    private int af;
    private List<String> ag;
    private String ai;
    private String aj;
    private JSONObject an;
    private JSONObject ao;
    private int ap;
    private String aq;

    /* renamed from: k, reason: collision with root package name */
    private String f10913k;

    /* renamed from: l, reason: collision with root package name */
    private String f10914l;

    /* renamed from: m, reason: collision with root package name */
    private String f10915m;

    /* renamed from: n, reason: collision with root package name */
    private String f10916n;

    /* renamed from: o, reason: collision with root package name */
    private int f10917o;

    /* renamed from: p, reason: collision with root package name */
    private int f10918p;

    /* renamed from: q, reason: collision with root package name */
    private String f10919q;

    /* renamed from: r, reason: collision with root package name */
    private long f10920r;

    /* renamed from: s, reason: collision with root package name */
    private int f10921s;

    /* renamed from: u, reason: collision with root package name */
    private String f10923u;

    /* renamed from: v, reason: collision with root package name */
    private String f10924v;

    /* renamed from: w, reason: collision with root package name */
    private String f10925w;

    /* renamed from: x, reason: collision with root package name */
    private String f10926x;

    /* renamed from: y, reason: collision with root package name */
    private String f10927y;

    /* renamed from: z, reason: collision with root package name */
    private String f10928z;

    /* renamed from: t, reason: collision with root package name */
    private int f10922t = 1;

    /* renamed from: Q, reason: collision with root package name */
    private String f10903Q = f10877a;
    private int ah = 0;
    private int ak = 0;
    private int al = 0;
    private int am = 0;

    public static boolean a(int i2) {
        return (i2 < 28 || 31 == i2 || 32 == i2 || 38 == i2 || 39 == i2 || 40 == i2 || 42 < i2) ? false : true;
    }

    public String A() {
        return !TextUtils.isEmpty(this.f10924v) ? this.f10924v : this.f10923u;
    }

    public String B() {
        return this.f10925w;
    }

    public int C() {
        return this.ap;
    }

    public String D() {
        return this.aq;
    }

    public String E() {
        return this.f10926x;
    }

    public String F() {
        return this.f10890D;
    }

    public String G() {
        return this.f10889C;
    }

    public String H() {
        return this.f10891E;
    }

    public String I() {
        return this.f10892F;
    }

    public String J() {
        return this.f10893G;
    }

    public long K() {
        return this.f10907U;
    }

    public List<String> L() {
        return this.f10904R;
    }

    public String M() {
        return this.f10908V;
    }

    public JSONObject N() {
        return this.f10905S;
    }

    public String O() {
        return this.f10911Y;
    }

    public String P() {
        return this.f10912Z;
    }

    public String Q() {
        return this.aa;
    }

    public String R() {
        String str = this.ab;
        return (str == null || str.length() <= 4) ? this.ab : "";
    }

    public int S() {
        return this.af;
    }

    public List<String> T() {
        return this.ag;
    }

    public JSONObject U() {
        return this.ac;
    }

    public int V() {
        return this.ad;
    }

    public int W() {
        return this.ae;
    }

    public int X() {
        return this.ah;
    }

    public JSONObject Y() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("uniqueId", this.f10908V);
            jSONObject.put("tit", this.f10913k);
            jSONObject.put("desc", this.f10914l);
            jSONObject.put(com.umeng.analytics.pro.g.f49332S, this.f10927y);
            jSONObject.put("appname", this.f10919q);
            jSONObject.put("act", this.f10894H);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String Z() {
        return this.ai;
    }

    public String aa() {
        if (TextUtils.isEmpty(this.aj)) {
            return "";
        }
        try {
            long j2 = Long.parseLong(this.aj);
            int length = this.aj.length();
            return (j2 <= 100000 || length <= 5) ? "" : this.aj.substring(length - 4, length);
        } catch (Throwable th) {
            az.b(th);
            return "";
        }
    }

    public int ab() {
        if (this.ak > 0) {
            return this.al;
        }
        return 0;
    }

    public int ac() {
        return this.am;
    }

    public String b() {
        return this.f10914l;
    }

    public String c() {
        return this.f10915m;
    }

    public String d() {
        return this.f10916n;
    }

    public int e() {
        return this.f10917o;
    }

    public int f() {
        return this.f10918p;
    }

    public String g() {
        return this.f10919q;
    }

    public String h() {
        return this.f10909W;
    }

    public String i() {
        return this.f10910X;
    }

    public long j() {
        return this.f10920r;
    }

    public int k() {
        return this.f10921s;
    }

    public int l() {
        return this.f10922t;
    }

    public String m() {
        return this.f10927y;
    }

    public String n() {
        return this.f10928z;
    }

    public String o() {
        return this.f10887A;
    }

    public String p() {
        return this.f10888B;
    }

    public int q() {
        return this.f10894H;
    }

    public String r() {
        return this.f10895I;
    }

    public int s() {
        return this.f10896J;
    }

    public int t() {
        return this.f10897K;
    }

    public int u() {
        return this.f10898L;
    }

    public int v() {
        return this.f10899M;
    }

    public int w() {
        return this.f10900N;
    }

    public int x() {
        return this.f10901O;
    }

    public String y() {
        return this.f10903Q;
    }

    public long z() {
        return this.f10906T;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014f A[Catch: all -> 0x00b9, JSONException -> 0x00bc, TryCatch #4 {JSONException -> 0x00bc, all -> 0x00b9, blocks: (B:5:0x007e, B:8:0x0090, B:10:0x00a1, B:15:0x00bf, B:17:0x00cb, B:19:0x00d6, B:21:0x00dc, B:22:0x00de, B:24:0x00e4, B:26:0x00ea, B:28:0x00f2, B:32:0x00fb, B:34:0x0105, B:35:0x0122, B:37:0x0128, B:38:0x012e, B:40:0x0136, B:42:0x013c, B:44:0x0146, B:47:0x014f, B:49:0x015d, B:51:0x0164, B:52:0x016c, B:54:0x0172), top: B:117:0x007e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.baidu.mobads.sdk.internal.a a(org.json.JSONObject r18) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.a.a(org.json.JSONObject):com.baidu.mobads.sdk.internal.a");
    }

    public String a(String str) {
        if (this.an == null) {
            return null;
        }
        JSONObject jSONObject = this.ao;
        JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject("apo") : null;
        String strOptString = this.an.optString(str);
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        if (TextUtils.equals(strOptString, "fallback") && jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optString("fallback");
        }
        if (TextUtils.equals(strOptString, "page") && jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optString("page");
        }
        JSONObject jSONObject2 = this.ao;
        if (jSONObject2 != null) {
            return jSONObject2.optString(strOptString);
        }
        return null;
    }

    public static List<a> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    arrayList.add(a(jSONArray.getJSONObject(i2)));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    private static int a(JSONObject jSONObject, int i2, int i3) {
        String[] strArrSplit;
        int i4 = 0;
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("st_op");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("tp_id");
                    if (!TextUtils.isEmpty(strOptString) && strOptString.startsWith("opt_style_") && (strArrSplit = strOptString.substring(10).split("_")) != null && strArrSplit.length > 0) {
                        i4 = Integer.parseInt(strArrSplit[0]);
                    }
                }
            } catch (Throwable th) {
                bv.a().d(th.getMessage());
            }
        }
        if (a(i4)) {
            i2 = i4;
        } else if (!a(i2)) {
            i2 = i3;
        }
        if (i2 == 42) {
            return 41;
        }
        return i2;
    }

    public String a() {
        return this.f10913k;
    }
}
