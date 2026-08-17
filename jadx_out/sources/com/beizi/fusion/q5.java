package com.beizi.fusion;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class q5 {

    /* renamed from: a, reason: collision with root package name */
    private String f15778a;

    /* renamed from: b, reason: collision with root package name */
    private String f15779b;

    /* renamed from: c, reason: collision with root package name */
    private String f15780c;

    /* renamed from: d, reason: collision with root package name */
    private long f15781d;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private String f15782a;

        /* renamed from: b, reason: collision with root package name */
        private String f15783b;

        /* renamed from: c, reason: collision with root package name */
        private String f15784c;

        /* renamed from: d, reason: collision with root package name */
        private long f15785d;

        public a a(String str) {
            this.f15783b = str;
            return this;
        }

        public a b(String str) {
            this.f15782a = str;
            return this;
        }

        public a c(String str) {
            this.f15784c = str;
            return this;
        }

        public a a(long j2) {
            this.f15785d = j2;
            return this;
        }

        public q5 a() {
            q5 q5Var = new q5();
            q5Var.f15778a = this.f15782a;
            q5Var.f15779b = this.f15783b;
            q5Var.f15780c = this.f15784c;
            q5Var.f15781d = this.f15785d;
            return q5Var;
        }
    }

    private q5() {
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("longitude", this.f15778a);
            jSONObject.put("latitude", this.f15779b);
            jSONObject.put("name", this.f15780c);
            jSONObject.put("timeStamp", this.f15781d);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
