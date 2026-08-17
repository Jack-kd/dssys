package com.byazt.jlb;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.jlb.l;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.pg.jx;
import com.byazt.rz.PluginConstants;
import com.byazt.ym.j;
import com.byazt.ymw.vv;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.ec;
import com.byazt.zn.ky;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 958, 34})
/* loaded from: classes.dex */
public class l<T extends l> implements hp {

    /* renamed from: e, reason: collision with root package name */
    public String f21603e;
    public String gu;
    public String hp;
    public String jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public String f21605k;

    /* renamed from: l, reason: collision with root package name */
    public String f21606l;

    /* renamed from: s, reason: collision with root package name */
    public String f21608s;

    /* renamed from: v, reason: collision with root package name */
    public String f21609v;

    /* renamed from: w, reason: collision with root package name */
    public String f21610w;
    public String zy;

    /* renamed from: j, reason: collision with root package name */
    public String f21604j = d.f21860w;

    /* renamed from: a, reason: collision with root package name */
    public long f21602a = System.currentTimeMillis() / 1000;
    public int eb = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f21607q = 0;

    public static l<l> l() {
        return new l<>();
    }

    private T vv() {
        return this;
    }

    private JSONObject xs() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jl jlVar = (jl) j.getService("device_info_new");
            jx jxVar = (jx) j.getService("embed_applog");
            jSONObject.put(bv.f48923x, 1);
            com.byazt.tn.l.jx(jSONObject);
            jSONObject.put("oaid", jxVar.getOAID(false));
            jSONObject.put("model", jlVar.getDeviceModel());
            jSONObject.put("android_id", DeviceUtils.l());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", ky.s());
            jSONObject.put("ua", jlVar.getWebViewUA(false));
            jSONObject.put("applog_did", jxVar.getDid());
            jSONObject.put("ip", ec.hp());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String a() {
        return this.f21604j;
    }

    public int e() {
        return this.eb;
    }

    public String eb() {
        return this.f21605k;
    }

    public String getType() {
        return this.hp;
    }

    public String gu() {
        return this.f21608s;
    }

    @Override // com.byazt.jlb.hp
    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(getType())) {
                jSONObject.put("type", getType());
            }
            if (!TextUtils.isEmpty(j())) {
                jSONObject.put("rit", j());
            }
            if (!TextUtils.isEmpty(w())) {
                jSONObject.put("creative_id", w());
            }
            if (!TextUtils.isEmpty(a())) {
                jSONObject.put("ad_sdk_version", a());
            }
            if (TextUtils.isEmpty(s())) {
                jSONObject.put("app_version", ky.e());
            } else {
                jSONObject.put("app_version", s());
            }
            if (q() > 0) {
                jSONObject.put("timestamp", q());
            }
            if (e() > 0) {
                jSONObject.put("adtype", e());
            }
            if (!TextUtils.isEmpty(gu())) {
                jSONObject.put("req_id", gu());
            }
            jSONObject.put("error_code", jl());
            if (!TextUtils.isEmpty(zy())) {
                jSONObject.put("error_msg", zy());
            }
            if (!TextUtils.isEmpty(k())) {
                jSONObject.put("extra", k());
            }
            if (!TextUtils.isEmpty(v())) {
                jSONObject.put("image_url", v());
            }
            if (!TextUtils.isEmpty(jx())) {
                jSONObject.put("event_extra", jx());
            }
            if (!TextUtils.isEmpty(eb())) {
                jSONObject.put("duration", eb());
            }
            if (!TextUtils.isEmpty(s.u().ns())) {
                jSONObject.put("appid", s.u().ns());
            }
            if (!TextUtils.isEmpty(u())) {
                jSONObject.put("ad_info", u());
            }
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("is_plugin", d.hp());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("conn_type", vv.l(sz.getContext()));
        } catch (Exception unused) {
        }
        try {
            jSONObject.put("device_info", xs());
        } catch (Throwable unused2) {
        }
        return jSONObject;
    }

    public String j() {
        return this.f21606l;
    }

    public int jl() {
        return this.f21607q;
    }

    public String jx() {
        return this.zy;
    }

    public String k() {
        return this.gu;
    }

    public long q() {
        return this.f21602a;
    }

    public String s() {
        return this.f21610w;
    }

    public String u() {
        return this.f21609v;
    }

    public String v() {
        return this.jl;
    }

    public String w() {
        return this.jx;
    }

    public String zy() {
        return this.f21603e;
    }

    public T a(String str) {
        this.f21608s = str;
        return (T) vv();
    }

    public T eb(String str) {
        this.f21603e = str;
        return (T) vv();
    }

    public T j(String str) {
        this.jx = str;
        return (T) vv();
    }

    public T jx(String str) {
        this.f21606l = str;
        return (T) vv();
    }

    public T l(String str) {
        this.zy = str;
        return (T) vv();
    }

    public T q(String str) {
        this.f21609v = str;
        return (T) vv();
    }

    public T s(String str) {
        this.gu = str;
        return (T) vv();
    }

    public T w(String str) {
        this.f21605k = str;
        return (T) vv();
    }

    public T l(int i2) {
        this.f21607q = i2;
        return (T) vv();
    }

    public T hp(String str) {
        this.hp = str;
        return (T) vv();
    }

    public T hp(long j2) {
        this.f21602a = j2;
        return (T) vv();
    }

    public T hp(int i2) {
        this.eb = i2;
        return (T) vv();
    }
}
