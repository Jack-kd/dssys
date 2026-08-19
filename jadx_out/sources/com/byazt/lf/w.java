package com.byazt.lf;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static boolean hp(String str, double d2) {
        JSONObject jSONObjectPi = sz.l().pi();
        if (jSONObjectPi != null && !TextUtils.isEmpty(str)) {
            try {
                double dOptDouble = jSONObjectPi.optDouble(str, d2);
                if (dOptDouble >= 1.0d || dOptDouble < 0.0d || com.byazt.jdb.jx.hp.contains(str)) {
                    return true;
                }
                return com.byazt.evz.l.hp((float) dOptDouble, false);
            } catch (Throwable th) {
                u.hp("sample throwable:" + th.getMessage());
            }
        }
        return true;
    }
}
