package com.byazt.dn;

import android.content.Context;
import android.view.View;
import com.byazt.ff.s;
import com.byazt.gog.jx;
import com.byazt.jz.n;
import com.byazt.jz.sz;
import com.byazt.sw.hp;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_START_PLAY_BUFFER_THRES, 28})
/* loaded from: classes2.dex */
public class hp {
    public static void hp(View view, mp mpVar, Context context) {
        if (mpVar == null) {
            return;
        }
        if (context == null) {
            context = sz.getContext();
        }
        String strL = ky.l(mpVar);
        com.byazt.go.hp hpVar = new com.byazt.go.hp(context, mpVar, strL, ky.j(strL));
        jx jxVarHp = hp(mpVar, context, strL);
        if (jxVarHp != null) {
            ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(jxVarHp);
        }
        ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp((hp.InterfaceC0368hp) n.jx(mpVar.jm(), hp.InterfaceC0368hp.class));
        hpVar.hp(view, new e());
    }

    private static jx l(mp mpVar, Context context, String str) {
        if (mpVar.q() != 4) {
            return null;
        }
        com.byazt.fy.hp hpVarHp = s.hp(context, mpVar, str);
        final String strJ = mpVar.j();
        hpVarHp.hp(new com.byazt.gog.hp() { // from class: com.byazt.dn.hp.1
            @Override // com.byazt.gog.hp
            public void hp() {
                com.byazt.pm.hp.hp(strJ);
            }

            @Override // com.byazt.gog.hp
            public void jx(long j2, long j3, String str2, String str3) {
                com.byazt.pm.hp.jx(strJ, j2, j3);
            }

            @Override // com.byazt.gog.hp
            public void l(long j2, long j3, String str2, String str3) {
                com.byazt.pm.hp.l(strJ, j2, j3);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, long j3, String str2, String str3) {
                com.byazt.pm.hp.hp(strJ, j2, j3);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, String str2, String str3) {
                com.byazt.pm.hp.l(strJ);
            }

            @Override // com.byazt.gog.hp
            public void hp(String str2, String str3) {
                com.byazt.pm.hp.jx(strJ);
            }
        });
        hpVarHp.hp();
        return hpVarHp;
    }

    private static jx hp(mp mpVar, Context context, String str) {
        if (mpVar == null) {
            return null;
        }
        jx jxVar = (jx) n.jx(mpVar.jm(), jx.class);
        if (jxVar != null) {
            mpVar.jm();
        }
        if (jxVar != null) {
            return jxVar;
        }
        jx jxVarL = l(mpVar, context, str);
        n.l(mpVar.jm(), jxVarL, jx.class);
        mpVar.jm();
        return jxVarL;
    }
}
