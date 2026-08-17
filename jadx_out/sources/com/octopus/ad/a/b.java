package com.octopus.ad.a;

import com.octopus.ad.Octopus;
import com.octopus.ad.a.f;
import com.octopus.ad.a.g;
import com.octopus.ad.internal.q;
import com.octopus.ad.model.ShakeValue;
import com.octopus.ad.model.UserProfile;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f33242a;

        /* renamed from: b, reason: collision with root package name */
        private String f33243b;

        /* renamed from: c, reason: collision with root package name */
        private String f33244c;

        /* renamed from: d, reason: collision with root package name */
        private long f33245d;

        /* renamed from: e, reason: collision with root package name */
        private String f33246e;

        /* renamed from: com.octopus.ad.a.b$a$a, reason: collision with other inner class name */
        public static final class C0708a {

            /* renamed from: a, reason: collision with root package name */
            private String f33247a;

            /* renamed from: b, reason: collision with root package name */
            private String f33248b;

            /* renamed from: c, reason: collision with root package name */
            private String f33249c;

            /* renamed from: d, reason: collision with root package name */
            private long f33250d;

            /* renamed from: e, reason: collision with root package name */
            private String f33251e;

            public C0708a a(String str) {
                this.f33247a = str;
                return this;
            }

            public C0708a b(String str) {
                this.f33248b = str;
                return this;
            }

            public C0708a c(String str) {
                this.f33249c = str;
                return this;
            }

            public a a() {
                a aVar = new a();
                aVar.f33245d = this.f33250d;
                aVar.f33244c = this.f33249c;
                aVar.f33246e = this.f33251e;
                aVar.f33243b = this.f33248b;
                aVar.f33242a = this.f33247a;
                return aVar;
            }
        }

        private a() {
        }

        public JSONObject a() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("slotId", this.f33242a);
                jSONObject.put("spaceParam", this.f33243b);
                jSONObject.put("requestUUID", this.f33244c);
                jSONObject.put("channelReserveTs", this.f33245d);
                jSONObject.put("sdkExtInfo", this.f33246e);
                jSONObject.put("ssl", q.a().f35016g);
                jSONObject.put("ipv6", q.a().f35017h);
                return jSONObject;
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                return null;
            }
        }
    }

    /* renamed from: com.octopus.ad.a.b$b, reason: collision with other inner class name */
    public static class C0709b {

        /* renamed from: a, reason: collision with root package name */
        private String f33252a;

        /* renamed from: b, reason: collision with root package name */
        private String f33253b;

        /* renamed from: c, reason: collision with root package name */
        private String f33254c;

        /* renamed from: d, reason: collision with root package name */
        private g.i f33255d;

        /* renamed from: e, reason: collision with root package name */
        private g.EnumC0713g f33256e;

        /* renamed from: f, reason: collision with root package name */
        private long f33257f;

        /* renamed from: g, reason: collision with root package name */
        private String f33258g;

        /* renamed from: h, reason: collision with root package name */
        private String f33259h;

        /* renamed from: i, reason: collision with root package name */
        private String f33260i;

        /* renamed from: j, reason: collision with root package name */
        private String f33261j;

        /* renamed from: k, reason: collision with root package name */
        private String f33262k;

        /* renamed from: l, reason: collision with root package name */
        private int f33263l;

        /* renamed from: m, reason: collision with root package name */
        private long f33264m;

        /* renamed from: n, reason: collision with root package name */
        private long f33265n;

        /* renamed from: o, reason: collision with root package name */
        private boolean f33266o;

        /* renamed from: p, reason: collision with root package name */
        private ShakeValue f33267p;

        /* renamed from: q, reason: collision with root package name */
        private f.a f33268q;

        /* renamed from: r, reason: collision with root package name */
        private f.c f33269r;

        /* renamed from: s, reason: collision with root package name */
        private f.b f33270s;

        /* renamed from: t, reason: collision with root package name */
        private ArrayList<a> f33271t;

        /* renamed from: com.octopus.ad.a.b$b$a */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            private String f33272a;

            /* renamed from: b, reason: collision with root package name */
            private String f33273b;

            /* renamed from: c, reason: collision with root package name */
            private String f33274c;

            /* renamed from: d, reason: collision with root package name */
            private g.i f33275d;

            /* renamed from: e, reason: collision with root package name */
            private g.EnumC0713g f33276e;

            /* renamed from: f, reason: collision with root package name */
            private long f33277f;

            /* renamed from: g, reason: collision with root package name */
            private String f33278g;

            /* renamed from: h, reason: collision with root package name */
            private String f33279h;

            /* renamed from: i, reason: collision with root package name */
            private String f33280i;

            /* renamed from: j, reason: collision with root package name */
            private String f33281j;

            /* renamed from: k, reason: collision with root package name */
            private String f33282k;

            /* renamed from: l, reason: collision with root package name */
            private int f33283l;

            /* renamed from: m, reason: collision with root package name */
            private long f33284m;

            /* renamed from: n, reason: collision with root package name */
            private long f33285n;

            /* renamed from: p, reason: collision with root package name */
            private ShakeValue f33287p;

            /* renamed from: q, reason: collision with root package name */
            private f.a f33288q;

            /* renamed from: r, reason: collision with root package name */
            private f.c f33289r;

            /* renamed from: s, reason: collision with root package name */
            private f.b f33290s;

            /* renamed from: o, reason: collision with root package name */
            private boolean f33286o = true;

            /* renamed from: t, reason: collision with root package name */
            private ArrayList<a> f33291t = new ArrayList<>();

            public a a(String str) {
                this.f33272a = str;
                return this;
            }

            public a b(String str) {
                this.f33273b = str;
                return this;
            }

            public a c(String str) {
                this.f33274c = str;
                return this;
            }

            public a d(String str) {
                this.f33278g = str;
                return this;
            }

            public a e(String str) {
                this.f33279h = str;
                return this;
            }

            public a f(String str) {
                this.f33280i = str;
                return this;
            }

            public a g(String str) {
                this.f33281j = str;
                return this;
            }

            public a h(String str) {
                this.f33282k = str;
                return this;
            }

            public a a(g.i iVar) {
                this.f33275d = iVar;
                return this;
            }

            public a b(long j2) {
                this.f33284m = j2;
                return this;
            }

            public a c(long j2) {
                this.f33285n = j2;
                return this;
            }

            public a a(g.EnumC0713g enumC0713g) {
                this.f33276e = enumC0713g;
                return this;
            }

            public a a(long j2) {
                this.f33277f = j2;
                return this;
            }

            public a a(int i2) {
                this.f33283l = i2;
                return this;
            }

            public a a(boolean z2) {
                this.f33286o = z2;
                return this;
            }

            public a a(ShakeValue shakeValue) {
                this.f33287p = shakeValue;
                return this;
            }

            public a a(f.a aVar) {
                this.f33288q = aVar;
                return this;
            }

            public a a(f.c cVar) {
                this.f33289r = cVar;
                return this;
            }

            public a a(f.b bVar) {
                this.f33290s = bVar;
                return this;
            }

            public C0709b a() {
                C0709b c0709b = new C0709b();
                c0709b.f33258g = this.f33278g;
                c0709b.f33259h = this.f33279h;
                c0709b.f33263l = this.f33283l;
                c0709b.f33268q = this.f33288q;
                c0709b.f33256e = this.f33276e;
                c0709b.f33264m = this.f33284m;
                c0709b.f33255d = this.f33275d;
                c0709b.f33257f = this.f33277f;
                c0709b.f33261j = this.f33281j;
                c0709b.f33262k = this.f33282k;
                c0709b.f33265n = this.f33285n;
                c0709b.f33266o = this.f33286o;
                c0709b.f33267p = this.f33287p;
                c0709b.f33269r = this.f33289r;
                c0709b.f33270s = this.f33290s;
                c0709b.f33271t = this.f33291t;
                c0709b.f33260i = this.f33280i;
                c0709b.f33252a = this.f33272a;
                c0709b.f33253b = this.f33273b;
                c0709b.f33254c = this.f33274c;
                return c0709b;
            }

            public void a(a aVar) {
                this.f33291t.add(aVar);
            }
        }

        public String toString() {
            return a();
        }

        private C0709b() {
        }

        private String a() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(cl.f49059n, this.f33252a);
                jSONObject.put("soVersion", this.f33253b);
                jSONObject.put("groupVersion", this.f33254c);
                jSONObject.put("srcType", this.f33255d);
                jSONObject.put("reqType", this.f33256e);
                jSONObject.put("timeStamp", this.f33257f);
                jSONObject.put("appid", this.f33258g);
                jSONObject.put("reqid", this.f33259h);
                jSONObject.put("retryReq", this.f33263l);
                jSONObject.put("appVersion", this.f33260i);
                jSONObject.put(cl.f49061p, this.f33261j);
                jSONObject.put("packageName", this.f33262k);
                jSONObject.put("appInstallTime", this.f33264m);
                jSONObject.put("appUpdateTime", this.f33265n);
                jSONObject.put("isCanShake", this.f33266o ? 1 : 0);
                if (this.f33267p != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("acceleration", this.f33267p.getAcceleration());
                    jSONObject2.put("angle", this.f33267p.getAngle());
                    jSONObject2.put("time", this.f33267p.getTime());
                    jSONObject.put("shakeValue", jSONObject2);
                }
                UserProfile userProfile = Octopus.getUserProfile();
                if (userProfile != null) {
                    jSONObject.put("userProfile", userProfile.toJson());
                }
                f.a aVar = this.f33268q;
                if (aVar != null) {
                    jSONObject.put("devInfo", aVar.a());
                }
                f.c cVar = this.f33269r;
                if (cVar != null) {
                    jSONObject.put("envInfo", cVar.a());
                }
                f.b bVar = this.f33270s;
                if (bVar != null) {
                    jSONObject.put("locInfo", bVar.a());
                }
                ArrayList<a> arrayList = this.f33271t;
                if (arrayList != null && !arrayList.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i2 = 0; i2 < this.f33271t.size(); i2++) {
                        jSONArray.put(this.f33271t.get(i2).a());
                    }
                    jSONObject.put("adReqInfo", jSONArray);
                }
                return jSONObject.toString();
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                return null;
            }
        }
    }
}
