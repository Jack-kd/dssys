package com.byazt.xci;

import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 311})
/* loaded from: classes3.dex */
public class t {
    public static int hp = 0;
    public static int jx = 1;

    /* renamed from: l, reason: collision with root package name */
    public static int f27545l;

    public static void hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("ugen_image_load_config")) == null) {
            return;
        }
        hp = jSONObjectOptJSONObject.optInt("api", 0);
        f27545l = jSONObjectOptJSONObject.optInt("size_limit", 0);
        jx = jSONObjectOptJSONObject.optInt("zip_level", 1);
    }

    public static int hp(int i2, int i3) {
        if (hp <= 0 || Build.VERSION.SDK_INT > hp || i2 == 0 || i3 == 0) {
            return 1;
        }
        int i4 = f27545l;
        if (i2 >= i4 || i3 >= i4) {
            return Math.max(1, jx);
        }
        return 1;
    }
}
