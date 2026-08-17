package com.byazt.zn;

import com.byazt.xci.mp;
import com.byazt.xci.su;
import com.byazt.xci.zx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n {
    public static int a(mp mpVar) {
        if (mpVar == null) {
            return -1;
        }
        if (s(mpVar) != 3) {
            return 0;
        }
        return com.byazt.xci.ec.jl(mpVar);
    }

    public static boolean eb(mp mpVar) {
        return s(mpVar) == 3;
    }

    public static String hp(mp mpVar) {
        if (mpVar == null) {
            return "";
        }
        int iS = s(mpVar);
        return iS != 3 ? iS != 4 ? "" : su.w(mpVar) : com.byazt.xci.ec.s(mpVar);
    }

    public static boolean j(mp mpVar) {
        return mpVar != null && s(mpVar) == 4;
    }

    public static boolean jx(mp mpVar) {
        if (mpVar == null || zx.hp(mpVar) || s(mpVar) != 3) {
            return false;
        }
        return com.byazt.xci.ec.hp(mpVar);
    }

    public static boolean l(mp mpVar) {
        return (mpVar == null || s(mpVar) == 0) ? false : true;
    }

    private static int s(mp mpVar) {
        if (com.byazt.xci.ec.hp(mpVar)) {
            return 3;
        }
        return su.hp(mpVar) ? 4 : 0;
    }

    public static int w(mp mpVar) {
        if (mpVar != null && s(mpVar) == 3) {
            return com.byazt.xci.ec.gu(mpVar);
        }
        return 0;
    }
}
