package com.smartdigimkt.q3;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.anythink.core.e.m;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class c extends e {

    /* renamed from: A, reason: collision with root package name */
    public String f42795A;

    /* renamed from: B, reason: collision with root package name */
    public String f42796B;

    /* renamed from: C, reason: collision with root package name */
    public String f42797C;

    /* renamed from: D, reason: collision with root package name */
    public String f42798D;

    /* renamed from: E, reason: collision with root package name */
    public String f42799E;

    /* renamed from: F, reason: collision with root package name */
    public String f42800F;

    /* renamed from: G, reason: collision with root package name */
    public String f42801G;

    /* renamed from: H, reason: collision with root package name */
    public final String f42802H;

    /* renamed from: I, reason: collision with root package name */
    public String f42803I;

    /* renamed from: J, reason: collision with root package name */
    public String f42804J;

    /* renamed from: K, reason: collision with root package name */
    public JSONObject f42805K;

    /* renamed from: L, reason: collision with root package name */
    public String f42806L;

    /* renamed from: M, reason: collision with root package name */
    public int f42807M = -1;

    /* renamed from: N, reason: collision with root package name */
    public int f42808N = -1;

    /* renamed from: O, reason: collision with root package name */
    public int f42809O = -1;

    /* renamed from: P, reason: collision with root package name */
    public JSONObject f42810P;

    /* renamed from: Q, reason: collision with root package name */
    public String f42811Q;

    /* renamed from: R, reason: collision with root package name */
    public String f42812R;

    /* renamed from: S, reason: collision with root package name */
    public String f42813S;

    /* renamed from: T, reason: collision with root package name */
    public int f42814T;

    /* renamed from: U, reason: collision with root package name */
    public String f42815U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f42816V;

    /* renamed from: a, reason: collision with root package name */
    public String f42817a;

    /* renamed from: b, reason: collision with root package name */
    public String f42818b;

    /* renamed from: c, reason: collision with root package name */
    public String f42819c;

    /* renamed from: d, reason: collision with root package name */
    public String f42820d;

    /* renamed from: e, reason: collision with root package name */
    public String f42821e;

    /* renamed from: f, reason: collision with root package name */
    public String f42822f;

    /* renamed from: g, reason: collision with root package name */
    public String f42823g;

    /* renamed from: h, reason: collision with root package name */
    public String f42824h;

    /* renamed from: i, reason: collision with root package name */
    public String f42825i;

    /* renamed from: j, reason: collision with root package name */
    public String f42826j;

    /* renamed from: k, reason: collision with root package name */
    public String f42827k;

    /* renamed from: l, reason: collision with root package name */
    public String f42828l;

    /* renamed from: m, reason: collision with root package name */
    public String f42829m;

    /* renamed from: n, reason: collision with root package name */
    public String f42830n;

    /* renamed from: o, reason: collision with root package name */
    public String f42831o;

    /* renamed from: p, reason: collision with root package name */
    public String f42832p;

    /* renamed from: q, reason: collision with root package name */
    public String f42833q;

    /* renamed from: r, reason: collision with root package name */
    public String f42834r;

    /* renamed from: s, reason: collision with root package name */
    public String f42835s;

    /* renamed from: t, reason: collision with root package name */
    public String f42836t;

    /* renamed from: u, reason: collision with root package name */
    public String f42837u;

    /* renamed from: v, reason: collision with root package name */
    public String f42838v;

    /* renamed from: w, reason: collision with root package name */
    public String f42839w;

    /* renamed from: x, reason: collision with root package name */
    public String f42840x;

    /* renamed from: y, reason: collision with root package name */
    public String f42841y;

    /* renamed from: z, reason: collision with root package name */
    public String f42842z;

    public c() {
        SDKContext.getInstance().getClass();
        this.f42814T = -1;
    }

    public final void a(com.smartdigimkt.l3.a aVar) {
        if (aVar != null) {
            this.f42818b = aVar.f41632f;
            this.f42819c = aVar.f41627a;
            this.f42822f = String.valueOf(aVar.f41630d);
            this.f42827k = String.valueOf(aVar.f41629c);
            this.f42811Q = aVar.f41634h;
            this.f42812R = aVar.f41633g;
            this.f42814T = aVar.f41638l;
        }
    }

    public c(String str, String str2) {
        SDKContext.getInstance().getClass();
        this.f42814T = -1;
        this.f42801G = str;
        this.f42802H = str2;
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f.a.f3242b, this.f42817a);
            jSONObject.put("requestid", this.f42818b);
            jSONObject.put("unitid", this.f42819c);
            jSONObject.put(com.anythink.core.common.d.f.f2470c, this.f42820d);
            jSONObject.put("sessionid", this.f42821e);
            jSONObject.put("groupid", this.f42822f);
            jSONObject.put("unitgroupid", this.f42823g);
            jSONObject.put("timestamp", this.f42824h);
            jSONObject.put("asid", this.f42825i);
            jSONObject.put("refresh", this.f42826j);
            int i2 = this.f42809O;
            if (i2 != -1) {
                jSONObject.put(com.anythink.core.common.m.f.bh, i2);
            }
            jSONObject.put("traffic_group_id", this.f42827k);
            jSONObject.put("msg", this.f42828l);
            jSONObject.put("msg1", this.f42829m);
            jSONObject.put("msg2", this.f42830n);
            jSONObject.put("msg3", this.f42831o);
            jSONObject.put("msg4", this.f42832p);
            jSONObject.put("msg5", this.f42833q);
            jSONObject.put("msg6", this.f42834r);
            jSONObject.put("msg7", this.f42835s);
            jSONObject.put("msg8", this.f42836t);
            jSONObject.put("msg9", this.f42837u);
            jSONObject.put("msg10", this.f42838v);
            jSONObject.put("msg11", this.f42839w);
            jSONObject.put("msg12", this.f42840x);
            jSONObject.put("msg13", this.f42841y);
            jSONObject.put("msg14", this.f42842z);
            jSONObject.put("msg15", this.f42795A);
            jSONObject.put("msg16", this.f42796B);
            jSONObject.put("msg17", this.f42797C);
            jSONObject.put("msg18", this.f42798D);
            jSONObject.put("msg19", this.f42799E);
            jSONObject.put("msg20", this.f42800F);
            jSONObject.put("msg21", (Object) null);
            jSONObject.put("msg22", (Object) null);
            jSONObject.put("msg23", (Object) null);
            jSONObject.put("msg24", (Object) null);
            jSONObject.put("msg25", (Object) null);
            jSONObject.put(m.a.f8918T, this.f42803I);
            jSONObject.put(com.anythink.core.common.m.f.aj, this.f42804J);
            JSONObject jSONObject2 = this.f42805K;
            if (jSONObject2 != null) {
                jSONObject.put(m.a.aa, jSONObject2);
            }
            jSONObject.put("real_p", this.f42806L);
            int i3 = this.f42807M;
            if (i3 != -1) {
                jSONObject.put("real_g", i3);
            }
            int i4 = this.f42808N;
            if (i4 != -1) {
                jSONObject.put("real_t", i4);
            }
            JSONObject jSONObject3 = this.f42810P;
            if (jSONObject3 != null) {
                jSONObject.put("adap_c", jSONObject3);
            }
            if (!TextUtils.isEmpty(this.f42811Q)) {
                jSONObject.put("x_c", new JSONArray(this.f42811Q));
            }
            if (!TextUtils.isEmpty(this.f42812R)) {
                jSONObject.put("o_r", this.f42812R);
            }
            if (!TextUtils.isEmpty(this.f42813S)) {
                jSONObject.put("tp_bid_id_req_id", this.f42813S);
            }
            if (!this.f42816V) {
                jSONObject.put(com.anythink.core.common.m.f.bB, this.f42814T);
            }
            if (!TextUtils.isEmpty(this.f42815U)) {
                jSONObject.put("link_type", this.f42815U);
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public final void a(a aVar) {
        String str;
        if (aVar != null) {
            this.f42818b = aVar.f42750b;
            this.f42819c = aVar.f42748a;
            this.f42801G = aVar.f42752c;
            this.f42826j = String.valueOf(aVar.f42760g);
            this.f42825i = aVar.f42754d;
            this.f42811Q = aVar.f42772m;
            if (TextUtils.isEmpty(aVar.f42780q)) {
                str = aVar.f42750b;
            } else {
                str = aVar.f42780q;
            }
            this.f42812R = str;
        }
    }
}
