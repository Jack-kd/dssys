package com.byazt.nw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 150})
/* loaded from: classes3.dex */
public class q {
    public float hp;

    /* renamed from: l, reason: collision with root package name */
    public float f23849l;

    public q(float f2, float f3) {
        this.hp = f2;
        this.f23849l = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            q qVar = (q) obj;
            if (Float.compare(qVar.hp, this.hp) == 0 && Float.compare(qVar.f23849l, this.f23849l) == 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.hp), Float.valueOf(this.f23849l)});
    }
}
