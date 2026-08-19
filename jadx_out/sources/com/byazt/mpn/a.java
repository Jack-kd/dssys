package com.byazt.mpn;

import android.app.Dialog;
import android.content.Context;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.umeng.analytics.pro.g;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 54})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class a implements com.byazt.zp.jx {

    @com.byazt.cv.hp(hp = "outer_dislike")
    public Dialog hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "material_meta")
    public mp f23189j;

    @com.byazt.cv.hp(hp = g.f49337X)
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "ad_dislike")
    public com.byazt.ih.l f23190l;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        Dialog dialog = this.hp;
        if (dialog != null) {
            dialog.show();
            hpVar.hp(map2);
            return true;
        }
        com.byazt.ih.l lVar = this.f23190l;
        if (lVar != null) {
            lVar.showDislikeDialog();
            hpVar.hp(map2);
            return true;
        }
        TTDelegateActivity.hp(this.jx, this.f23189j);
        hpVar.hp(map2);
        return true;
    }
}
