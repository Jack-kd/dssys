package com.beizi.fusion;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class v1 {

    /* renamed from: a, reason: collision with root package name */
    private String f16580a;

    /* renamed from: b, reason: collision with root package name */
    private r7 f16581b;

    /* renamed from: c, reason: collision with root package name */
    private q7 f16582c;

    /* renamed from: d, reason: collision with root package name */
    private long f16583d;

    /* renamed from: e, reason: collision with root package name */
    private String f16584e;

    /* renamed from: f, reason: collision with root package name */
    private String f16585f;

    /* renamed from: g, reason: collision with root package name */
    private String f16586g;

    /* renamed from: h, reason: collision with root package name */
    private long f16587h;

    /* renamed from: i, reason: collision with root package name */
    private long f16588i;

    /* renamed from: j, reason: collision with root package name */
    private p5 f16589j;

    /* renamed from: k, reason: collision with root package name */
    private r5 f16590k;

    /* renamed from: l, reason: collision with root package name */
    private ArrayList f16591l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f16592m;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private String f16593a;

        /* renamed from: b, reason: collision with root package name */
        private r7 f16594b;

        /* renamed from: c, reason: collision with root package name */
        private q7 f16595c;

        /* renamed from: d, reason: collision with root package name */
        private long f16596d;

        /* renamed from: e, reason: collision with root package name */
        private String f16597e;

        /* renamed from: f, reason: collision with root package name */
        private String f16598f;

        /* renamed from: g, reason: collision with root package name */
        private String f16599g;

        /* renamed from: h, reason: collision with root package name */
        private long f16600h;

        /* renamed from: i, reason: collision with root package name */
        private long f16601i;

        /* renamed from: j, reason: collision with root package name */
        private p5 f16602j;

        /* renamed from: k, reason: collision with root package name */
        private r5 f16603k;

        /* renamed from: l, reason: collision with root package name */
        private ArrayList f16604l = new ArrayList();

        /* renamed from: m, reason: collision with root package name */
        private boolean f16605m;

        public a a(r7 r7Var) {
            this.f16594b = r7Var;
            return this;
        }

        public a b(String str) {
            this.f16598f = str;
            return this;
        }

        public a c(long j2) {
            this.f16596d = j2;
            return this;
        }

        public a d(String str) {
            this.f16593a = str;
            return this;
        }

        public a a(q7 q7Var) {
            this.f16595c = q7Var;
            return this;
        }

        public a b(long j2) {
            this.f16601i = j2;
            return this;
        }

        public a c(String str) {
            this.f16597e = str;
            return this;
        }

        public a a(String str) {
            this.f16599g = str;
            return this;
        }

        public a a(long j2) {
            this.f16600h = j2;
            return this;
        }

        public a a(p5 p5Var) {
            this.f16602j = p5Var;
            return this;
        }

        public a a(r5 r5Var) {
            this.f16603k = r5Var;
            return this;
        }

        public a a(boolean z2) {
            this.f16605m = z2;
            return this;
        }

        public v1 a() {
            v1 v1Var = new v1();
            v1Var.f16584e = this.f16597e;
            v1Var.f16589j = this.f16602j;
            v1Var.f16582c = this.f16595c;
            v1Var.f16587h = this.f16600h;
            v1Var.f16581b = this.f16594b;
            v1Var.f16583d = this.f16596d;
            v1Var.f16586g = this.f16599g;
            v1Var.f16588i = this.f16601i;
            v1Var.f16590k = this.f16603k;
            v1Var.f16591l = this.f16604l;
            v1Var.f16585f = this.f16598f;
            v1Var.f16580a = this.f16593a;
            v1Var.f16592m = this.f16605m;
            return v1Var;
        }

        public void a(u1 u1Var) {
            this.f16604l.add(u1Var);
        }
    }

    public String toString() {
        return a();
    }

    private v1() {
    }

    private String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.umeng.analytics.pro.cl.f49059n, this.f16580a);
            if (this.f16592m) {
                jSONObject.put("srcType", this.f16581b.b());
                jSONObject.put("reqType", this.f16582c.b());
            } else {
                jSONObject.put("srcType", this.f16581b);
                jSONObject.put("reqType", this.f16582c);
            }
            jSONObject.put("timeStamp", this.f16583d);
            jSONObject.put("appid", this.f16584e);
            jSONObject.put("appVersion", this.f16585f);
            jSONObject.put("apkName", this.f16586g);
            jSONObject.put("appInstallTime", this.f16587h);
            jSONObject.put("appUpdateTime", this.f16588i);
            p5 p5Var = this.f16589j;
            if (p5Var != null) {
                jSONObject.put("devInfo", p5Var.a());
            }
            r5 r5Var = this.f16590k;
            if (r5Var != null) {
                jSONObject.put("envInfo", r5Var.a());
            }
            ArrayList arrayList = this.f16591l;
            if (arrayList != null && arrayList.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < this.f16591l.size(); i2++) {
                    jSONArray.put(((u1) this.f16591l.get(i2)).a());
                }
                jSONObject.put("adReqInfo", jSONArray);
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
