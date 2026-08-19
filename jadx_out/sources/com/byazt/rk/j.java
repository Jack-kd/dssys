package com.byazt.rk;

import com.byazt.gy.j;
import com.byazt.gy.s;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 38})
/* loaded from: classes3.dex */
public class j {
    public static boolean a(String str) {
        com.byazt.gy.l context = hp().getContext(str);
        return (context instanceof com.byazt.kf.w) && ((com.byazt.kf.w) context).hp != null;
    }

    public static void hp(final mp mpVar, final String str, final int i2, String str2) {
        if (mpVar == null) {
            return;
        }
        com.byazt.kt.w wVarHp = hp();
        wVarHp.l(str2, mpVar.xq());
        wVarHp.hp(str2, new com.byazt.tb.a());
        wVarHp.hp(str2, new j.hp() { // from class: com.byazt.rk.j.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.w) {
                    com.byazt.kf.w wVar = (com.byazt.kf.w) lVar;
                    mp mpVar2 = mpVar;
                    wVar.f20629q = mpVar2;
                    wVar.eb = i2;
                    wVar.f20630s = str;
                    wVar.f22030j = mpVar2.hy();
                }
            }
        });
        hp(str2);
    }

    public static void j(String str) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            wVarHp.hp(str, com.byazt.np.w.INVISIBLED);
        }
    }

    public static void jx(String str) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            wVarHp.hp(str, com.byazt.np.w.VISIBLED);
        }
    }

    public static void l(String str) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            wVarHp.hp(str, com.byazt.np.w.ATTACHED);
        }
    }

    public static void w(String str) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            wVarHp.hp(str, com.byazt.np.w.DETACHED);
        }
    }

    public static void l(String str, int i2) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            wVarHp.hp(str, com.byazt.np.w.END, sVar);
        }
    }

    public static void hp(String str) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            wVarHp.hp(str, com.byazt.np.w.CREATED);
        }
    }

    public static void hp(String str, int i2) {
        com.byazt.kt.w wVarHp = hp();
        if (wVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            wVarHp.hp(str, com.byazt.np.w.FOCUSED, sVar);
        }
    }

    public static com.byazt.kt.w hp() {
        return (com.byazt.kt.w) com.byazt.gy.w.hp(5);
    }
}
