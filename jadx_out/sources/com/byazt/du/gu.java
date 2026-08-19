package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.xci.mp hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jz.ud f19317l;

    public gu(com.byazt.xci.mp mpVar, com.byazt.jz.ud udVar) {
        this.hp = mpVar;
        this.f19317l = udVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar, com.byazt.jz.ud udVar) {
        xsVar.hp("adViewInfo", (com.byazt.oa.w<?, ?>) new gu(mpVar, udVar));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("container", this.f19317l.hp());
        jSONObject2.put("creative", this.f19317l.l());
        return jSONObject2;
    }
}
