package com.byazt.gak;

import android.content.Context;
import com.byazt.jz.hq;
import com.byazt.owd.DispatchAdSdkInitializerHolder;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 34})
/* loaded from: classes2.dex */
public abstract class l extends com.byazt.vne.l {
    public static final String VERSION_00 = "0.0";

    public l(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    public hq getPluginCSJLoader(Context context) {
        hq csjLoader = DispatchAdSdkInitializerHolder.getCsjLoader(context);
        if (csjLoader == null) {
            notifyLoadFail(new com.byazt.dq.hp("ClassCastException：load ad fail loader is null"));
        }
        return csjLoader;
    }

    @Override // com.byazt.ewl.hp
    public String getSdkVersion(String str) {
        try {
            return com.byazt.owd.l.jx();
        } catch (Exception unused) {
            return "0.0";
        }
    }
}
