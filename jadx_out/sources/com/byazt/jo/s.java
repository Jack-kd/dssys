package com.byazt.jo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s implements j {
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, Object> f21638j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21639l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Map<String, Object> map = this.f21638j;
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (Throwable unused) {
                }
            }
        }
        try {
            jSONObject.put("buffers_time", this.hp);
            jSONObject.put("total_duration", this.f21639l);
            jSONObject.put("vbtt_skip_type", this.jx);
        } catch (Throwable unused2) {
        }
    }

    public void hp(int i2) {
        this.jx = i2;
    }

    public void l(long j2) {
        this.f21639l = j2;
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void hp(Map<String, Object> map) {
        this.f21638j = map;
    }
}
