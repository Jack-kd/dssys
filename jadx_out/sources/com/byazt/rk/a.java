package com.byazt.rk;

import com.byazt.gy.j;
import com.byazt.kt.eb;
import com.byazt.tb.s;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 54})
/* loaded from: classes3.dex */
public class a {
    public static void hp(final mp mpVar, final String str, final int i2, final int i3, String str2) {
        if (mpVar == null) {
            return;
        }
        eb ebVarHp = hp();
        ebVarHp.l(str2, mpVar.xq());
        ebVarHp.hp(str2, new s());
        ebVarHp.hp(str2, new j.hp() { // from class: com.byazt.rk.a.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.s) {
                    com.byazt.kf.s sVar = (com.byazt.kf.s) lVar;
                    sVar.f20629q = mpVar;
                    sVar.eb = i2;
                    sVar.f20630s = str;
                    sVar.hp = i3;
                }
            }
        });
        hp(str2);
    }

    public static void j(String str) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            ebVarHp.hp(str, com.byazt.np.eb.CLICKED);
        }
    }

    public static void jx(String str) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            ebVarHp.hp(str, com.byazt.np.eb.RENDER_STARTED);
        }
    }

    public static void l(String str) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            ebVarHp.hp(str, com.byazt.np.eb.STARTED);
        }
    }

    public static void j(String str, int i2) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            ebVarHp.hp(str, com.byazt.np.eb.END, sVar);
        }
    }

    public static void jx(String str, int i2) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            ebVarHp.hp(str, com.byazt.np.eb.SHOWED, sVar);
        }
    }

    public static void l(String str, int i2) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            ebVarHp.hp(str, com.byazt.np.eb.RENDERED, sVar);
        }
    }

    public static void hp(String str) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            ebVarHp.hp(str, com.byazt.np.eb.CREATED);
        }
    }

    public static void hp(String str, int i2) {
        eb ebVarHp = hp();
        if (ebVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            ebVarHp.hp(str, com.byazt.np.eb.LOADED, sVar);
        }
    }

    public static eb hp() {
        return (eb) com.byazt.gy.w.hp(6);
    }
}
