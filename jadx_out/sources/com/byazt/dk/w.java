package com.byazt.dk;

import androidx.core.view.PointerIconCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ALL_SCROLL, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements a {
    public a hp;

    public w(a aVar) {
        this.hp = aVar;
    }

    @Override // com.byazt.dk.a
    public byte c_() throws IOException {
        return this.hp.c_();
    }

    @Override // com.byazt.dk.a
    public void d_() throws IOException {
        this.hp.d_();
    }

    @Override // com.byazt.dk.a
    public long hp(long j2) throws IOException {
        return this.hp.hp(j2);
    }

    @Override // com.byazt.dk.a
    public int j() throws IOException {
        return this.hp.j();
    }

    @Override // com.byazt.dk.a
    public int jx() {
        return this.hp.jx();
    }

    @Override // com.byazt.dk.a
    public InputStream w() throws IOException {
        d_();
        return this.hp.w();
    }

    @Override // com.byazt.dk.a
    public int hp(byte[] bArr, int i2, int i3) throws IOException {
        return this.hp.hp(bArr, i2, i3);
    }
}
