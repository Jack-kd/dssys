package com.byazt.yk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 90, MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE})
/* loaded from: classes3.dex */
public class CSJIndependentProcessDownloadService extends CSJDownloadService {
    @Override // com.byazt.yk.CSJDownloadService, android.app.Service
    public void onCreate() {
        super.onCreate();
        jx.hp(this);
        if (jx.hd() == null) {
            jx.hp(new ns());
        }
        v vVarD = jx.d();
        this.hp = vVarD;
        vVarD.hp(new WeakReference(this));
    }
}
