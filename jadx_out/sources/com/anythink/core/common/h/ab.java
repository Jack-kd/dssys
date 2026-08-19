package com.anythink.core.common.h;

import com.anythink.core.mg.api.MgComparedResult;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ab {

    /* renamed from: a, reason: collision with root package name */
    private int f3604a;

    /* renamed from: b, reason: collision with root package name */
    private int f3605b;

    /* renamed from: c, reason: collision with root package name */
    private int f3606c;

    /* renamed from: d, reason: collision with root package name */
    private double f3607d;

    /* renamed from: e, reason: collision with root package name */
    private double f3608e;

    /* renamed from: f, reason: collision with root package name */
    private String f3609f;

    /* renamed from: g, reason: collision with root package name */
    private int f3610g;

    /* renamed from: h, reason: collision with root package name */
    private long f3611h;

    /* renamed from: i, reason: collision with root package name */
    private int f3612i;

    /* renamed from: j, reason: collision with root package name */
    private String f3613j;

    private ab() {
    }

    public static ab a(cg cgVar) {
        ab abVar = new ab();
        abVar.f3604a = 1;
        abVar.f3605b = cgVar.x();
        abVar.f3606c = cgVar.A();
        abVar.f3607d = cgVar.p();
        abVar.f3613j = cgVar.g();
        a(abVar, cgVar.C());
        return abVar;
    }

    public static ab a(ay ayVar) {
        ab abVar = new ab();
        abVar.f3604a = 2;
        abVar.f3605b = ayVar.y();
        abVar.f3606c = ayVar.t();
        abVar.f3607d = ayVar.z();
        abVar.f3609f = ayVar.A();
        abVar.f3610g = ayVar.G();
        abVar.f3608e = ayVar.K();
        a(abVar, ayVar.H());
        return abVar;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.umeng.analytics.pro.bv.aI, this.f3604a);
            jSONObject.put("post_t", this.f3605b);
            jSONObject.put("price", String.valueOf(this.f3607d));
            long j2 = this.f3611h;
            if (j2 > 0) {
                jSONObject.put("real_wait_price_t", j2);
            }
            int i2 = this.f3612i;
            if (i2 > 0) {
                jSONObject.put("bp_from", i2);
            }
            if (this.f3604a == 2) {
                jSONObject.put(MediationConstant.KEY_REASON, this.f3609f);
                jSONObject.put("winner_firm_id", this.f3610g);
                double d2 = this.f3608e;
                if (d2 > 0.0d) {
                    jSONObject.put("custom_f_price", String.valueOf(d2));
                }
            }
            if (this.f3604a == 1) {
                jSONObject.put("h_code", this.f3613j);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static void a(ab abVar, MgComparedResult mgComparedResult) {
        abVar.f3611h = mgComparedResult != null ? mgComparedResult.getCpCostTime() : 0L;
        int i2 = 0;
        if (mgComparedResult != null && mgComparedResult.isCompared()) {
            i2 = mgComparedResult.isMgWin() ? 2 : 1;
        }
        abVar.f3612i = i2;
    }
}
