package com.byazt.ms;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 679, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23286j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23287l;

    /* renamed from: w, reason: collision with root package name */
    public byte[] f23288w;

    @com.byazt.kj.hp(hp = {0, 1, 679, 8})
    public static class hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f23289j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public String f23290l;

        /* renamed from: w, reason: collision with root package name */
        public byte[] f23291w;

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp hp(boolean z2) {
            this.f23289j = z2;
            return this;
        }

        public hp hp(byte[] bArr) {
            this.f23291w = bArr;
            return this;
        }

        public w hp() {
            w wVar = new w();
            wVar.hp = this.hp;
            wVar.f23287l = this.f23290l;
            wVar.jx = this.jx;
            wVar.f23286j = this.f23289j;
            wVar.f23288w = this.f23291w;
            return wVar;
        }
    }

    public byte[] jx() {
        return this.f23288w;
    }

    public boolean l() {
        return this.f23286j;
    }

    public String hp() {
        return this.hp;
    }
}
