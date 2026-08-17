package com.byazt.yu;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final Context f28310w;

    public sz(Context context) {
        super(true, false);
        this.f28310w = context;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        q.hp(jSONObject, "sim_region", ((TelephonyManager) this.f28310w.getSystemService("phone")).getSimCountryIso());
        return true;
    }
}
