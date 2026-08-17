package com.byazt.jo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w implements j {
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21648j = 0;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21649l;

    /* renamed from: w, reason: collision with root package name */
    public int f21650w;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.hp);
            jSONObject.put("buffers_time", this.f21649l);
            jSONObject.put("break_reason", this.jx);
            jSONObject.put("video_backup", this.f21648j);
            jSONObject.put("vbtt_skip_type", this.f21650w);
        } catch (Throwable unused) {
        }
    }

    public void hp(int i2) {
        this.f21650w = i2;
    }

    public void jx(int i2) {
        this.f21648j = i2;
    }

    public void l(long j2) {
        this.f21649l = j2;
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void l(int i2) {
        this.jx = i2;
    }
}
