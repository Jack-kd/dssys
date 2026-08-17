package com.kuaishou.weapon.p0;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ck {

    /* renamed from: a, reason: collision with root package name */
    private String f30986a;

    /* renamed from: b, reason: collision with root package name */
    private String f30987b;

    /* renamed from: c, reason: collision with root package name */
    private String f30988c;

    /* renamed from: d, reason: collision with root package name */
    private String f30989d;

    /* renamed from: e, reason: collision with root package name */
    private String f30990e;

    /* renamed from: f, reason: collision with root package name */
    private String f30991f;

    /* renamed from: g, reason: collision with root package name */
    private String f30992g;

    /* renamed from: h, reason: collision with root package name */
    private String f30993h;

    /* renamed from: i, reason: collision with root package name */
    private String f30994i;

    /* renamed from: j, reason: collision with root package name */
    private String f30995j;

    /* renamed from: k, reason: collision with root package name */
    private String f30996k;

    /* renamed from: l, reason: collision with root package name */
    private String f30997l;

    public ck(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis());
        this.f30994i = sb.toString();
        this.f30988c = str;
        this.f30992g = str2;
    }

    public static String m() {
        try {
            return !TextUtils.isEmpty(WeaponHI.skProductName) ? WeaponHI.skProductName : "UNKNOWN_PRODUCT";
        } catch (Exception unused) {
            return "UNKNOWN_PRODUCT";
        }
    }

    private JSONObject n() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("1", this.f30986a);
            jSONObject.put("2", this.f30987b);
            jSONObject.put("3", this.f30988c);
            jSONObject.put("4", this.f30989d);
            jSONObject.put("5", this.f30990e);
            jSONObject.put("6", this.f30991f);
            jSONObject.put("7", this.f30992g);
            jSONObject.put(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, this.f30993h);
            jSONObject.put("9", this.f30994i);
            jSONObject.put("11", this.f30995j);
            jSONObject.put("12", this.f30997l);
            jSONObject.put(PointType.SIGMOB_REPORT_TRACKING, "com.kuaishou.weapon");
            jSONObject.put("14", WeaponHI.sKSSdkver);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String a() {
        return this.f30986a;
    }

    public String b() {
        return this.f30987b;
    }

    public String c() {
        return this.f30988c;
    }

    public String d() {
        return this.f30989d;
    }

    public String e() {
        return this.f30990e;
    }

    public String f() {
        return this.f30991f;
    }

    public String g() {
        return this.f30992g;
    }

    public String h() {
        return this.f30993h;
    }

    public String i() {
        return this.f30994i;
    }

    public String j() {
        return this.f30995j;
    }

    public String k() {
        return this.f30996k;
    }

    public String l() {
        return this.f30997l;
    }

    public void a(String str) {
        this.f30986a = str;
    }

    public void b(String str) {
        this.f30987b = str;
    }

    public void c(String str) {
        this.f30988c = str;
    }

    public void d(String str) {
        this.f30989d = str;
    }

    public void e(String str) {
        this.f30990e = str;
    }

    public void f(String str) {
        this.f30991f = str;
    }

    public void g(String str) {
        this.f30992g = str;
    }

    public void h(String str) {
        this.f30993h = str;
    }

    public void i(String str) {
        this.f30994i = str;
    }

    public void j(String str) {
        this.f30995j = str;
    }

    public void k(String str) {
        this.f30996k = str;
    }

    public void l(String str) {
        this.f30997l = str;
    }

    public static String b(Context context) {
        try {
            String str = WeaponHI.sKDeviceId;
            if (!TextUtils.isEmpty(str)) {
                bg.f30876v = 1;
                return str;
            }
        } catch (Exception unused) {
        }
        try {
            h hVarA = h.a(context, "re_po_rt");
            boolean zE = hVarA.e("a1_p_s_p_s");
            boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
            if (zE || zE2) {
                String str2 = "ANDROID_" + Settings.Secure.getString(context.getContentResolver(), "android_id");
                if (!TextUtils.isEmpty(str2)) {
                    bg.f30876v = 3;
                    return str2;
                }
            }
        } catch (Exception unused2) {
        }
        bg.f30876v = 4;
        return "";
    }

    public JSONObject a(Context context) {
        try {
            a(b(context));
            b(m());
            d(bf.q(context));
            e(bf.r(context));
            f(bf.s(context));
            h("5.4.3");
            j(br.a(context));
            l(WeaponHI.sKSAppkey);
            return n();
        } catch (Throwable unused) {
            return null;
        }
    }
}
