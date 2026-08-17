package com.byazt.het;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nf.UGTextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.nf.l {
    public l(Context context) {
        super(context);
    }

    public void j(boolean z2) {
        if (z2) {
            l(0);
            hp(true, true);
        } else {
            j(0);
            w(0);
        }
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void l() {
        super.l();
        if (TextUtils.isEmpty(((com.byazt.nf.l) this).hp)) {
            ((UGTextView) this.f27788w).setText("跳过");
        }
    }
}
