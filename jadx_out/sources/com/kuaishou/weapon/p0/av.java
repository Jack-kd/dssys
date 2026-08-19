package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class av {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f30826a;

    public av(Context context, int i2) {
        if (Engine.loadSuccess) {
            try {
                String strPqr = Engine.getInstance(context).pqr(Integer.valueOf(ci.f30960d).intValue(), 4, i2, "");
                if (TextUtils.isEmpty(strPqr)) {
                    return;
                }
                this.f30826a = new JSONObject(strPqr);
            } catch (Throwable unused) {
            }
        }
    }

    public String a(String str) throws JSONException {
        JSONObject jSONObject = this.f30826a;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString(str);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            if (string.length() > 2) {
                return string;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
