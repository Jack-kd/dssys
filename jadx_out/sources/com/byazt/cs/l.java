package com.byazt.cs;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.rdt.jx;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1278, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.rdt.hp {
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public double f18979l;

    /* renamed from: j, reason: collision with root package name */
    public final String f18978j = "xgc_prop_volume";

    /* renamed from: w, reason: collision with root package name */
    public volatile int f18980w = -2;
    public hp hp = new hp(sz.getContext());

    public int a() {
        return (int) jx.hp().a();
    }

    public int eb() {
        int iA = a();
        int iL = this.hp.l() - this.hp.hp();
        if (iL != 0) {
            return Math.round((iA * 100.0f) / iL);
        }
        return -1;
    }

    public void hp(double d2) {
        this.f18979l = d2;
    }

    @Override // com.byazt.rdt.hp
    public JSONObject j() {
        return sz.l().ov();
    }

    @Override // com.byazt.rdt.hp
    public boolean jx() {
        int iEb = eb();
        return iEb >= 94 || iEb <= 6;
    }

    public void l(double d2) {
        int iL = this.hp.l();
        int iHp = this.hp.hp();
        int i2 = (int) d2;
        if (d2 < iL) {
            iL = d2 <= ((double) iHp) ? iHp : i2;
        }
        this.f18980w = iL;
        this.hp.hp(iL);
    }

    public int w() {
        return this.f18980w;
    }

    public void hp(String str) {
        this.jx = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0019 A[PHI: r7
      0x0019: PHI (r7v2 double) = (r7v0 double), (r7v1 double) binds: [B:8:0x0017, B:11:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.rdt.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(int r10) {
        /*
            r9 = this;
            org.json.JSONObject r0 = r9.j()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r2 = 0
            r4 = 1
            if (r10 != r4) goto L22
            java.lang.String r10 = "value"
            double r5 = r0.optDouble(r10, r2)
            r7 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 > 0) goto L1b
        L19:
            r5 = r7
            goto L29
        L1b:
            r7 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 < 0) goto L29
            goto L19
        L22:
            r5 = 2
            if (r10 != r5) goto L4d
            double r5 = r9.hp(r0)
        L29:
            int r10 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r10 == 0) goto L4d
            r2 = -4611686018427387904(0xc000000000000000, double:-2.0)
            int r10 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r10 != 0) goto L34
            goto L4d
        L34:
            com.byazt.cs.hp r10 = r9.hp
            int r10 = r10.l()
            com.byazt.cs.hp r0 = r9.hp
            int r0 = r0.hp()
            int r10 = r10 - r0
            double r0 = (double) r10
            double r0 = r0 * r5
            int r10 = r9.a()
            double r2 = (double) r10
            double r2 = r2 + r0
            r9.l(r2)
            return r4
        L4d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cs.l.hp(int):boolean");
    }

    @Override // com.byazt.rdt.hp
    public void l(int i2) {
        float fA = jx.hp().a();
        if (fA != -2.0f) {
            int iL = this.hp.l();
            int iHp = this.hp.hp();
            int i3 = (int) fA;
            if (fA < iL) {
                iL = fA <= ((float) iHp) ? iHp : i3;
            }
            this.f18980w = iL;
            this.hp.hp(iL);
        }
    }

    private double hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return -2.0d;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("applist");
        return com.byazt.rdt.hp.hp(((((jSONArrayOptJSONArray == null || TextUtils.isEmpty(this.jx) || !jSONArrayOptJSONArray.toString().contains(this.jx)) ? -1 : 1) * jSONObject.optDouble("content_factor", 0.0d)) + ((this.f18979l >= 10.0d ? 1 : -1) * jSONObject.optDouble("duration_factor", 0.0d)) + ((com.byazt.rdt.l.l() ? 1 : -1) * jSONObject.optDouble("night_factor", 0.0d)) + (jSONObject.optDouble("week_factor", 0.0d) * (com.byazt.rdt.l.hp() ? 1 : -1)) + ((this.hp.j() ? 1 : -1) * jSONObject.optDouble("headset_factor", 0.0d))) * jSONObject.optDouble("factor", 0.0d), jSONObject);
    }

    @Override // com.byazt.rdt.hp
    public boolean l() {
        return jx.hp().j();
    }
}
