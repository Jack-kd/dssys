package com.byazt.oa;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final String f23917a;
    public final String eb;
    public final int hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f23918j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f23919l;

    /* renamed from: s, reason: collision with root package name */
    public final String f23920s;

    /* renamed from: w, reason: collision with root package name */
    public final String f23921w;

    @com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_NO_BUFFERING_UPDATE})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f23922a;
        public String eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f23923j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f23924l;

        /* renamed from: w, reason: collision with root package name */
        public String f23925w;

        private hp() {
        }

        public hp a(String str) {
            this.f23922a = str;
            return this;
        }

        public hp eb(String str) {
            this.eb = str;
            return this;
        }

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp j(String str) {
            this.f23923j = str;
            return this;
        }

        public hp jx(String str) {
            this.jx = str;
            return this;
        }

        public hp l(String str) {
            this.f23924l = str;
            return this;
        }

        public hp w(String str) {
            this.f23925w = str;
            return this;
        }

        public u hp() {
            return new u(this);
        }
    }

    public static hp hp() {
        return new hp();
    }

    public String toString() {
        return "methodName: " + this.f23918j + ", params: " + this.f23921w + ", callbackId: " + this.f23917a + ", type: " + this.jx + ", version: " + this.f23919l + ", ";
    }

    private u(String str, int i2) {
        this.f23919l = null;
        this.jx = null;
        this.f23918j = null;
        this.f23921w = null;
        this.f23917a = str;
        this.eb = null;
        this.hp = i2;
        this.f23920s = null;
    }

    public static u hp(String str, int i2) {
        return new u(str, i2);
    }

    public static boolean hp(u uVar) {
        return uVar == null || uVar.hp != 1 || TextUtils.isEmpty(uVar.f23918j) || TextUtils.isEmpty(uVar.f23921w);
    }

    private u(hp hpVar) {
        this.f23919l = hpVar.hp;
        this.jx = hpVar.f23924l;
        this.f23918j = hpVar.jx;
        this.f23921w = hpVar.f23923j;
        this.f23917a = hpVar.f23925w;
        this.eb = hpVar.f23922a;
        this.hp = 1;
        this.f23920s = hpVar.eb;
    }
}
