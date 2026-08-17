package com.byazt.mpn;

import android.content.Context;
import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.umeng.analytics.pro.g;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 28})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class hp implements com.byazt.zp.jx {

    @com.byazt.cv.hp(hp = "url")
    public String hp;

    @com.byazt.cv.hp(hp = g.f49337X)
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.a.f3271h)
    public String f23212l;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        TTDelegateActivity.j(this.jx, this.hp, this.f23212l);
        hpVar.hp(map2);
        return true;
    }
}
