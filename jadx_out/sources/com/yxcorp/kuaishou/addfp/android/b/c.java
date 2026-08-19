package com.yxcorp.kuaishou.addfp.android.b;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    boolean f50649a;

    /* renamed from: b, reason: collision with root package name */
    int f50650b;

    /* renamed from: c, reason: collision with root package name */
    boolean f50651c;

    /* renamed from: d, reason: collision with root package name */
    String f50652d;

    public c(String str) {
        this.f50649a = true;
        if (TextUtils.isEmpty(str)) {
            this.f50649a = false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f50650b = jSONObject.optInt(MediationConstant.KEY_ERROR_CODE, 2);
            this.f50651c = jSONObject.optBoolean("userSet", true);
            this.f50652d = jSONObject.optString(f.a.f3244d, "KWE_OTHER");
        } catch (JSONException e2) {
            this.f50649a = false;
            e2.printStackTrace();
        }
    }

    public String a(boolean z2) {
        if (!this.f50649a) {
            return "KWE_OTHER";
        }
        if (z2 != this.f50651c) {
            return "KWE_NPN";
        }
        int i2 = this.f50650b;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "KWE_OTHER" : "KWE_NS" : "KWE_N" : "KWE_PE" : "KWE_PN" : !TextUtils.isEmpty(this.f50652d) ? this.f50652d : "KWE_N";
    }
}
