package com.umeng.analytics.pro;

import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class cx {

    /* renamed from: a, reason: collision with root package name */
    private int f49126a;

    /* renamed from: b, reason: collision with root package name */
    private String f49127b;

    /* renamed from: c, reason: collision with root package name */
    private String f49128c;

    /* renamed from: d, reason: collision with root package name */
    private int f49129d;

    /* renamed from: e, reason: collision with root package name */
    private a f49130e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f49131a;

        /* renamed from: b, reason: collision with root package name */
        private String f49132b;

        /* renamed from: c, reason: collision with root package name */
        private String f49133c;

        /* renamed from: d, reason: collision with root package name */
        private String f49134d;

        /* renamed from: e, reason: collision with root package name */
        private List<b> f49135e;

        public String a() {
            return this.f49131a;
        }

        public String b() {
            return this.f49132b;
        }

        public String c() {
            return this.f49133c;
        }

        public String d() {
            return this.f49134d;
        }

        public List<b> e() {
            return this.f49135e;
        }

        public void a(String str) {
            this.f49131a = str;
        }

        public void b(String str) {
            this.f49132b = str;
        }

        public void c(String str) {
            this.f49133c = str;
        }

        public void d(String str) {
            this.f49134d = str;
        }

        public void a(List<b> list) {
            this.f49135e = list;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private List<Integer> f49136a;

        /* renamed from: b, reason: collision with root package name */
        private String f49137b;

        /* renamed from: c, reason: collision with root package name */
        private List<Integer> f49138c;

        /* renamed from: d, reason: collision with root package name */
        private int f49139d;

        /* renamed from: e, reason: collision with root package name */
        private String f49140e;

        /* renamed from: f, reason: collision with root package name */
        private String f49141f;

        /* renamed from: g, reason: collision with root package name */
        private String f49142g;

        /* renamed from: h, reason: collision with root package name */
        private String f49143h;

        public List<Integer> a() {
            return this.f49136a;
        }

        public String b() {
            return this.f49137b;
        }

        public List<Integer> c() {
            return this.f49138c;
        }

        public int d() {
            return this.f49139d;
        }

        public String e() {
            return this.f49140e;
        }

        public String f() {
            return this.f49141f;
        }

        public String g() {
            return this.f49142g;
        }

        public String h() {
            return this.f49143h;
        }

        public void a(List<Integer> list) {
            this.f49136a = list;
        }

        public void b(List<Integer> list) {
            this.f49138c = list;
        }

        public void c(String str) {
            this.f49141f = str;
        }

        public void d(String str) {
            this.f49142g = str;
        }

        public void e(String str) {
            this.f49143h = str;
        }

        public void a(String str) {
            this.f49137b = str;
        }

        public void b(String str) {
            this.f49140e = str;
        }

        public void a(int i2) {
            this.f49139d = i2;
        }
    }

    public int a() {
        return this.f49126a;
    }

    public String b() {
        return this.f49127b;
    }

    public String c() {
        return this.f49128c;
    }

    public int d() {
        return this.f49129d;
    }

    public a e() {
        return this.f49130e;
    }

    public void a(int i2) {
        this.f49126a = i2;
    }

    public void b(String str) {
        this.f49128c = str;
    }

    public void a(String str) {
        this.f49127b = str;
    }

    public void b(int i2) {
        this.f49129d = i2;
    }

    public void a(a aVar) {
        this.f49130e = aVar;
    }

    public static cx a(JSONObject jSONObject) {
        cx cxVar = new cx();
        if (jSONObject != null) {
            try {
                cxVar.a(jSONObject.optInt("code"));
                cxVar.a(jSONObject.optString("msg"));
                cxVar.b(jSONObject.optString(cl.f49059n));
                cxVar.b(jSONObject.optInt("status"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                if (jSONObjectOptJSONObject != null) {
                    a aVar = new a();
                    aVar.a(jSONObjectOptJSONObject.optString(cl.f49048c));
                    aVar.b(jSONObjectOptJSONObject.optString(cl.f49056k));
                    aVar.c(jSONObjectOptJSONObject.optString(cl.f49057l));
                    aVar.d(jSONObjectOptJSONObject.optString(cl.f49055j));
                    if (jSONObjectOptJSONObject.has(cl.f49060o)) {
                        String strOptString = jSONObjectOptJSONObject.optString(cl.f49060o);
                        if (!TextUtils.isEmpty(strOptString)) {
                            try {
                                JSONArray jSONArray = new JSONArray(new String(ay.a(Base64.decode(strOptString, 0), UMUtils.genSin())));
                                ArrayList arrayList = new ArrayList();
                                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                    JSONObject jSONObjectOptJSONObject2 = jSONArray.optJSONObject(i2);
                                    if (jSONObjectOptJSONObject2 != null) {
                                        b bVar = new b();
                                        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray(cl.f49049d);
                                        if (jSONArrayOptJSONArray != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                                arrayList2.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i3)));
                                            }
                                            bVar.a(arrayList2);
                                        }
                                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray(cl.f49050e);
                                        if (jSONArrayOptJSONArray2 != null) {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                                                arrayList3.add(Integer.valueOf(jSONArrayOptJSONArray2.optInt(i4)));
                                            }
                                            bVar.b(arrayList3);
                                        }
                                        bVar.a(jSONObjectOptJSONObject2.optString(cl.f49061p));
                                        bVar.a(jSONObjectOptJSONObject2.optInt(cl.f49062q));
                                        bVar.b(jSONObjectOptJSONObject2.optString("start"));
                                        bVar.c(jSONObjectOptJSONObject2.optString("end"));
                                        bVar.d(jSONObjectOptJSONObject2.optString("interval"));
                                        bVar.e(jSONObjectOptJSONObject2.optString(cl.f49065t));
                                        arrayList.add(bVar);
                                    }
                                }
                                aVar.a(arrayList);
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                    }
                    cxVar.a(aVar);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return cxVar;
    }
}
