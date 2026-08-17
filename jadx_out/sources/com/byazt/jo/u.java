package com.byazt.jo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes.dex */
public class u implements j {
    public long hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f21640l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_cache_size", this.hp);
            jSONObject.put("is_auto_play", this.f21640l);
        } catch (Throwable unused) {
        }
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void hp(boolean z2) {
        this.f21640l = z2;
    }
}
