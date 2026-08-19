package com.byazt.mg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

@com.byazt.kj.hp(hp = {0, 1, 790, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public final RandomAccessFile hp;

    @com.byazt.kj.hp(hp = {0, 1, 790, 8})
    public static class hp extends Exception {
        public hp(Throwable th) {
            super(th);
        }
    }

    public w(File file, String str) throws hp {
        try {
            this.hp = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e2) {
            throw new hp(e2);
        }
    }

    public void hp(long j2) throws IOException, hp {
        try {
            this.hp.seek(j2);
        } catch (IOException e2) {
            throw new hp(e2);
        }
    }

    public void hp(byte[] bArr, int i2, int i3) throws IOException, hp {
        try {
            this.hp.write(bArr, i2, i3);
        } catch (IOException e2) {
            throw new hp(e2);
        }
    }

    public void hp() {
        com.byazt.vk.hp.hp(this.hp);
    }
}
