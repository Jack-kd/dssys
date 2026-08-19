package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    private List<a> f4362a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f4363a;

        public final String a() {
            return this.f4363a;
        }

        private void a(String str) {
            this.f4363a = str;
        }
    }

    private s() {
    }

    public static s a(JSONObject jSONObject) {
        a aVar;
        s sVar = new s();
        try {
            sVar.f4362a = new ArrayList();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(itKeys.next());
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("name");
                    if (TextUtils.isEmpty(strOptString)) {
                        aVar = null;
                    } else {
                        aVar = new a();
                        aVar.f4363a = strOptString;
                    }
                    if (aVar != null) {
                        sVar.f4362a.add(aVar);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return sVar;
    }

    private static a b(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("name");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        a aVar = new a();
        aVar.f4363a = strOptString;
        return aVar;
    }

    public final List<a> a() {
        return this.f4362a;
    }
}
