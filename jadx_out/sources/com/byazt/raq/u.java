package com.byazt.raq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1165, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public final class u {
    public static v hp;

    /* renamed from: l, reason: collision with root package name */
    public static long f25115l;

    private u() {
    }

    public static v hp() {
        synchronized (u.class) {
            try {
                v vVar = hp;
                if (vVar == null) {
                    return new v();
                }
                hp = vVar.f25116a;
                vVar.f25116a = null;
                f25115l -= 8192;
                return vVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(v vVar) {
        if (vVar.f25116a == null && vVar.eb == null) {
            if (vVar.f25117j) {
                return;
            }
            synchronized (u.class) {
                try {
                    long j2 = f25115l;
                    if (j2 + 8192 > 65536) {
                        return;
                    }
                    f25115l = j2 + 8192;
                    vVar.f25116a = hp;
                    vVar.jx = 0;
                    vVar.f25118l = 0;
                    hp = vVar;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
