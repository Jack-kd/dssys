package com.byazt.bki;

import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 732, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18599j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f18600l;

    @com.byazt.kj.hp(hp = {0, 1, 732, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp {
        public boolean hp = false;

        /* renamed from: l, reason: collision with root package name */
        public String f18602l = null;
        public boolean jx = false;

        /* renamed from: j, reason: collision with root package name */
        public boolean f18601j = false;

        public hp hp(boolean z2) {
            this.hp = z2;
            return this;
        }

        public hp jx(boolean z2) {
            this.f18601j = z2;
            return this;
        }

        public hp l(boolean z2) {
            this.jx = z2;
            return this;
        }

        public hp hp(String str) {
            this.f18602l = str;
            return this;
        }

        public s hp() {
            return new s(this);
        }
    }

    @Nullable
    public String hp() {
        return this.f18600l;
    }

    public boolean j() {
        return this.f18599j;
    }

    public boolean jx() {
        return this.jx;
    }

    public boolean l() {
        return this.hp;
    }

    private s(hp hpVar) {
        this.hp = hpVar.hp;
        this.f18600l = hpVar.f18602l;
        this.jx = hpVar.jx;
        this.f18599j = hpVar.f18601j;
    }
}
