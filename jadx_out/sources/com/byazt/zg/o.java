package com.byazt.zg;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes3.dex */
public class o {
    public static void hp(String str, boolean z2, long j2, String str2) {
        try {
            com.byazt.ctq.jx jxVarJx = jx();
            if (jxVarJx == null) {
                return;
            }
            String string = jxVarJx.getString(str, "");
            JSONObject jSONObject = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
            int i2 = 1;
            if (z2) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(cb.f11292o);
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                    jSONObject.put(cb.f11292o, jSONObjectOptJSONObject);
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("times", -1);
                if (iOptInt != -1) {
                    i2 = 1 + iOptInt;
                }
                jSONObjectOptJSONObject.put("times", i2);
                if (j2 <= 10000) {
                    long jOptInt = jSONObjectOptJSONObject.optInt("avg_req_duration", -1);
                    if (jOptInt != -1) {
                        j2 = ((jOptInt * (i2 - 1)) + j2) / i2;
                    }
                    jSONObjectOptJSONObject.put("avg_req_duration", j2);
                }
            } else {
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("fail");
                if (jSONObjectOptJSONObject2 == null) {
                    jSONObjectOptJSONObject2 = new JSONObject();
                    jSONObject.put("fail", jSONObjectOptJSONObject2);
                }
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("times", -1);
                jSONObjectOptJSONObject2.put("times", iOptInt2 == -1 ? 1 : iOptInt2 + 1);
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("error_code");
                if (jSONObjectOptJSONObject3 == null) {
                    jSONObjectOptJSONObject3 = new JSONObject();
                    jSONObjectOptJSONObject2.put("error_code", jSONObjectOptJSONObject3);
                }
                int iOptInt3 = jSONObjectOptJSONObject3.optInt(str2, -1);
                if (iOptInt3 != -1) {
                    i2 = 1 + iOptInt3;
                }
                jSONObjectOptJSONObject3.put(str2, i2);
            }
            jxVarJx.put(str, jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    private static com.byazt.ctq.jx jx() {
        try {
            if (com.byazt.di.hp.jl() != null) {
                return com.byazt.ry.j.hp(null, "gm_evt_upload_info");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void l(Map<String, Object> map) {
        try {
            Context context = com.byazt.di.l.getContext();
            SharedPreferences sharedPreferencesL = com.byazt.rz.l.l((Context) com.byazt.aw.hp.hp(context), "cb_test", 0);
            String string = sharedPreferencesL.getString(MediationConstant.ADN_KS, "");
            String string2 = sharedPreferencesL.getString(MediationConstant.ADN_GDT, "");
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                sharedPreferencesL = com.byazt.rz.l.l(context, "cb_test", 0);
                string = sharedPreferencesL.getString(MediationConstant.ADN_KS, "");
                string2 = sharedPreferencesL.getString(MediationConstant.ADN_GDT, "");
            }
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put(MediationConstant.ADN_KS, string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put(MediationConstant.ADN_GDT, string2);
            }
            map.put("cb_stacktrace", jSONObject);
            sharedPreferencesL.edit().clear().apply();
        } catch (Throwable unused) {
        }
    }

    public static int l() {
        try {
            com.byazt.ctq.jx jxVarJx = jx();
            if (jxVarJx == null) {
                return 0;
            }
            return jxVarJx.get("init_count", 0);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static JSONObject hp(String str) {
        com.byazt.ctq.jx jxVarJx;
        try {
            jxVarJx = jx();
        } catch (Throwable unused) {
        }
        if (jxVarJx == null) {
            return null;
        }
        String string = jxVarJx.getString(str, "");
        if (!TextUtils.isEmpty(string)) {
            jxVarJx.remove(str);
            return new JSONObject(string);
        }
        return null;
    }

    public static void hp(String str, long j2) {
        JSONObject jSONObject;
        try {
            com.byazt.ctq.jx jxVarJx = jx();
            if (jxVarJx == null) {
                return;
            }
            String string = jxVarJx.getString(com.baidu.mobads.sdk.internal.d.f11442a, "");
            if (TextUtils.isEmpty(string)) {
                jSONObject = new JSONObject();
            } else {
                jSONObject = new JSONObject(string);
            }
            jSONObject.put(str, j2);
            jxVarJx.put(com.baidu.mobads.sdk.internal.d.f11442a, jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONObject hp() {
        com.byazt.ctq.jx jxVarJx;
        try {
            jxVarJx = jx();
        } catch (Throwable unused) {
        }
        if (jxVarJx == null) {
            return null;
        }
        String string = jxVarJx.getString(com.baidu.mobads.sdk.internal.d.f11442a, "");
        if (!TextUtils.isEmpty(string)) {
            jxVarJx.remove(com.baidu.mobads.sdk.internal.d.f11442a);
            return new JSONObject(string);
        }
        return null;
    }

    public static void hp(int i2, int i3) {
        try {
            com.byazt.ctq.jx jxVarJx = jx();
            if (jxVarJx == null) {
                return;
            }
            int i4 = jxVarJx.getInt("low_m_cnt", 0);
            int i5 = jxVarJx.getInt("clean_invalid_cnt", 0);
            int i6 = jxVarJx.getInt("force_clean_cnt", 0) + i3;
            jxVarJx.put("low_m_cnt", i4 + 1);
            jxVarJx.put("clean_invalid_cnt", i5 + i2);
            jxVarJx.put("force_clean_cnt", i6);
        } catch (Throwable unused) {
        }
    }

    public static void hp(Map<String, Object> map) {
        try {
            com.byazt.ctq.jx jxVarJx = jx();
            if (jxVarJx == null) {
                return;
            }
            int i2 = jxVarJx.getInt("low_m_cnt", 0);
            int i3 = jxVarJx.getInt("clean_invalid_cnt", 0);
            int i4 = jxVarJx.getInt("force_clean_cnt", 0);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("low_m_cnt", i2);
            jSONObject.put("invalid_cnt", i3);
            jSONObject.put("force_cnt", i4);
            map.put("low_m_clean", jSONObject);
            jxVarJx.put("low_m_cnt", 0);
            jxVarJx.put("clean_invalid_cnt", 0);
            jxVarJx.put("force_clean_cnt", 0);
        } catch (Throwable unused) {
        }
    }

    public static void hp(int i2) {
        try {
            com.byazt.ctq.jx jxVarJx = jx();
            if (jxVarJx == null) {
                return;
            }
            jxVarJx.put("init_count", i2);
        } catch (Throwable unused) {
        }
    }
}
