package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS})
/* loaded from: classes2.dex */
public class pu extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.jz.ud hp;

    /* renamed from: l, reason: collision with root package name */
    public WeakReference<com.byazt.dy.l> f19329l;

    public pu(com.byazt.jz.ud udVar, WeakReference<com.byazt.dy.l> weakReference) {
        this.hp = udVar;
        this.f19329l = weakReference;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar, WeakReference<com.byazt.dy.l> weakReference) {
        xsVar.hp("resumeRewardCountDown", (com.byazt.oa.w<?, ?>) new pu(udVar, weakReference));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.byazt.dy.l> weakReference = this.f19329l;
        if (weakReference != null && weakReference.get() != null) {
            this.f19329l.get().l();
            jSONObject2.put(cb.f11292o, true);
            return jSONObject2;
        }
        jSONObject2.put(cb.f11292o, false);
        return jSONObject2;
    }
}
