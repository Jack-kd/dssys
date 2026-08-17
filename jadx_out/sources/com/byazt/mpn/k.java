package com.byazt.mpn;

import android.content.Context;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 42})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class k implements com.byazt.zp.jx {

    @com.byazt.cv.hp(hp = "material_meta")
    public mp hp;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23227l;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        Context context;
        mp mpVar = this.hp;
        if (mpVar == null || (context = this.f23227l) == null) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return true;
        }
        com.byazt.zn.w.hp(context, mpVar);
        hpVar.hp(map2);
        return true;
    }
}
