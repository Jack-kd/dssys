package com.anythink.core.common.v;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: A, reason: collision with root package name */
    public static final String f8332A = "it_src";

    /* renamed from: a, reason: collision with root package name */
    public static final String f8333a = "platform";

    /* renamed from: b, reason: collision with root package name */
    public static final String f8334b = "os_vn";

    /* renamed from: c, reason: collision with root package name */
    public static final String f8335c = "os_vc";

    /* renamed from: d, reason: collision with root package name */
    public static final String f8336d = "package_name";

    /* renamed from: e, reason: collision with root package name */
    public static final String f8337e = "app_vn";

    /* renamed from: f, reason: collision with root package name */
    public static final String f8338f = "app_vc";

    /* renamed from: g, reason: collision with root package name */
    public static final String f8339g = "brand";

    /* renamed from: h, reason: collision with root package name */
    public static final String f8340h = "model";

    /* renamed from: i, reason: collision with root package name */
    public static final String f8341i = "screen";

    /* renamed from: j, reason: collision with root package name */
    public static final String f8342j = "network_type";

    /* renamed from: k, reason: collision with root package name */
    public static final String f8343k = "mnc";

    /* renamed from: l, reason: collision with root package name */
    public static final String f8344l = "mcc";

    /* renamed from: m, reason: collision with root package name */
    public static final String f8345m = "language";

    /* renamed from: n, reason: collision with root package name */
    public static final String f8346n = "timezone";

    /* renamed from: o, reason: collision with root package name */
    public static final String f8347o = "sdk_ver";

    /* renamed from: p, reason: collision with root package name */
    public static final String f8348p = "gp_ver";

    /* renamed from: q, reason: collision with root package name */
    public static final String f8349q = "nw_ver";

    /* renamed from: r, reason: collision with root package name */
    public static final String f8350r = "ua";

    /* renamed from: s, reason: collision with root package name */
    public static final String f8351s = "orient";

    /* renamed from: t, reason: collision with root package name */
    public static final String f8352t = "system";

    /* renamed from: u, reason: collision with root package name */
    public static final String f8353u = "android_id";

    /* renamed from: v, reason: collision with root package name */
    public static final String f8354v = "gaid";

    /* renamed from: w, reason: collision with root package name */
    public static final String f8355w = "channel";

    /* renamed from: x, reason: collision with root package name */
    public static final String f8356x = "sub_channel";

    /* renamed from: y, reason: collision with root package name */
    public static final String f8357y = "upid";

    /* renamed from: z, reason: collision with root package name */
    public static final String f8358z = "ps_id";

    public static JSONObject a() throws JSONException {
        JSONObject jSONObjectB = b();
        JSONObject jSONObjectC = c();
        try {
            jSONObjectB.put("app_id", com.anythink.core.common.d.s.b().p());
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectB.put(next, jSONObjectC.opt(next));
            }
        } catch (JSONException unused) {
        }
        return jSONObjectB;
    }

    private static JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Context contextG = com.anythink.core.common.d.s.b().g();
        try {
            jSONObject.put("platform", 1);
            jSONObject.put("os_vn", l.e());
            jSONObject.put("os_vc", l.d());
            jSONObject.put("package_name", l.j(contextG));
            jSONObject.put("app_vn", l.h(contextG));
            jSONObject.put("app_vc", l.g(contextG));
            jSONObject.put("brand", l.b());
            jSONObject.put("model", l.a());
            jSONObject.put("screen", l.i(contextG));
            jSONObject.put("network_type", String.valueOf(l.l(contextG)));
            jSONObject.put("mnc", l.c(contextG));
            jSONObject.put("mcc", l.b(contextG));
            jSONObject.put("language", l.e(contextG));
            jSONObject.put("timezone", l.c());
            jSONObject.put("sdk_ver", o.a());
            jSONObject.put("gp_ver", l.g());
            jSONObject.put("ua", l.i());
            jSONObject.put("orient", l.f(contextG));
            jSONObject.put("system", 1);
            if (!TextUtils.isEmpty(com.anythink.core.common.d.s.b().n())) {
                jSONObject.put("channel", com.anythink.core.common.d.s.b().n());
            }
            if (!TextUtils.isEmpty(com.anythink.core.common.d.s.b().o())) {
                jSONObject.put("sub_channel", com.anythink.core.common.d.s.b().o());
            }
            jSONObject.put("upid", com.anythink.core.common.d.s.b().C());
            jSONObject.put("ps_id", com.anythink.core.common.d.s.b().r());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static JSONObject c() throws JSONException {
        String strI;
        Context contextG = com.anythink.core.common.d.s.b().g();
        JSONObject jSONObject = new JSONObject();
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(contextG).b(com.anythink.core.common.d.s.b().p());
        if (bVarB != null) {
            try {
                strI = bVarB.I();
            } catch (Exception unused) {
            }
        } else {
            strI = "";
        }
        boolean z2 = true;
        if (!TextUtils.isEmpty(strI)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strI);
                if (!jSONObject2.isNull("a")) {
                    if (jSONObject2.optInt("a") != 1) {
                        z2 = false;
                    }
                }
            } catch (Exception unused2) {
            }
        }
        jSONObject.put("android_id", z2 ? l.d(contextG) : "");
        jSONObject.put("gaid", l.f());
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        if (rVarC != null) {
            rVarC.fillRequestData(jSONObject, bVarB);
        }
        if (ATSDK.isCnSDK()) {
            jSONObject.put("is_cn_sdk", "1");
        } else {
            jSONObject.put("is_cn_sdk", "0");
        }
        String strK = l.k(contextG);
        jSONObject.put("it_src", TextUtils.isEmpty(strK) ? "" : strK);
        return jSONObject;
    }
}
