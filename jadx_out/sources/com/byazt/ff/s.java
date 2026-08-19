package com.byazt.ff;

import android.content.Context;
import com.byazt.jkd.e;
import com.byazt.jz.n;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public static com.byazt.fy.hp hp(Context context, mp mpVar, String str) {
        com.byazt.fy.a aVar = new com.byazt.fy.a(context, mpVar, str, "");
        if (mpVar != null) {
            com.byazt.rk.hp.hp(mpVar, String.valueOf(ky.zy(mpVar)), ky.jl(mpVar), 1, mpVar.di());
            n.l(mpVar.jm(), aVar, com.byazt.gog.jx.class);
            mpVar.jm();
        }
        return aVar;
    }

    public static com.byazt.gog.jx l(Context context, mp mpVar, String str) {
        if (mpVar != null) {
            com.byazt.rk.hp.hp(mpVar, String.valueOf(ky.zy(mpVar)), ky.jl(mpVar), 2, mpVar.di());
        }
        return e.eb() ? new com.byazt.fy.a(context, mpVar, str, "") : ky.o() ? new com.byazt.fy.w(context, mpVar, str) : new com.byazt.fy.jx(context, mpVar, str);
    }

    public static com.byazt.gog.jx hp(Context context, String str, mp mpVar, String str2) {
        if (mpVar != null) {
            com.byazt.rk.hp.hp(mpVar, String.valueOf(ky.zy(mpVar)), ky.jl(mpVar), 3, mpVar.di());
        }
        if (e.eb()) {
            com.byazt.fy.a aVar = new com.byazt.fy.a(context, mpVar, str2, str);
            aVar.s(true);
            return aVar;
        }
        return new com.byazt.fy.eb(context, str, mpVar, str2);
    }
}
