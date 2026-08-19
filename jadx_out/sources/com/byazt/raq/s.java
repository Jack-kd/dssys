package com.byazt.raq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1165, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public abstract class s implements ec {
    public final ec hp;

    public s(ec ecVar) {
        if (ecVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.hp = ecVar;
    }

    @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.hp.close();
    }

    @Override // com.byazt.raq.ec
    public long hp(jx jxVar, long j2) throws IOException {
        return this.hp.hp(jxVar, j2);
    }

    public final ec l() {
        return this.hp;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.hp.toString() + ")";
    }

    @Override // com.byazt.raq.ec
    public sz hp() {
        return this.hp.hp();
    }
}
