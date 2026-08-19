package com.anythink.core.common.h;

import com.anythink.core.common.f.a;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    private static final int f4287a = 10;

    /* renamed from: b, reason: collision with root package name */
    private int f4288b;

    /* renamed from: c, reason: collision with root package name */
    private int f4289c;

    /* renamed from: d, reason: collision with root package name */
    private int f4290d;

    /* renamed from: e, reason: collision with root package name */
    private long f4291e;

    /* renamed from: f, reason: collision with root package name */
    private int f4292f;

    /* renamed from: g, reason: collision with root package name */
    private int f4293g;

    /* renamed from: h, reason: collision with root package name */
    private long f4294h;

    public interface a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f4295a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f4296b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f4297c = 3;
    }

    private l() {
    }

    public static l a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return null;
        }
        long jOptLong = jSONObject.optLong("req_pacing");
        if (jOptLong <= 0) {
            return null;
        }
        l lVar = new l();
        int iOptInt = jSONObject.optInt("id");
        if (iOptInt == 1) {
            lVar.f4289c = jSONObject.optInt("req_no_fill_nc");
        } else if (iOptInt == 2) {
            lVar.f4290d = jSONObject.optInt("req_no_fill_s");
            lVar.f4291e = jSONObject.optLong("req_no_fill_sgt");
        } else {
            if (iOptInt != 3) {
                return null;
            }
            lVar.f4292f = jSONObject.optInt("req_no_fill_sr");
            lVar.f4291e = jSONObject.optLong("req_no_fill_sgt");
            lVar.f4293g = jSONObject.optInt(a.C0051a.f3217n, 10);
        }
        lVar.f4288b = iOptInt;
        lVar.f4294h = jOptLong;
        if (lVar.f4289c > 0 || lVar.f4290d > 0 || lVar.f4291e > 0 || lVar.f4292f > 0 || jOptLong > 0) {
            return lVar;
        }
        return null;
    }

    public final int b() {
        return this.f4289c;
    }

    public final int c() {
        return this.f4290d;
    }

    public final long d() {
        return this.f4291e;
    }

    public final int e() {
        return this.f4292f;
    }

    public final long f() {
        return this.f4294h;
    }

    public final int g() {
        return this.f4293g;
    }

    public final String toString() {
        return "AdSourceFltRuleEntity{id=" + this.f4288b + ", reqNoFillNc=" + this.f4289c + ", reqNoFillS=" + this.f4290d + ", reqNoFillSgtTime=" + this.f4291e + ", reqNoFillSr=" + this.f4292f + ", reqPacingTime=" + this.f4294h + '}';
    }

    private void b(int i2) {
        this.f4289c = i2;
    }

    private void c(int i2) {
        this.f4290d = i2;
    }

    private void d(int i2) {
        this.f4292f = i2;
    }

    private void e(int i2) {
        this.f4293g = i2;
    }

    private void b(long j2) {
        this.f4294h = j2;
    }

    public final int a() {
        return this.f4288b;
    }

    private void a(int i2) {
        this.f4288b = i2;
    }

    private void a(long j2) {
        this.f4291e = j2;
    }
}
