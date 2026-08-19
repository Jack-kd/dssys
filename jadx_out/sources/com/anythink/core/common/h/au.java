package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class au {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3832a = "au";

    /* renamed from: b, reason: collision with root package name */
    public static final int f3833b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f3834c = 0;

    /* renamed from: d, reason: collision with root package name */
    String f3835d;

    /* renamed from: e, reason: collision with root package name */
    int f3836e;

    /* renamed from: f, reason: collision with root package name */
    List<String> f3837f;

    /* renamed from: g, reason: collision with root package name */
    Set<String> f3838g;

    /* renamed from: h, reason: collision with root package name */
    int f3839h = 0;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f3840a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f3841b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f3842c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f3843d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f3844e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final List<Integer> f3845f = new ArrayList(Arrays.asList(1, 2, 3, 4, 5));

        public static boolean a(int i2) {
            return f3845f.contains(Integer.valueOf(i2));
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3846a = "token";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3847b = "code";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3848c = "pl_ids";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3849d = "status";
    }

    private au() {
    }

    public final boolean a() {
        return this.f3839h == 1;
    }

    public final JSONObject b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", this.f3836e);
            jSONObject.put("token", this.f3835d);
            if (this.f3837f != null) {
                jSONObject.put(b.f3848c, new JSONArray((Collection) this.f3837f));
            }
            jSONObject.put("status", this.f3839h);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final String c() {
        return this.f3835d;
    }

    public final int d() {
        return this.f3836e;
    }

    public final List<String> e() {
        return this.f3837f;
    }

    public final Set<String> f() {
        return this.f3838g;
    }

    public final int g() {
        return this.f3839h;
    }

    public final void h() {
        this.f3839h = 1;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("HeartBeatActionInfo{token='");
        sb.append(this.f3835d);
        sb.append('\'');
        sb.append(", actionCode=");
        sb.append(this.f3836e);
        if (this.f3837f != null) {
            str = ", placementIdList=" + this.f3837f;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(", status=");
        sb.append(this.f3839h);
        sb.append('}');
        return sb.toString();
    }

    public static au a(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        ArrayList arrayList = null;
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("code", 0);
        String strOptString = jSONObject.optString("token");
        if (!a.a(iOptInt) || TextUtils.isEmpty(strOptString)) {
            return null;
        }
        if ((iOptInt == 1 || iOptInt == 2) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(b.f3848c)) != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                String strOptString2 = jSONArrayOptJSONArray.optString(i2);
                if (!TextUtils.isEmpty(strOptString2)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(strOptString2);
                }
            }
        }
        int iOptInt2 = jSONObject.optInt("status", 0);
        au auVar = new au();
        auVar.f3835d = strOptString;
        auVar.f3836e = iOptInt;
        auVar.f3837f = arrayList;
        auVar.f3839h = iOptInt2;
        return auVar;
    }

    public final void b(JSONObject jSONObject) {
        try {
            jSONObject.put("code", this.f3836e);
            jSONObject.put("token", this.f3835d);
            int i2 = this.f3836e;
            if ((i2 == 1 || i2 == 2) && this.f3837f != null) {
                jSONObject.put(b.f3848c, new JSONArray((Collection) this.f3837f));
            }
        } catch (Throwable unused) {
        }
    }

    private void a(String str) {
        this.f3835d = str;
    }

    private void a(int i2) {
        this.f3836e = i2;
    }

    private void a(List<String> list) {
        this.f3837f = list;
    }

    public final void a(Set<String> set) {
        this.f3838g = set;
    }

    public final boolean a(au auVar) {
        return this.f3836e == auVar.f3836e && TextUtils.equals(this.f3835d, auVar.f3835d);
    }
}
