package com.byazt.i;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 94})
/* loaded from: classes.dex */
public class eb {
    public static void hp(String str, long j2) {
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        if (wVarW.b()) {
            return;
        }
        wVarW.jx.setRefer(str);
        com.byazt.r.hp.hp().l("lp_app_dialog_click", wVarW);
    }

    public static void l(String str, long j2) {
        hp(str, null, j2);
    }

    public static void hp(String str, JSONObject jSONObject, long j2) {
        com.byazt.r.hp.hp().l(str, jSONObject, com.byazt.w.a.hp().w(j2));
    }

    public static void hp(String str, com.byazt.w.w wVar) {
        com.byazt.r.hp.hp().l(str, wVar);
    }

    public static void hp(int i2, com.byazt.w.w wVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i2));
        } catch (Exception unused) {
        }
        com.byazt.r.hp.hp().l("lp_compliance_error", jSONObject, wVar);
    }

    public static void hp(int i2, long j2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i2));
        } catch (Exception unused) {
        }
        com.byazt.r.hp.hp().l("lp_compliance_error", jSONObject, com.byazt.w.a.hp().w(j2));
    }
}
