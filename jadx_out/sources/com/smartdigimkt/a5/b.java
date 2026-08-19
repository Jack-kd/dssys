package com.smartdigimkt.a5;

import android.text.TextUtils;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.t3.n;
import com.smartdigimkt.y3.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f39396a;

    /* renamed from: b, reason: collision with root package name */
    public HashMap f39397b;

    /* renamed from: c, reason: collision with root package name */
    public HashMap f39398c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f39399d;

    public final void a(String str, JSONObject jSONObject) {
        String strOptString = jSONObject.optString("cached");
        Map mapA = a();
        if (!TextUtils.isEmpty(strOptString) && this.f39396a != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String strOptString2 = jSONObject2.optString(next);
                    String str2 = (String) ((HashMap) mapA).get(next);
                    jSONObject.put(next, this.f39396a.opt(next));
                    if (!TextUtils.equals(strOptString2, str2)) {
                        String str3 = TextUtils.isEmpty(str) ? "1" : "2";
                        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
                        cVar.f42817a = "3000007";
                        if (!TextUtils.isEmpty(str)) {
                            cVar.f42819c = str;
                        }
                        cVar.f42828l = str3;
                        cVar.f42829m = next;
                        cVar.f42830n = strOptString2;
                        cVar.f42831o = str2;
                        h.a(cVar);
                        jSONObject2.put(next, str2);
                    }
                }
                jSONObject.put("cached", jSONObject2.toString());
            } catch (Throwable unused) {
            }
        }
        if (this instanceof a) {
            try {
                int i2 = 0;
                if (!TextUtils.isEmpty(((a) this).f39364Z)) {
                    if (((a) this).f39367c0 == null) {
                        new ArrayList();
                    }
                    ArrayList arrayList = ((a) this).f39367c0;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    if (arrayList.size() > 0 && !TextUtils.equals(((a) this).f39364Z, jSONObject.optString("at_a_cg", ""))) {
                        ArrayList arrayList2 = ((a) this).f39367c0;
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        int size = arrayList2.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Object obj = arrayList2.get(i3);
                            i3++;
                            n.a().a(i.b((String) obj));
                        }
                    }
                }
                if (!TextUtils.isEmpty(((a) this).f39365a0)) {
                    if (((a) this).f39368d0 == null) {
                        new ArrayList();
                    }
                    ArrayList arrayList3 = ((a) this).f39368d0;
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    if (arrayList3.size() > 0 && !TextUtils.equals(((a) this).f39365a0, jSONObject.optString("at_a_re", ""))) {
                        ArrayList arrayList4 = ((a) this).f39368d0;
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        int size2 = arrayList4.size();
                        int i4 = 0;
                        while (i4 < size2) {
                            Object obj2 = arrayList4.get(i4);
                            i4++;
                            n.a().a(i.b((String) obj2));
                        }
                    }
                }
                if (TextUtils.isEmpty(((a) this).f39366b0)) {
                    return;
                }
                if (((a) this).f39370e0 == null) {
                    new ArrayList();
                }
                ArrayList arrayList5 = ((a) this).f39370e0;
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                if (arrayList5.size() <= 0 || TextUtils.equals(((a) this).f39366b0, jSONObject.optString("at_a_rc", ""))) {
                    return;
                }
                ArrayList arrayList6 = ((a) this).f39370e0;
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                int size3 = arrayList6.size();
                while (i2 < size3) {
                    Object obj3 = arrayList6.get(i2);
                    i2++;
                    n.a().a(i.b((String) obj3));
                }
            } catch (Throwable unused2) {
            }
        }
    }

    public final void b(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("cached");
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        this.f39397b = map;
    }

    public final void a(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(com.anythink.core.common.m.f.aq);
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        this.f39398c = map;
    }

    public final synchronized Map a() {
        try {
            if (this.f39399d == null) {
                HashMap map = new HashMap();
                this.f39399d = map;
                HashMap map2 = this.f39397b;
                if (map2 != null) {
                    map.putAll(map2);
                }
                HashMap map3 = this.f39398c;
                if (map3 != null) {
                    this.f39399d.putAll(map3);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f39399d;
    }
}
