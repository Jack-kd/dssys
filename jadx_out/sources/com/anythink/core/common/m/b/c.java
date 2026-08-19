package com.anythink.core.common.m.b;

import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.n.a.i;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private int f5621a;

    /* renamed from: b, reason: collision with root package name */
    private a f5622b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final int[] f5623a;

        /* renamed from: b, reason: collision with root package name */
        private final long f5624b;

        /* renamed from: c, reason: collision with root package name */
        private final b[] f5625c;

        public a(int[] iArr, long j2, b[] bVarArr) {
            this.f5623a = iArr;
            this.f5624b = j2;
            this.f5625c = bVarArr;
        }

        private long c() {
            return this.f5624b;
        }

        public final int[] a() {
            return this.f5623a;
        }

        public final b[] b() {
            return this.f5625c;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f5626a;

        /* renamed from: b, reason: collision with root package name */
        private final int f5627b;

        /* renamed from: c, reason: collision with root package name */
        private final long f5628c;

        public b(String str, int i2, long j2) {
            this.f5626a = str;
            this.f5627b = i2;
            this.f5628c = j2;
        }

        public final String a() {
            return this.f5626a;
        }

        public final int b() {
            return this.f5627b;
        }

        public final long c() {
            return this.f5628c;
        }
    }

    private c() {
    }

    public static c a(JSONObject jSONObject) {
        int[] iArr = null;
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        cVar.f5621a = jSONObject.optInt("net_type", 1);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("net_d");
        if (jSONObjectOptJSONObject != null) {
            long jOptLong = jSONObjectOptJSONObject.optLong("s_timeout", 500L);
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("s_i");
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("srv");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                iArr = new int[jSONArrayOptJSONArray.length()];
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    iArr[i2] = jSONArrayOptJSONArray.optInt(i2);
                }
            }
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i3);
                    if (jSONObjectOptJSONObject2 != null) {
                        String strOptString = jSONObjectOptJSONObject2.optString("ip");
                        if (!TextUtils.isEmpty(strOptString)) {
                            arrayList.add(new b(strOptString, jSONObjectOptJSONObject2.optInt("port", 57), jSONObjectOptJSONObject2.optLong("timeout", 500L)));
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                cVar.f5622b = new a(iArr, jOptLong, (b[]) arrayList.toArray(new b[0]));
            }
        }
        return cVar;
    }

    public final int b() {
        return this.f5621a;
    }

    public final boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        a aVar = this.f5622b;
        boolean z2 = (aVar == null || aVar.b() == null || this.f5622b.b().length <= 0 || this.f5622b.a() == null || this.f5622b.a().length <= 0 || ATSDK.isCnSDK()) ? false : true;
        if (!z2) {
            return z2;
        }
        int[] iArrA = this.f5622b.a();
        try {
            int iA = g.a(str);
            for (int i2 : iArrA) {
                if (iA == i2) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final i[] a() {
        a aVar = this.f5622b;
        i[] iVarArr = null;
        b[] bVarArrB = aVar != null ? aVar.b() : null;
        if (bVarArrB != null && bVarArrB.length != 0) {
            iVarArr = new i[bVarArrB.length];
            for (int i2 = 0; i2 < bVarArrB.length; i2++) {
                b bVar = bVarArrB[i2];
                if (bVar != null) {
                    iVarArr[i2] = new com.anythink.core.common.n.a.g(bVar.a(), bVar.b(), bVar.c());
                }
            }
        }
        return iVarArr;
    }

    private void a(int i2) {
        this.f5621a = i2;
    }

    private void a(a aVar) {
        this.f5622b = aVar;
    }
}
