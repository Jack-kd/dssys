package com.byazt.jkd;

import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 45})
/* loaded from: classes.dex */
public class e {
    public static boolean a() {
        return w() > 0;
    }

    public static boolean eb() {
        return sz.l().ds() == 1;
    }

    public static int hp() {
        JSONObject jSONObjectRl = sz.l().rl();
        if (jSONObjectRl == null) {
            return 0;
        }
        return jSONObjectRl.optInt("live_max_count", 0);
    }

    public static boolean j() {
        return l() > 0;
    }

    public static boolean jx() {
        return hp() > 0;
    }

    public static int l() {
        JSONObject jSONObjectRl = sz.l().rl();
        if (jSONObjectRl != null && d.f21856j >= 7200) {
            return jSONObjectRl.optInt("live_init_max_count", 0);
        }
        return 0;
    }

    public static int w() {
        JSONObject jSONObjectRl = sz.l().rl();
        if (jSONObjectRl == null) {
            return 0;
        }
        return jSONObjectRl.optInt("pangle_max_count", 0);
    }

    public static boolean hp(String str) {
        if (TextUtils.equals(str, "com.byted.pangle")) {
            return a();
        }
        if (TextUtils.equals(str, "com.byted.live.lite")) {
            return jx();
        }
        return false;
    }

    public static int l(String str) {
        if (TextUtils.equals(str, "com.byted.pangle")) {
            return w();
        }
        if (TextUtils.equals(str, "com.byted.live.lite")) {
            return hp();
        }
        return 0;
    }
}
