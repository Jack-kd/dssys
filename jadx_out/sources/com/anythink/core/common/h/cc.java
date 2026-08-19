package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class cc {

    /* renamed from: e, reason: collision with root package name */
    static final String f4155e = "reqId";

    /* renamed from: f, reason: collision with root package name */
    static final String f4156f = "reqDatetime";

    /* renamed from: g, reason: collision with root package name */
    static final String f4157g = "fillOffers";

    /* renamed from: h, reason: collision with root package name */
    static final String f4158h = "bidResps";

    /* renamed from: i, reason: collision with root package name */
    static final String f4159i = "adSourceId";

    /* renamed from: j, reason: collision with root package name */
    static final String f4160j = "price";

    /* renamed from: k, reason: collision with root package name */
    static final String f4161k = "networkFirmId";

    /* renamed from: l, reason: collision with root package name */
    static final String f4162l = "demandType";

    /* renamed from: m, reason: collision with root package name */
    static final String f4163m = "tp_bid_id";

    /* renamed from: n, reason: collision with root package name */
    static final String f4164n = "deal_type";

    /* renamed from: o, reason: collision with root package name */
    static final String f4165o = "deal_id";

    /* renamed from: p, reason: collision with root package name */
    static final String f4166p = "deal_pri";

    /* renamed from: a, reason: collision with root package name */
    String f4167a;

    /* renamed from: b, reason: collision with root package name */
    long f4168b;

    /* renamed from: c, reason: collision with root package name */
    List<a> f4169c = new ArrayList(3);

    /* renamed from: d, reason: collision with root package name */
    List<a> f4170d = new ArrayList(3);

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f4172a;

        /* renamed from: b, reason: collision with root package name */
        public String f4173b;

        /* renamed from: c, reason: collision with root package name */
        public int f4174c;

        /* renamed from: d, reason: collision with root package name */
        public double f4175d;

        /* renamed from: e, reason: collision with root package name */
        public String f4176e;

        /* renamed from: f, reason: collision with root package name */
        public int f4177f;

        /* renamed from: g, reason: collision with root package name */
        public String f4178g;

        /* renamed from: h, reason: collision with root package name */
        public String f4179h;

        /* renamed from: i, reason: collision with root package name */
        public int f4180i;

        /* renamed from: j, reason: collision with root package name */
        public ad f4181j;

        public a() {
        }

        public final synchronized JSONObject a() {
            JSONObject jSONObject;
            jSONObject = new JSONObject();
            try {
                jSONObject.put(cc.f4159i, this.f4173b);
                jSONObject.put("price", this.f4175d);
                jSONObject.put(cc.f4161k, this.f4174c);
                jSONObject.put(cc.f4162l, this.f4172a);
                jSONObject.put(cc.f4163m, this.f4176e);
                if (!TextUtils.isEmpty(this.f4178g)) {
                    jSONObject.put(cc.f4164n, this.f4178g);
                    jSONObject.put(cc.f4166p, this.f4180i);
                }
                if (!TextUtils.isEmpty(this.f4179h)) {
                    jSONObject.put(cc.f4165o, this.f4179h);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return jSONObject;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(com.anythink.core.common.h.by r6, com.anythink.core.common.h.ad r7) {
            /*
                r5 = this;
                r5.<init>()
                java.lang.String r0 = r6.G()
                r5.f4173b = r0
                if (r7 == 0) goto L12
                double r0 = r7.getPrice()
                r5.f4175d = r0
                goto L18
            L12:
                double r0 = r6.K()
                r5.f4175d = r0
            L18:
                int r0 = r6.n()
                r5.f4174c = r0
                int r0 = r6.y()
                r1 = 1
                r2 = 2
                if (r0 == 0) goto L41
                if (r0 == r1) goto L3e
                r3 = 3
                if (r0 == r2) goto L3b
                r4 = 4
                if (r0 == r3) goto L38
                if (r0 == r4) goto L3e
                r3 = 7
                if (r0 == r3) goto L3e
                r3 = 8
                if (r0 == r3) goto L41
                goto L43
            L38:
                r5.f4172a = r4
                goto L43
            L3b:
                r5.f4172a = r3
                goto L43
            L3e:
                r5.f4172a = r2
                goto L43
            L41:
                r5.f4172a = r1
            L43:
                r0 = 35
                int r6 = r6.n()
                if (r0 != r6) goto L4d
                r5.f4172a = r2
            L4d:
                java.lang.String r6 = ""
                if (r7 == 0) goto L54
                java.lang.String r0 = r7.f3674g
                goto L55
            L54:
                r0 = r6
            L55:
                r5.f4176e = r0
                r5.f4181j = r7
                if (r7 == 0) goto L60
                java.lang.String r0 = r7.t()
                goto L61
            L60:
                r0 = r6
            L61:
                r5.f4178g = r0
                r0 = 0
                if (r7 == 0) goto L6b
                int r1 = r7.s()
                goto L6c
            L6b:
                r1 = r0
            L6c:
                r5.f4177f = r1
                if (r7 == 0) goto L74
                java.lang.String r6 = r7.u()
            L74:
                r5.f4179h = r6
                if (r7 == 0) goto L7c
                int r0 = r7.v()
            L7c:
                r5.f4180i = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.cc.a.<init>(com.anythink.core.common.h.by, com.anythink.core.common.h.ad):void");
        }
    }

    private static cc b(String str) {
        cc ccVar = new cc();
        try {
            JSONObject jSONObject = new JSONObject(str);
            ccVar.a(jSONObject.getString(f4155e));
            ccVar.a(jSONObject.getLong(f4156f));
            ccVar.a(ccVar.c(jSONObject.getString(f4157g)));
            ccVar.b(ccVar.c(jSONObject.getString(f4158h)));
            return ccVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return ccVar;
        }
    }

    private synchronized long c() {
        return this.f4168b;
    }

    private synchronized JSONArray d() {
        return c(this.f4169c);
    }

    private synchronized JSONArray e() {
        return c(this.f4170d);
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put(f4155e, this.f4167a);
            jSONObject.put(f4156f, this.f4168b);
            jSONObject.put(f4157g, d());
            jSONObject.put(f4158h, e());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private synchronized List<a> c(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    a aVar = new a();
                    JSONObject jSONObject = new JSONObject(jSONArray.optString(i2));
                    aVar.f4173b = jSONObject.getString(f4159i);
                    aVar.f4175d = jSONObject.getDouble("price");
                    aVar.f4174c = jSONObject.getInt(f4161k);
                    aVar.f4172a = jSONObject.getInt(f4162l);
                    if (jSONObject.has(f4163m)) {
                        aVar.f4176e = jSONObject.getString(f4163m);
                    }
                    aVar.f4178g = jSONObject.optString(f4164n);
                    aVar.f4179h = jSONObject.optString(f4165o);
                    aVar.f4180i = jSONObject.optInt(f4166p);
                    arrayList.add(aVar);
                }
                Collections.sort(arrayList, new Comparator<a>() { // from class: com.anythink.core.common.h.cc.1
                    private static int a(a aVar2, a aVar3) {
                        return com.anythink.core.common.v.k.a(aVar2, aVar3);
                    }

                    @Override // java.util.Comparator
                    public final /* synthetic */ int compare(a aVar2, a aVar3) {
                        return com.anythink.core.common.v.k.a(aVar2, aVar3);
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return arrayList;
    }

    private synchronized void b(List<a> list) {
        this.f4170d = list;
    }

    public final synchronized void a(String str) {
        this.f4167a = str;
    }

    public final synchronized void a(long j2) {
        this.f4168b = j2;
    }

    public final synchronized String b() {
        return this.f4167a;
    }

    public final synchronized void b(a aVar) {
        a(this.f4170d, aVar);
    }

    private synchronized void a(List<a> list) {
        this.f4169c = list;
    }

    public final synchronized void a(a aVar) {
        a(this.f4169c, aVar);
    }

    private synchronized void a(List<a> list, a aVar) {
        if (aVar != null) {
            if (list.size() == 0) {
                list.add(aVar);
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    i2 = -1;
                    break;
                } else if (com.anythink.core.common.v.k.a(aVar, list.get(i2)) < 0) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 != -1) {
                list.add(i2, aVar);
                return;
            }
            list.add(aVar);
        }
    }

    private synchronized JSONArray c(List<a> list) {
        JSONArray jSONArray;
        jSONArray = new JSONArray();
        if (list != null) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                try {
                    jSONArray.put(it.next().a());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return jSONArray;
    }
}
