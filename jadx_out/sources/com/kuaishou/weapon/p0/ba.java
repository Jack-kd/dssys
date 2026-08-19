package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ba {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f30837a;

    public ba(Context context, String str, int i2) {
        if (Engine.loadSuccess) {
            try {
                String strPqr = Engine.getInstance(context).pqr(i2, 0, cs.a() ? 1 : 0, str);
                if (TextUtils.isEmpty(strPqr)) {
                    return;
                }
                this.f30837a = new JSONObject(strPqr);
            } catch (Throwable unused) {
            }
        }
    }

    public String a(String str) {
        JSONObject jSONObject = this.f30837a;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getString(str);
        } catch (Exception unused) {
            return null;
        }
    }
}
