package com.anythink.core.d.a;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f8548a = 10;

    /* renamed from: b, reason: collision with root package name */
    public static final int f8549b = 4;

    /* renamed from: c, reason: collision with root package name */
    private int f8550c;

    /* renamed from: d, reason: collision with root package name */
    private String f8551d;

    /* renamed from: e, reason: collision with root package name */
    private String f8552e;

    /* renamed from: f, reason: collision with root package name */
    private int f8553f;

    /* renamed from: g, reason: collision with root package name */
    private String f8554g;

    /* renamed from: h, reason: collision with root package name */
    private String f8555h;

    /* renamed from: i, reason: collision with root package name */
    private double f8556i;

    /* renamed from: j, reason: collision with root package name */
    private long f8557j;

    /* renamed from: k, reason: collision with root package name */
    private String f8558k;

    /* renamed from: l, reason: collision with root package name */
    private int f8559l;

    public final int a() {
        return this.f8559l;
    }

    public final String b() {
        return this.f8552e;
    }

    public final int c() {
        return this.f8553f;
    }

    public final String d() {
        return this.f8554g;
    }

    public final String e() {
        return this.f8555h;
    }

    public final double f() {
        return this.f8556i;
    }

    public final long g() {
        return this.f8557j;
    }

    public final String h() {
        return this.f8558k;
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, "req_id", this.f8552e);
            a(jSONObject, "unit_id", this.f8554g);
            a(jSONObject, "dsp_id", this.f8555h);
            a(jSONObject, "ecpm", Double.valueOf(this.f8556i));
            a(jSONObject, "ts", Long.valueOf(this.f8557j));
            a(jSONObject, "lc_id", this.f8558k);
            a(jSONObject, "nw_firm_id", Integer.valueOf(this.f8553f));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public final String j() {
        return this.f8551d;
    }

    public final int k() {
        return this.f8550c;
    }

    public final String toString() {
        return "PlacementStatisticsBean{requestId='" + this.f8552e + "', networkFirmId=" + this.f8553f + ", adSourceId='" + this.f8554g + "', dspId='" + this.f8555h + "', price=" + this.f8556i + ", recordTime=" + this.f8557j + ", psId='" + this.f8558k + "', placementId='" + this.f8551d + "', type= " + this.f8550c + "', segmentId= " + this.f8559l + '}';
    }

    public final void a(int i2) {
        this.f8559l = i2;
    }

    public final void b(int i2) {
        this.f8553f = i2;
    }

    public final void c(String str) {
        this.f8555h = str;
    }

    public final void d(String str) {
        this.f8558k = str;
    }

    public final void e(String str) {
        this.f8551d = str;
    }

    public final void a(String str) {
        this.f8552e = str;
    }

    public final void b(String str) {
        this.f8554g = str;
    }

    public final void c(int i2) {
        this.f8550c = i2;
    }

    public final void a(double d2) {
        this.f8556i = d2;
    }

    public final void a(long j2) {
        this.f8557j = j2;
    }

    private static void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj == null || TextUtils.isEmpty(str)) {
            return;
        }
        if ((obj instanceof String) && ((String) obj).isEmpty()) {
            return;
        }
        if ((obj instanceof Integer) && ((Integer) obj).intValue() == 0) {
            return;
        }
        if ((obj instanceof Long) && ((Long) obj).longValue() == 0) {
            return;
        }
        if ((obj instanceof Double) && ((Double) obj).doubleValue() == 0.0d) {
            return;
        }
        if (str.equals("ecpm")) {
            jSONObject.put(str, String.valueOf(obj));
        } else {
            jSONObject.put(str, obj);
        }
    }
}
