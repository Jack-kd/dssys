package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1270})
/* loaded from: classes3.dex */
public class su {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27531j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f27532l;

    public su(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("window_landing");
        if (jSONObjectOptJSONObject == null) {
            return;
        }
        this.hp = jSONObjectOptJSONObject.optBoolean("can_jump_to_landing", false);
        this.f27532l = jSONObjectOptJSONObject.optBoolean("can_click_to_landing", false);
        this.jx = jSONObjectOptJSONObject.optInt("auto_to_landing_type", 0);
        this.f27531j = jSONObjectOptJSONObject.optInt("auto_to_landing_time", 0);
    }

    public static int j(mp mpVar) {
        su suVarNs = ea.ns(mpVar);
        if (suVarNs == null) {
            return 0;
        }
        return suVarNs.f27531j;
    }

    public static int jx(mp mpVar) {
        su suVarNs = ea.ns(mpVar);
        if (suVarNs == null) {
            return 0;
        }
        return suVarNs.jx;
    }

    public static boolean l(mp mpVar) {
        su suVarNs = ea.ns(mpVar);
        if (suVarNs == null) {
            return false;
        }
        return suVarNs.f27532l;
    }

    public static String w(mp mpVar) {
        return mpVar == null ? "" : mpVar.s();
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("can_jump_to_landing", this.hp);
            jSONObject2.put("can_click_to_landing", this.f27532l);
            jSONObject2.put("auto_to_landing_type", this.jx);
            jSONObject2.put("auto_to_landing_time", this.f27531j);
            jSONObject.put("window_landing", jSONObject2);
        } catch (JSONException e2) {
            com.byazt.ymw.u.hp("parse json:" + e2.getMessage());
        }
    }

    public static boolean hp(mp mpVar) {
        su suVarNs = ea.ns(mpVar);
        if (suVarNs == null || !suVarNs.hp || hd.hp(mpVar) == 1) {
            return false;
        }
        if (hd.hp(mpVar) == 2 && hd.l(mpVar) == 3) {
            return false;
        }
        if (hd.hp(mpVar) == 2 && hd.l(mpVar) == 7) {
            return false;
        }
        return (mpVar.hy() == 5 || mpVar.hy() == 15) && !TextUtils.isEmpty(w(mpVar));
    }
}
