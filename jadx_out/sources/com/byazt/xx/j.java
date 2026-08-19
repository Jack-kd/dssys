package com.byazt.xx;

import com.byazt.cey.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.rl.j {
    public final WeakReference<w> hp;

    public j(w wVar) {
        this.hp = new WeakReference<>(wVar);
    }

    @Override // com.byazt.es.hp
    public void hp() {
        if (this.hp.get() != null) {
            this.hp.get().hp(0);
        }
    }

    @Override // com.byazt.es.hp
    public void hp(int i2, String str) {
        WeakReference<w> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get();
    }
}
