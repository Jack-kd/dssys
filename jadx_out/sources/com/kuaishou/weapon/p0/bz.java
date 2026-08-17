package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class bz {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f30917a;

    public bz(Context context) {
        if (Engine.loadSuccess) {
            String strGhi = Engine.getInstance(context).ghi();
            if (TextUtils.isEmpty(strGhi)) {
                return;
            }
            try {
                this.f30917a = new JSONObject(strGhi);
            } catch (Exception unused) {
            }
        }
    }

    public String a(String str) {
        JSONObject jSONObject = this.f30917a;
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
