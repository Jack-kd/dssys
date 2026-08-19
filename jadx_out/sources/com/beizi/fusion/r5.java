package com.beizi.fusion;

import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class r5 {

    /* renamed from: a, reason: collision with root package name */
    private n7 f15874a;

    /* renamed from: b, reason: collision with root package name */
    private m7 f15875b;

    /* renamed from: c, reason: collision with root package name */
    private q5 f15876c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f15877d;

    /* renamed from: e, reason: collision with root package name */
    private int f15878e;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private n7 f15879a;

        /* renamed from: b, reason: collision with root package name */
        private m7 f15880b;

        /* renamed from: c, reason: collision with root package name */
        private q5 f15881c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f15882d;

        /* renamed from: e, reason: collision with root package name */
        private int f15883e;

        public a a(n7 n7Var) {
            this.f15879a = n7Var;
            return this;
        }

        public a a(m7 m7Var) {
            this.f15880b = m7Var;
            return this;
        }

        public a a(q5 q5Var) {
            this.f15881c = q5Var;
            return this;
        }

        public a a(boolean z2) {
            this.f15882d = z2;
            return this;
        }

        public a a(int i2) {
            this.f15883e = i2;
            return this;
        }

        public r5 a() {
            r5 r5Var = new r5();
            r5Var.f15876c = this.f15881c;
            r5Var.f15874a = this.f15879a;
            r5Var.f15875b = this.f15880b;
            r5Var.f15877d = this.f15882d;
            r5Var.f15878e = this.f15883e;
            return r5Var;
        }
    }

    private r5() {
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f15877d) {
                jSONObject.put(TKDownloadReason.KSAD_TK_NET, this.f15874a.b());
                jSONObject.put("isp", this.f15875b.b());
            } else {
                jSONObject.put(TKDownloadReason.KSAD_TK_NET, this.f15874a);
                jSONObject.put("isp", this.f15875b);
            }
            q5 q5Var = this.f15876c;
            if (q5Var != null) {
                jSONObject.put("geo", q5Var.a());
            }
            jSONObject.put("isVpn", this.f15878e);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
