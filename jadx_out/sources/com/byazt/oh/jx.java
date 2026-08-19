package com.byazt.oh;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 30})
/* loaded from: classes3.dex */
public class jx extends j {
    public jx(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        super(context, viewGroup, mpVar, str, z2, z3, z4);
    }

    @Override // com.byazt.oh.j
    public com.byazt.cw.l cx() {
        a aVar = this.f19666w;
        if (aVar != null) {
            return aVar.xs();
        }
        return null;
    }

    @Override // com.byazt.oh.j
    public void hp(int i2, int i3) {
        super.hp(i2, i3);
        a aVar = this.f19666w;
        if (aVar == null || i2 <= 0 || i3 <= 0) {
            return;
        }
        aVar.jx(i2, i3);
        this.f19666w.hp(i2, i3);
        l(-1, -1);
    }
}
