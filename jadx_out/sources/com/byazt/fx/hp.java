package com.byazt.fx;

import android.content.Context;
import com.byazt.qm.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1525, 28})
/* loaded from: classes2.dex */
public class hp {
    public static int hp = 10;

    /* renamed from: j, reason: collision with root package name */
    public static int f20197j = 10;
    public static int jx = 10;

    /* renamed from: l, reason: collision with root package name */
    public static int f20198l = 10;

    /* renamed from: w, reason: collision with root package name */
    public static com.byazt.um.hp f20199w;

    public static void hp(Context context) {
    }

    public static int j() {
        return jx;
    }

    public static int jx() {
        return f20198l;
    }

    public static int l() {
        return hp;
    }

    public static int w() {
        return f20197j;
    }

    public static void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            hp = jSONObject.optInt(MediationConstant.RIT_TYPE_SPLASH, 10);
            f20198l = jSONObject.optInt("reward", 10);
            jx = jSONObject.optInt("brand", 10);
            int iOptInt = jSONObject.optInt("other", 10);
            f20197j = iOptInt;
            if (hp < 0) {
                hp = 10;
            }
            if (f20198l < 0) {
                f20198l = 10;
            }
            if (jx < 0) {
                jx = 10;
            }
            if (iOptInt < 0) {
                f20197j = 10;
            }
        } catch (Throwable th) {
            l.hp("MediaConfig", th.getMessage());
        }
    }

    public static void hp(com.byazt.um.hp hpVar) {
        f20199w = hpVar;
    }

    public static void hp() {
        com.byazt.um.hp hpVar = f20199w;
        if (hpVar != null) {
            hpVar.clearCache();
        }
    }
}
