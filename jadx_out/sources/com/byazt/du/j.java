package com.byazt.du;

import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 38})
/* loaded from: classes2.dex */
public class j extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.jz.ud jx;
    public AtomicBoolean hp = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public AtomicBoolean f19320l = new AtomicBoolean(false);

    public j(com.byazt.jz.ud udVar) {
        this.jx = udVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("businessStatusNotify", (com.byazt.oa.w<?, ?>) new j(udVar));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null && this.jx != null) {
            int iOptInt = jSONObject.optInt("status", 0);
            if (iOptInt == 0) {
                this.jx.a(0);
                return jSONObject2;
            }
            if (iOptInt == 1) {
                int iOptInt2 = jSONObject.optInt("completed", 0);
                int iOptInt3 = jSONObject.optInt("finished", 0);
                if (iOptInt2 == 1 && this.hp.compareAndSet(false, true)) {
                    this.jx.a(1);
                }
                if (iOptInt3 == 1 && this.f19320l.compareAndSet(false, true)) {
                    this.jx.a(2);
                }
            }
        }
        return jSONObject2;
    }
}
