package com.byazt.gc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.DigestException;

@com.byazt.kj.hp(hp = {0, 1, 524, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s implements gu {
    public final ByteBuffer hp;

    public s(ByteBuffer byteBuffer) {
        this.hp = byteBuffer.slice();
    }

    @Override // com.byazt.gc.gu
    public long hp() {
        return this.hp.capacity();
    }

    @Override // com.byazt.gc.gu
    public void hp(e eVar, long j2, int i2) throws DigestException, IOException {
        ByteBuffer byteBufferSlice;
        synchronized (this.hp) {
            this.hp.position(0);
            int i3 = (int) j2;
            this.hp.limit(i2 + i3);
            this.hp.position(i3);
            byteBufferSlice = this.hp.slice();
        }
        eVar.hp(byteBufferSlice);
    }
}
