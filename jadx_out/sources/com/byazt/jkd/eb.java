package com.byazt.jkd;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 94})
/* loaded from: classes.dex */
public class eb {
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f21529l = false;
    public boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21528j = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21530w = false;

    public static eb hp(String str) {
        boolean zOptBoolean;
        eb ebVar = new eb();
        if (TextUtils.isEmpty(str)) {
            com.byazt.dnb.eb.hp().delete();
            return ebVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            ebVar.hp = jSONObject.optBoolean("use_csj_main", false);
            ebVar.f21529l = jSONObject.optBoolean("use_layze_layout", false);
            ebVar.jx = jSONObject.optBoolean("create_ad_in_io", false);
            ebVar.f21528j = jSONObject.optBoolean("opt_panel_view", false);
            zOptBoolean = jSONObject.optBoolean("so_lock", false);
            ebVar.f21530w = zOptBoolean;
        } catch (Throwable unused) {
        }
        if (zOptBoolean) {
            com.byazt.dnb.eb.hp().mkdirs();
            return ebVar;
        }
        com.byazt.dnb.eb.hp().delete();
        return ebVar;
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("use_csj_main", this.hp);
            jSONObject.put("use_layze_layout", this.f21529l);
            jSONObject.put("create_ad_in_io", this.jx);
            jSONObject.put("opt_panel_view", this.f21528j);
            jSONObject.put("so_lock", this.f21530w);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
