package com.byazt.xh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT, 30})
/* loaded from: classes3.dex */
public final class jx {
    public hp hp;

    /* renamed from: l, reason: collision with root package name */
    public l f27661l;

    public enum hp {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT, 1055})
    /* renamed from: com.byazt.xh.jx$jx, reason: collision with other inner class name */
    public static class C0405jx {
        public static final jx hp = new jx();
    }

    public interface l {
        void hp(String str, String str2);
    }

    public static void hp(hp hpVar) {
        synchronized (jx.class) {
            C0405jx.hp.hp = hpVar;
        }
    }

    public static void l(String str, String str2) {
        if (C0405jx.hp.hp.compareTo(hp.DEBUG) <= 0) {
            jx unused = C0405jx.hp;
        }
    }

    private jx() {
        this.hp = hp.OFF;
        this.f27661l = new com.byazt.xh.l();
    }

    public static void hp(String str, String str2) {
        if (C0405jx.hp.hp.compareTo(hp.ERROR) <= 0) {
            C0405jx.hp.f27661l.hp(str, str2);
        }
    }
}
