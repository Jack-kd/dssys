package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS})
/* loaded from: classes3.dex */
public class pu {
    public boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public int f27410l;

    public pu(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("landing_page_conf");
        if (jSONObjectOptJSONObject != null) {
            this.hp = jSONObjectOptJSONObject.optInt("swipe_back_type", 0) == 1;
            this.f27410l = jSONObjectOptJSONObject.optInt("filter_track", 0);
        }
    }

    private static pu jx(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.ct();
    }

    public static boolean l(mp mpVar) {
        pu puVarJx = jx(mpVar);
        return puVarJx != null && puVarJx.f27410l == 1;
    }

    public void hp(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("swipe_back_type", this.hp ? 1 : 0);
            jSONObject2.put("filter_track", this.f27410l);
        } catch (JSONException unused) {
        }
        try {
            jSONObject.put("landing_page_conf", jSONObject2);
        } catch (JSONException unused2) {
        }
    }

    public static boolean hp(mp mpVar) {
        pu puVarJx = jx(mpVar);
        if (puVarJx == null) {
            return false;
        }
        return puVarJx.hp;
    }
}
