package com.byazt.w;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static volatile s hp;

    private s() {
    }

    public static s hp() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new s();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(int i2, int i3, com.byazt.zv.l lVar) {
        if (lVar == null) {
            return;
        }
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(lVar.ec());
        if (hpVarHp.hp("report_api_hijack", 0) == 0) {
            return;
        }
        int i4 = i3 - i2;
        if (i2 <= 0 || i4 <= hpVarHp.hp("check_api_hijack_version_code_diff", 500)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version_code_diff", i4);
            jSONObject.put("installed_version_code", i3);
            jSONObject.put("hijack_type", 1);
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().l("api_hijack", jSONObject, lVar);
    }
}
