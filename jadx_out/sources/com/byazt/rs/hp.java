package com.byazt.rs;

import com.byazt.jz.ud;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2302, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static void hp(ud udVar, boolean z2, boolean z3, boolean z4) {
        if (udVar == null) {
            return;
        }
        String.format("sendMessage: isVisible = %s, isResume = %s, isForemost = %s", Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", z2);
            jSONObject.put("adResume", z3);
            jSONObject.put("adForemost", z4);
            udVar.l("notifyPageVisibilityState", jSONObject);
        } catch (Exception unused) {
        }
    }
}
