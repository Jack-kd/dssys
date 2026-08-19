package com.byazt.yu;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final s f28316w;

    public w(Context context, s sVar) {
        super(true, false);
        this.f28316w = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException, SecurityException {
        String strHp = com.byazt.hk.eb.hp(this.f28316w.w());
        if (TextUtils.isEmpty(strHp)) {
            return false;
        }
        jSONObject.put("cdid", strHp);
        return true;
    }
}
