package com.byazt.oda;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.pg.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static volatile String hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f24019l;

    public static com.byazt.ctq.jx hp(String str, com.byazt.pg.hp hpVar) {
        return ((ud) com.byazt.ym.j.getService("storage_service")).getGlobalStorage(hpVar, str);
    }

    public static String l(String str, String str2, com.byazt.pg.hp hpVar) {
        try {
            return hp(hp(), hpVar).getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static String l(String str, long j2, com.byazt.pg.hp hpVar) throws JSONException {
        String strL;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            strL = l(str, "", hpVar);
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(strL);
        if (System.currentTimeMillis() - jSONObject.getLong("time") <= j2) {
            return jSONObject.getString(f.a.f3244d);
        }
        return null;
    }

    public static void hp(String str, String str2, com.byazt.pg.hp hpVar) {
        try {
            hp(hp(), hpVar).put(str, str2);
        } catch (Throwable unused) {
        }
    }

    public static void hp(String str, String str2, com.byazt.pg.hp hpVar, int i2) throws JSONException {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f.a.f3244d, str2);
            jSONObject.put("time", System.currentTimeMillis());
            jSONObject.put("p_version", i2);
            hp(str, jSONObject.toString(), hpVar);
        } catch (JSONException unused) {
        }
    }

    public static String l(com.byazt.pg.hp hpVar) {
        if (f24019l == null) {
            f24019l = l("dev15", (String) null, hpVar);
        }
        return f24019l;
    }

    public static String hp(String str, long j2, com.byazt.pg.hp hpVar) throws JSONException {
        String strL;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            strL = l(str, "", hpVar);
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(strL);
        if (System.currentTimeMillis() - jSONObject.getLong("time") <= j2) {
            return jSONObject.getString(f.a.f3244d);
        }
        return null;
    }

    public static void l(String str, com.byazt.pg.hp hpVar, int i2) throws JSONException {
        if (str == null || str.equals(f24019l)) {
            return;
        }
        f24019l = str;
        hp("dev15", str, hpVar, i2);
    }

    public static String hp() {
        return "sp_exec_getad_config";
    }

    public static String hp(com.byazt.pg.hp hpVar) {
        if (hp == null) {
            hp = l("dev13", (String) null, hpVar);
        }
        return hp;
    }

    public static void hp(String str, com.byazt.pg.hp hpVar, int i2) throws JSONException {
        if (str == null || str.equals(hp)) {
            return;
        }
        hp = str;
        hp("dev13", str, hpVar, i2);
    }
}
