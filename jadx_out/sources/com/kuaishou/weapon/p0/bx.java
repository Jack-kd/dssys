package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class bx {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f30915a;

    public bx(Context context) {
        if (Engine.loadSuccess) {
            String strFgh = Engine.getInstance(context).fgh();
            if (TextUtils.isEmpty(strFgh)) {
                return;
            }
            try {
                this.f30915a = new JSONObject(strFgh);
            } catch (Exception unused) {
            }
        }
    }

    public String a(String str) {
        JSONObject jSONObject = this.f30915a;
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
