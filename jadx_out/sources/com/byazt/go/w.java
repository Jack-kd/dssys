package com.byazt.go;

import android.content.Context;
import android.view.View;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1971, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public abstract class w extends hp {
    public w(Context context, mp mpVar, String str, int i2) {
        super(context, mpVar, str, i2);
    }

    @Override // com.byazt.go.l, com.byazt.go.j
    public void hp(View view, e eVar) {
        if (mp.a(this.hp)) {
            return;
        }
        super.hp(view, eVar);
    }
}
