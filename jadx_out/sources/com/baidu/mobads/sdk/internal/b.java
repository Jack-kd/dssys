package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private int f11083a = 0;

    /* renamed from: b, reason: collision with root package name */
    private List<a> f11084b = new ArrayList();

    public static b a(String str) {
        b bVar = new b();
        if (TextUtils.isEmpty(str)) {
            return bVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            bVar.f11083a = jSONObject.optInt("n", 0);
            int iOptInt = jSONObject.optInt("enc", 0);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad");
            if (iOptInt == 1) {
                String strOptString = jSONObject.optString("ad");
                if (!TextUtils.isEmpty(strOptString)) {
                    String strB = i.b(strOptString);
                    if (!TextUtils.isEmpty(strB)) {
                        jSONArrayOptJSONArray = new JSONArray(strB);
                    }
                }
            }
            bVar.f11084b = a.a(jSONArrayOptJSONArray);
            return bVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return bVar;
        }
    }

    public List<a> a() {
        return this.f11084b;
    }
}
