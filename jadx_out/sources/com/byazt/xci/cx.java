package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.framework.UMModuleRegister;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 301})
/* loaded from: classes3.dex */
public class cx {
    public static int hp;

    /* renamed from: l, reason: collision with root package name */
    public static int f27218l;

    public static void hp(com.byazt.ctq.w wVar) {
        try {
            JSONObject jSONObject = new JSONObject(wVar.get("dpl_status_counter", ""));
            hp = jSONObject.optInt("minute", 0);
            f27218l = jSONObject.optInt(UMModuleRegister.INNER, 0);
            com.byazt.vh.hp.l();
        } catch (JSONException unused) {
        }
    }

    public static void l(com.byazt.ctq.w wVar) {
        wVar.put("dpl_status_counter", new JSONObject().toString());
    }

    public static int l() {
        return f27218l;
    }

    public static int hp() {
        return hp;
    }

    public static void hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("dpl_status_counter");
                if (jSONObjectOptJSONObject2 != null) {
                    hp = jSONObjectOptJSONObject2.optInt("minute", 0);
                    f27218l = jSONObjectOptJSONObject2.optInt(UMModuleRegister.INNER, 0);
                }
            } catch (Exception unused) {
            }
        }
    }
}
