package com.anythink.core.common.g;

import com.anythink.core.api.ATSDK;
import com.anythink.core.common.d.i;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    protected static final String f3477a = "cn-api.anythinktech.com";

    /* renamed from: b, reason: collision with root package name */
    protected static final String f3478b = "cn-api-sec.anythinktech.com";

    /* renamed from: c, reason: collision with root package name */
    public static final String f3479c = "https://se.anythinktech.com/v2/open/ns";

    /* renamed from: d, reason: collision with root package name */
    public static final String f3480d = "https://se.anythinktech.com/v2/open/api_hb";

    /* renamed from: e, reason: collision with root package name */
    public static final String f3481e = "https://cn-api.anythinktech.com/v2/open/app";

    /* renamed from: f, reason: collision with root package name */
    public static final String f3482f = "https://cn-api-sec.anythinktech.com/v2/open/app";

    /* renamed from: g, reason: collision with root package name */
    public static final String f3483g = "https://cn-api.anythinktech.com/v2/open/placement";

    /* renamed from: h, reason: collision with root package name */
    public static final String f3484h = "https://cn-api-sec.anythinktech.com/v2/open/placement";

    /* renamed from: i, reason: collision with root package name */
    public static final String f3485i = "https://ssapi.anythinktech.com/sdk/realtime_waterfall";

    /* renamed from: j, reason: collision with root package name */
    public static final String f3486j = "https://cn-api.anythinktech.com/v2/open/pl_wf";

    /* renamed from: k, reason: collision with root package name */
    public static final String f3487k = "https://cn-da.anythinktech.com/v1/open/da";

    /* renamed from: l, reason: collision with root package name */
    public static final String f3488l = "https://cn-tk.anythinktech.com/v2/open/anr";

    /* renamed from: m, reason: collision with root package name */
    public static final String f3489m = "https://cn-tk.anythinktech.com/v1/open/tk";

    /* renamed from: n, reason: collision with root package name */
    public static final String f3490n;

    /* renamed from: o, reason: collision with root package name */
    public static final String f3491o;

    /* renamed from: p, reason: collision with root package name */
    public static final String f3492p;

    /* renamed from: q, reason: collision with root package name */
    public static final String f3493q;

    /* renamed from: r, reason: collision with root package name */
    public static final String f3494r;

    /* renamed from: s, reason: collision with root package name */
    public static final String f3495s = "";

    /* renamed from: t, reason: collision with root package name */
    public static final String f3496t;

    /* renamed from: u, reason: collision with root package name */
    public static final String f3497u;

    /* renamed from: v, reason: collision with root package name */
    public static final String f3498v;

    /* renamed from: w, reason: collision with root package name */
    public static final String f3499w;

    /* renamed from: x, reason: collision with root package name */
    public static final String f3500x = "https:///gdpr/PrivacyPolicySetting.html";

    static {
        String strE;
        StringBuilder sb = new StringBuilder("https://");
        if (ATSDK.isCnSDK()) {
            strE = "cn-api.anythinktech.com";
        } else {
            c.a();
            strE = c.e();
        }
        sb.append(strE);
        sb.append("/v2/open/eu");
        f3490n = sb.toString();
        f3491o = "https://adx.anythinktech.com/bid";
        f3492p = "https://adx.anythinktech.com/request";
        f3493q = "https://adxcn-tk.anythinktech.com/v1";
        f3494r = "https://adx.anythinktech.com/openapi/req";
        f3496t = "https://cn-tk.anythinktech.com/ss/rrd";
        f3497u = "https://cn-api.anythinktech.com/v2/open/area";
        f3498v = "https://cn-api.anythinktech.com/v2/open/m_adapter";
        f3499w = "https://cn-api.anythinktech.com/v2/open/dna";
    }

    public static String a() {
        return "cn-api.anythinktech.com";
    }

    public static String b() {
        return i.g.a.f2651c;
    }

    private static String c() {
        return "cn-api-sec.anythinktech.com";
    }

    private static String d() {
        return i.g.a.f2652d;
    }

    private static String e() {
        return i.g.a.f2653e;
    }

    private static String f() {
        if (ATSDK.isCnSDK()) {
            return "cn-api.anythinktech.com";
        }
        c.a();
        return c.e();
    }

    private static String g() {
        return i.g.a.f2654f;
    }
}
