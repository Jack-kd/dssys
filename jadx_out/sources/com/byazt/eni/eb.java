package com.byazt.eni;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1905, 94})
/* loaded from: classes2.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public String f19424a;
    public final Map<String, List<String>> hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f19425j;
    public final JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f19426l;

    /* renamed from: w, reason: collision with root package name */
    public String f19427w;

    public eb(String str, String str2, Map<String, List<String>> map, JSONObject jSONObject) {
        this.f19426l = str;
        this.f19425j = str2;
        this.hp = map;
        this.jx = jSONObject;
    }

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        List<String> list = this.hp.get(str);
        if (list != null) {
            list.add(str2);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        this.hp.put(str, arrayList);
    }

    public String j() {
        return this.f19425j;
    }

    public String jx() throws JSONException {
        try {
            String strOptString = this.jx.optString("expandParams");
            String str = "apppackage=" + this.f19427w + "|appsign=" + this.f19424a;
            if (!TextUtils.isEmpty(strOptString)) {
                str = strOptString + "|" + str;
            }
            this.jx.put("expandParams", str);
        } catch (Exception unused) {
        }
        JSONObject jSONObject = this.jx;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public String l() {
        return this.f19426l;
    }

    public void l(String str) {
        this.f19424a = str;
    }

    public Map<String, List<String>> hp() {
        return this.hp;
    }

    public void hp(String str) {
        this.f19427w = str;
    }
}
