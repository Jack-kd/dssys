package com.byazt.jkd;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 54})
/* loaded from: classes.dex */
public class a {
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f21527l = true;

    public static a hp(String str) {
        a aVar = new a();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                aVar.hp = jSONObject.optBoolean("encrypt", false);
                aVar.f21527l = jSONObject.optBoolean("wait_io", true);
            } catch (Throwable unused) {
            }
        }
        return aVar;
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("encrypt", this.hp);
            jSONObject.put("wait_io", this.f21527l);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
