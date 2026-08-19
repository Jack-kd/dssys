package com.byazt.vsq;

import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 38})
/* loaded from: classes3.dex */
public class j {
    public static int hp(mp mpVar) {
        if (jx.hp(mpVar)) {
            return jx.l(mpVar);
        }
        if (e.hp(mpVar)) {
            return e.l(mpVar);
        }
        if (gu.hp(mpVar)) {
            return gu.l(mpVar);
        }
        if (eb.hp(mpVar)) {
            return eb.l(mpVar);
        }
        if (w.hp(mpVar)) {
            return w.l(mpVar);
        }
        if (a.hp(mpVar)) {
            return a.l(mpVar);
        }
        if (s.hp(mpVar)) {
            return s.l(mpVar);
        }
        if (jl.hp(mpVar)) {
            return jl.l(mpVar);
        }
        return -1;
    }

    public static hp hp(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        if (q.hp(tTBaseVideoActivity, mpVar)) {
            return new q(tTBaseVideoActivity, mpVar);
        }
        if (e.hp(mpVar)) {
            return new e(tTBaseVideoActivity, mpVar);
        }
        if (jx.hp(mpVar)) {
            return new jx(tTBaseVideoActivity, mpVar);
        }
        if (gu.hp(mpVar)) {
            return new gu(tTBaseVideoActivity, mpVar);
        }
        if (eb.hp(mpVar)) {
            return new eb(tTBaseVideoActivity, mpVar);
        }
        if (w.hp(mpVar)) {
            return new w(tTBaseVideoActivity, mpVar);
        }
        if (a.hp(mpVar)) {
            return new a(tTBaseVideoActivity, mpVar);
        }
        if (s.hp(mpVar)) {
            return new s(tTBaseVideoActivity, mpVar);
        }
        if (jl.hp(mpVar)) {
            return new jl(tTBaseVideoActivity, mpVar);
        }
        return null;
    }
}
