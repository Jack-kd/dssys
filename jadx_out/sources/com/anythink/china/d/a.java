package com.anythink.china.d;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.china.b.a;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATUserDeviceInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.u;
import com.anythink.core.common.g.c;
import com.anythink.core.common.i;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.m.b.d;
import com.anythink.core.common.m.b.g;
import com.anythink.core.common.m.f;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.n;
import com.anythink.core.common.v.o;
import com.umeng.analytics.pro.be;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a extends AbstractC1114b {

    /* renamed from: c, reason: collision with root package name */
    private static final String f1468c = "a";

    /* renamed from: a, reason: collision with root package name */
    long f1469a;

    /* renamed from: b, reason: collision with root package name */
    long f1470b;

    /* renamed from: l, reason: collision with root package name */
    private final String f1471l;

    /* renamed from: m, reason: collision with root package name */
    private final String f1472m;

    /* renamed from: n, reason: collision with root package name */
    private final String f1473n;

    /* renamed from: o, reason: collision with root package name */
    private final Context f1474o;

    public a(Context context, String str, String str2, String str3) {
        this.f1471l = str;
        this.f1472m = str2;
        this.f1474o = context;
        this.f1473n = str3;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        i.a();
        return c.a().a(i.h() ? a.C0042a.f1416d : a.C0042a.f1415c, "");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Accept-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        try {
            return k().getBytes("utf-8");
        } catch (Exception unused) {
            return k().getBytes();
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return this.f1471l;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f1474o;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f1472m;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_id", this.f1471l);
            jSONObject.put("system", 1);
            jSONObject.put("platform", 1);
            jSONObject.put("package_name", l.j(this.f1474o));
            jSONObject.put("sdk_ver", o.a());
            jSONObject.put("upid", u.a(this.f1474o).b() ? s.b().C() : "");
            if (!TextUtils.isEmpty(s.b().n())) {
                jSONObject.put("channel", s.b().n());
            }
            if (!TextUtils.isEmpty(s.b().o())) {
                jSONObject.put("sub_channel", s.b().o());
            }
            jSONObject.put(f.f5761K, s.b().h());
            jSONObject.put(f.f5762L, s.b().i());
            String strD = s.b().D();
            if (!TextUtils.isEmpty(strD)) {
                jSONObject.put("sy_id", strD);
            }
            String strE = s.b().E();
            if (TextUtils.isEmpty(strE)) {
                s.b().k(s.b().C());
                jSONObject.put("bk_id", s.b().C());
            } else {
                jSONObject.put("bk_id", strE);
            }
            String strL = l.l();
            if (!TextUtils.isEmpty(strL)) {
                jSONObject.put(f.af, Integer.parseInt(strL));
            }
            jSONObject.put(f.bB, s.b().F());
            if (ATSDK.isCnSDK()) {
                jSONObject.put("is_cn_sdk", "1");
            } else {
                jSONObject.put("is_cn_sdk", "0");
            }
            try {
                ATUserDeviceInfo aTUserDeviceInfoQ = s.b().Q();
                if (aTUserDeviceInfoQ != null) {
                    String devGaid = aTUserDeviceInfoQ.getDevGaid();
                    String devImei = aTUserDeviceInfoQ.getDevImei();
                    String devOaid = aTUserDeviceInfoQ.getDevOaid();
                    JSONObject jSONObject2 = new JSONObject();
                    if (!TextUtils.isEmpty(devGaid)) {
                        jSONObject2.put("set_gaid", devGaid);
                    }
                    if (!TextUtils.isEmpty(devImei)) {
                        jSONObject2.put("set_imei", devImei);
                    }
                    if (!TextUtils.isEmpty(devOaid)) {
                        jSONObject2.put("set_oaid", devOaid);
                    }
                    jSONObject.put(f.f5758H, jSONObject2);
                    String devUID2Token = aTUserDeviceInfoQ.getDevUID2Token();
                    if (!TextUtils.isEmpty(devUID2Token)) {
                        jSONObject.put(f.bA, devUID2Token);
                    }
                }
            } catch (Exception unused) {
            }
            jSONObject.put("app_vn", l.h(this.f1474o));
            jSONObject.put("app_vc", l.g(this.f1474o));
            jSONObject.put(f.bQ, this.f1473n);
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() {
        try {
            HashMap map = new HashMap();
            String strA = j.a(i().toString());
            map.put(f.f5766P, q());
            map.put(f.f5776Z, strA);
            ArrayList arrayList = new ArrayList(map.size());
            arrayList.addAll(map.keySet());
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                String str = (String) obj;
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(str);
                sb.append("=");
                sb.append(map.get(str));
            }
            try {
                map.put(f.f5775Y, URLEncoder.encode(n.c(this.f1472m + sb.toString()), "utf-8"));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
            return new JSONObject(map).toString();
        } catch (Exception e3) {
            e3.printStackTrace();
            return "";
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean m() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final d o() {
        return d.a(g.f5651m, this.f1471l);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, com.anythink.core.common.m.s sVar) {
        this.f1469a = System.currentTimeMillis();
        this.f1470b = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    private static void a(JSONObject jSONObject) throws JSONException {
        try {
            ATUserDeviceInfo aTUserDeviceInfoQ = s.b().Q();
            if (aTUserDeviceInfoQ != null) {
                String devGaid = aTUserDeviceInfoQ.getDevGaid();
                String devImei = aTUserDeviceInfoQ.getDevImei();
                String devOaid = aTUserDeviceInfoQ.getDevOaid();
                JSONObject jSONObject2 = new JSONObject();
                if (!TextUtils.isEmpty(devGaid)) {
                    jSONObject2.put("set_gaid", devGaid);
                }
                if (!TextUtils.isEmpty(devImei)) {
                    jSONObject2.put("set_imei", devImei);
                }
                if (!TextUtils.isEmpty(devOaid)) {
                    jSONObject2.put("set_oaid", devOaid);
                }
                jSONObject.put(f.f5758H, jSONObject2);
                String devUID2Token = aTUserDeviceInfoQ.getDevUID2Token();
                if (TextUtils.isEmpty(devUID2Token)) {
                    return;
                }
                jSONObject.put(f.bA, devUID2Token);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        com.anythink.core.common.u.f.a(be.f48810m, (String) null, this.f1469a, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f1470b, (ATAdRequest) null);
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        com.anythink.core.common.u.f.a(be.f48810m, adError.getPlatformCode(), adError.getPlatformMSG(), b(), "", "", "", (ATAdRequest) null);
    }
}
