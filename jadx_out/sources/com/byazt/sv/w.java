package com.byazt.sv;

import com.byazt.raq.eb;
import com.byazt.raq.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends eb {
    public boolean hp;

    public w(vv vvVar) {
        super(vvVar);
    }

    @Override // com.byazt.raq.eb, com.byazt.raq.vv
    public void a_(com.byazt.raq.jx jxVar, long j2) throws IOException {
        if (this.hp) {
            jxVar.s(j2);
            return;
        }
        try {
            super.a_(jxVar, j2);
        } catch (IOException e2) {
            this.hp = true;
            hp(e2);
        }
    }

    @Override // com.byazt.raq.eb, com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.hp) {
            return;
        }
        try {
            super.close();
        } catch (IOException e2) {
            this.hp = true;
            hp(e2);
        }
    }

    @Override // com.byazt.raq.eb, com.byazt.raq.vv, java.io.Flushable
    public void flush() throws IOException {
        if (this.hp) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e2) {
            this.hp = true;
            hp(e2);
        }
    }

    public void hp(IOException iOException) {
    }
}
