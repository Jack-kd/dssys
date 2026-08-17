package com.byazt.rk;

import com.byazt.gy.j;
import com.byazt.gy.s;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 30})
/* loaded from: classes3.dex */
public class jx {
    public static void a(String str) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            jVarHp.hp(str, com.byazt.np.j.COMPLETED);
        }
    }

    public static void hp(final mp mpVar, final String str, final int i2, final int i3, String str2) {
        if (mpVar == null) {
            return;
        }
        com.byazt.kt.j jVarHp = hp();
        jVarHp.l(str2, mpVar.xq());
        jVarHp.hp(str2, new com.byazt.tb.w());
        jVarHp.hp(str2, new j.hp() { // from class: com.byazt.rk.jx.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.j) {
                    com.byazt.kf.j jVar = (com.byazt.kf.j) lVar;
                    jVar.f20629q = mpVar;
                    jVar.eb = i2;
                    jVar.f20630s = str;
                    jVar.hp = i3;
                }
            }
        });
        hp(str2);
    }

    public static void j(String str) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            jVarHp.hp(str, com.byazt.np.j.BUFFERED);
        }
    }

    public static void jx(String str) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            jVarHp.hp(str, com.byazt.np.j.PREPARED);
        }
    }

    public static void l(String str) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            jVarHp.hp(str, com.byazt.np.j.INITIALIZED);
        }
    }

    public static void w(String str) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            jVarHp.hp(str, com.byazt.np.j.PAUSED);
        }
    }

    public static void jx(String str, int i2) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            jVarHp.hp(str, com.byazt.np.j.END, sVar);
        }
    }

    public static void l(String str, int i2) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            jVarHp.hp(str, com.byazt.np.j.PLAYED, sVar);
        }
    }

    public static void hp(String str) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            jVarHp.hp(str, com.byazt.np.j.CREATED);
        }
    }

    public static void hp(String str, int i2) {
        com.byazt.kt.j jVarHp = hp();
        if (jVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            jVarHp.hp(str, com.byazt.np.j.STARTED, sVar);
        }
    }

    public static com.byazt.kt.j hp() {
        return (com.byazt.kt.j) com.byazt.gy.w.hp(2);
    }
}
