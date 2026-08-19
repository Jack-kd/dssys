package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class au {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f30824a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f30825b;

    public au(Context context) {
        if (Engine.loadSuccess) {
            try {
                String strPqr = Engine.getInstance(context).pqr(Integer.valueOf(ci.f30964h).intValue(), 0, 200, "");
                if (TextUtils.isEmpty(strPqr)) {
                    return;
                }
                this.f30824a = new JSONObject(strPqr);
            } catch (Throwable unused) {
            }
        }
    }

    public String a(String str) {
        JSONObject jSONObject = this.f30824a;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getString(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public List b(String str) throws JSONException {
        JSONObject jSONObject = this.f30824a;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString(str);
            if (TextUtils.isEmpty(string) || string.length() <= 3) {
                return null;
            }
            String strA = i.a("98bb0a15913e0654348b", "0805");
            JSONArray jSONArray = new JSONArray(string);
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String string2 = jSONArray.getString(i2);
                if (string2.contains(strA)) {
                    this.f30825b = true;
                } else {
                    arrayList.add(string2);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean a() {
        return this.f30825b;
    }
}
