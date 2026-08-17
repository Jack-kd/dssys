package com.byazt.fjm;

import android.view.View;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 45})
/* loaded from: classes2.dex */
public class e {
    public static int hp(RecyclerView.sz szVar, s sVar, View view, View view2, RecyclerView.q qVar, boolean z2, boolean z3) {
        if (qVar.ec() == 0 || szVar.j() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z3 ? Math.max(0, (szVar.j() - Math.max(qVar.j(view), qVar.j(view2))) - 1) : Math.max(0, Math.min(qVar.j(view), qVar.j(view2)));
        if (z2) {
            return Math.round((iMax * (Math.abs(sVar.l(view2) - sVar.hp(view)) / (Math.abs(qVar.j(view) - qVar.j(view2)) + 1))) + (sVar.jx() - sVar.hp(view)));
        }
        return iMax;
    }

    public static int l(RecyclerView.sz szVar, s sVar, View view, View view2, RecyclerView.q qVar, boolean z2) {
        if (qVar.ec() == 0 || szVar.j() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return szVar.j();
        }
        return (int) (((sVar.l(view2) - sVar.hp(view)) / (Math.abs(qVar.j(view) - qVar.j(view2)) + 1)) * szVar.j());
    }

    public static int hp(RecyclerView.sz szVar, s sVar, View view, View view2, RecyclerView.q qVar, boolean z2) {
        if (qVar.ec() == 0 || szVar.j() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return Math.abs(qVar.j(view) - qVar.j(view2)) + 1;
        }
        return Math.min(sVar.a(), sVar.l(view2) - sVar.hp(view));
    }
}
