package com.byazt.gak;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 94})
/* loaded from: classes2.dex */
public class eb extends l {
    public static final String TAG = "PangleInterstitialAdapter";
    public static final String VERSION_00 = "0.0";

    public eb(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        notifyLoadFail(new com.byazt.dq.hp(81004, com.byazt.dq.hp.hp(81004)));
    }
}
