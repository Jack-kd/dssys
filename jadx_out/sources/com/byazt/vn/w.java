package com.byazt.vn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1312, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends e {
    public long hp;

    public w(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.byazt.vn.e
    public synchronized void hp(int i2) {
        if (i2 != -1) {
            this.hp += i2;
        }
    }

    public synchronized long l() {
        return this.hp;
    }

    @Override // com.byazt.vn.e, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j2) throws IOException {
        long jSkip;
        jSkip = super.skip(j2);
        this.hp += jSkip;
        return jSkip;
    }

    public int hp() {
        long jL = l();
        if (jL <= 2147483647L) {
            return (int) jL;
        }
        throw new ArithmeticException("The byte count " + jL + " is too large to be converted to an int");
    }
}
