package com.byazt.vbz;

import android.text.TextUtils;
import com.byazt.dnb.zy;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.api.KsAdSDK;
import com.qq.e.comm.managers.status.SDKStatus;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2104, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static String hp;

    /* renamed from: j, reason: collision with root package name */
    public static int f26551j;
    public static String jx;

    /* renamed from: l, reason: collision with root package name */
    public static String f26552l;

    public static String a() {
        if (!TextUtils.isEmpty(f26552l)) {
            return f26552l;
        }
        try {
            AtomicBoolean atomicBoolean = KsAdSDK.sHasInit;
            Object objInvoke = KsAdSDK.class.getMethod("getSDKVersion", null).invoke(null, null);
            if (objInvoke instanceof String) {
                String str = (String) objInvoke;
                f26552l = str;
                return str;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static String eb() {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        try {
            Object objInvoke = SDKStatus.class.getMethod("getIntegrationSDKVersion", null).invoke(null, null);
            if (objInvoke instanceof String) {
                String str = (String) objInvoke;
                hp = str;
                return str;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static void hp() throws JSONException {
        if (l() && s.u().r() && j()) {
            s.u().ky();
        }
    }

    public static boolean j() {
        JSONObject jSONObjectZp = sz.l().zp();
        return jSONObjectZp == null || jSONObjectZp.optInt("can_req_plugin", 1) == 1;
    }

    public static boolean jx() {
        return d.f21856j >= 7300;
    }

    public static boolean l() {
        return d.f21856j >= 7000;
    }

    public static int q() {
        if (f26551j == 0) {
            f26551j = zy.jx("com.byted.mixed");
        }
        return f26551j;
    }

    public static String s() {
        if (!TextUtils.isEmpty(jx)) {
            return jx;
        }
        try {
            Object obj = Class.forName("com.miui.zeus.mimo.sdk.BuildConfig").getField("VERSION_NAME").get(null);
            if (obj instanceof String) {
                String str = (String) obj;
                jx = str;
                return str;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static int w() {
        try {
            JSONObject jSONObjectZp = sz.l().zp();
            if (jSONObjectZp != null) {
                return jSONObjectZp.optInt("load_pl_conf", 0);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static int jx(String str) {
        try {
            JSONObject jSONObjectZp = sz.l().zp();
            if (jSONObjectZp != null) {
                return jSONObjectZp.optInt(str, 0);
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    public static int l(String str) {
        try {
            hp hpVar = (hp) com.byazt.ym.j.getService("adapter_dex");
            if (hpVar == null) {
                return -1;
            }
            Map<String, Map<String, Object>> adnStatusMap = hpVar.getAdnStatusMap();
            if (adnStatusMap == null) {
                return 0;
            }
            Map<String, Object> map = adnStatusMap.get("common_dex");
            int iIntValue = map != null ? ((Integer) map.get("dex_status")).intValue() : 0;
            Map<String, Object> map2 = str == null ? null : adnStatusMap.get(str);
            return iIntValue + (map2 != null ? ((Integer) map2.get("dex_status")).intValue() : 0);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean z2 = jx("use_dex_load_".concat(String.valueOf(str))) == 1;
        MediationConstant.ADN_GDT.equals(str);
        return z2;
    }

    public static void hp(String str, String str2, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            hp hpVar = (hp) com.byazt.ym.j.getService("adapter_dex");
            if (hpVar != null) {
                Map<String, Map<String, Object>> adnStatusMap = hpVar.getAdnStatusMap();
                Map<String, Object> concurrentHashMap = adnStatusMap.get(str);
                if (concurrentHashMap == null) {
                    concurrentHashMap = new ConcurrentHashMap<>();
                    adnStatusMap.put(str, concurrentHashMap);
                } else {
                    Object obj = concurrentHashMap.get(str2);
                    int iIntValue = obj == null ? 0 : ((Integer) obj).intValue();
                    if (iIntValue != 0 && iIntValue >= i2) {
                        return;
                    }
                }
                concurrentHashMap.put(str2, Integer.valueOf(i2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(String str, int i2) {
        hp("common_dex", str, i2);
    }
}
