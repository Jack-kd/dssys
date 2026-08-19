package com.byazt.rk;

import com.byazt.gy.j;
import com.byazt.gy.s;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(final mp mpVar, final String str, final int i2, final int i3, String str2) {
        if (mpVar == null) {
            return;
        }
        com.byazt.kt.hp hpVarHp = hp();
        hpVarHp.l(str2, mpVar.xq());
        hpVarHp.hp(str2, new com.byazt.tb.l());
        hpVarHp.hp(str2, new com.byazt.tb.hp());
        hpVarHp.hp(str2, new j.hp() { // from class: com.byazt.rk.hp.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.hp) {
                    com.byazt.kf.hp hpVar = (com.byazt.kf.hp) lVar;
                    hpVar.f20629q = mpVar;
                    hpVar.eb = i2;
                    hpVar.f20630s = str;
                    hpVar.hp = i3;
                }
            }
        });
        hp(str2);
    }

    public static void j(String str, int i2) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            hpVarHp.hp(str, com.byazt.np.hp.DOWNLOAD_FAILED, sVar);
        }
    }

    public static void jx(String str, int i2) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            hpVarHp.hp(str, com.byazt.np.hp.DOWNLOAD_STARTED, sVar);
        }
    }

    public static void l(String str, int i2) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            hpVarHp.hp(str, com.byazt.np.hp.MARKET_OPENED, sVar);
        }
    }

    public static void w(String str) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            hpVarHp.hp(str, com.byazt.np.hp.DOWNLOAD_FINISHED);
        }
    }

    public static void w(String str, int i2) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            hpVarHp.hp(str, com.byazt.np.hp.END, sVar);
        }
    }

    public static void j(String str) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            hpVarHp.hp(str, com.byazt.np.hp.DOWNLOAD_CANCELED);
        }
    }

    public static void jx(String str) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            hpVarHp.hp(str, com.byazt.np.hp.DOWNLOAD_PAUSED);
        }
    }

    public static void l(String str) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            hpVarHp.hp(str, com.byazt.np.hp.MARKET_CLOSED);
        }
    }

    public static void hp(String str) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            hpVarHp.hp(str, com.byazt.np.hp.CREATED);
        }
    }

    public static void hp(String str, int i2) {
        com.byazt.kt.hp hpVarHp = hp();
        if (hpVarHp != null) {
            s sVar = new s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            hpVarHp.hp(str, com.byazt.np.hp.STARTED, sVar);
        }
    }

    public static com.byazt.kt.hp hp() {
        return (com.byazt.kt.hp) com.byazt.gy.w.hp(3);
    }
}
