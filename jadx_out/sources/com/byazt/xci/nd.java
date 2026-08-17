package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1330})
/* loaded from: classes3.dex */
public class nd {
    public int hp;

    public nd(JSONObject jSONObject) {
        this.hp = 0;
        if (jSONObject == null) {
            return;
        }
        this.hp = jSONObject.optInt("playable_reward_type", 0);
    }

    private static nd jx(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.lp();
    }

    public static int l(mp mpVar) {
        com.byazt.tw.j jVarK = df.k(mpVar);
        String resolution = jVarK != null ? jVarK.getResolution() : null;
        if (TextUtils.isEmpty(resolution)) {
            return 0;
        }
        String[] strArrSplit = resolution.split("x");
        if (strArrSplit.length < 2) {
            return 0;
        }
        return Integer.parseInt(strArrSplit[0]) > Integer.parseInt(strArrSplit[1]) ? 1 : 0;
    }

    public void hp(JSONObject jSONObject) {
        try {
            jSONObject.put("playable_reward_type", this.hp);
        } catch (JSONException unused) {
        }
    }

    public static int hp(mp mpVar) {
        int i2;
        nd ndVarJx = jx(mpVar);
        if (ndVarJx == null || (i2 = ndVarJx.hp) < 0 || i2 > 1) {
            return 0;
        }
        if (!TextUtils.isEmpty(com.byazt.jz.sz.l().su()) || ec.zy(mpVar)) {
            return ndVarJx.hp;
        }
        return 1;
    }
}
