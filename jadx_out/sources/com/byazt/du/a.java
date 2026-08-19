package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 54})
/* loaded from: classes2.dex */
public class a extends com.byazt.oa.w<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public a(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("changePlaySpeedRatio", (com.byazt.oa.w<?, ?>) new a(udVar));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        WeakReference<com.byazt.jz.ud> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            float fOptDouble = (float) jSONObject.optDouble(com.sigmob.sdk.base.n.f36417C);
            if (fOptDouble > 0.0f && fOptDouble <= 3.0f) {
                this.hp.get().hp(fOptDouble);
            }
            return new JSONObject();
        }
        return new JSONObject();
    }
}
