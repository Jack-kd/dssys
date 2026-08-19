package com.anythink.core.common.b;

import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private int f2299a;

    /* renamed from: b, reason: collision with root package name */
    private long f2300b;

    /* renamed from: c, reason: collision with root package name */
    private int f2301c;

    /* renamed from: d, reason: collision with root package name */
    private int[] f2302d;

    /* renamed from: e, reason: collision with root package name */
    private long f2303e;

    /* renamed from: f, reason: collision with root package name */
    private int f2304f;

    /* renamed from: g, reason: collision with root package name */
    private int f2305g;

    /* renamed from: h, reason: collision with root package name */
    private int f2306h;

    /* renamed from: i, reason: collision with root package name */
    private String f2307i;

    public final int a() {
        return this.f2299a;
    }

    public final long b() {
        return this.f2300b;
    }

    public final int c() {
        return this.f2301c;
    }

    public final int[] d() {
        return this.f2302d;
    }

    public final long e() {
        return this.f2303e;
    }

    public final boolean f() {
        return this.f2304f == 1;
    }

    public final int g() {
        return this.f2305g;
    }

    public final int h() {
        return this.f2306h;
    }

    public final String i() {
        String str = this.f2307i;
        return str != null ? str : "";
    }

    public final String toString() {
        return i();
    }

    private void a(int i2) {
        this.f2299a = i2;
    }

    private void b(int i2) {
        this.f2301c = i2;
    }

    private void c(int i2) {
        this.f2304f = i2;
    }

    private void d(int i2) {
        this.f2305g = i2;
    }

    private void e(int i2) {
        this.f2306h = i2;
    }

    private void a(long j2) {
        this.f2300b = j2;
    }

    private void b(long j2) {
        this.f2303e = j2;
    }

    private void a(int[] iArr) {
        this.f2302d = iArr;
    }

    public static c a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        cVar.f2307i = jSONObject.toString();
        cVar.f2299a = jSONObject.optInt("parallel_req_num", 0);
        cVar.f2300b = jSONObject.optLong("banner_refresh_t", 0L);
        cVar.f2301c = jSONObject.optInt("auto_req_sw", 2);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("firm_priority");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            int[] iArr = new int[jSONArrayOptJSONArray.length()];
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                iArr[i2] = jSONArrayOptJSONArray.optInt(i2);
            }
            cVar.f2302d = iArr;
        }
        cVar.f2303e = jSONObject.optLong("bid_interval", 200L);
        cVar.f2304f = jSONObject.optInt("req_wf_after_bid", 2);
        cVar.f2305g = jSONObject.optInt("req_mode", 0);
        cVar.f2306h = jSONObject.optInt("bid_fail_retry", 2);
        return cVar;
    }
}
