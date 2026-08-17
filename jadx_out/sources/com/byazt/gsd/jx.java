package com.byazt.gsd;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.dnb.jl;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, 30})
/* loaded from: classes2.dex */
public class jx extends com.byazt.tm.hp {
    public boolean pu;

    public jx(Context context, ViewGroup viewGroup, mp mpVar, com.byazt.go.hp hpVar) {
        super(context, viewGroup, mpVar, hpVar);
        this.pu = true;
        hp(false);
    }

    @Override // com.byazt.tm.hp
    public void a(boolean z2) {
        super.a(z2);
        if (this.pu) {
            if (!jl.hp(this.f19653a) || w()) {
                l();
            }
        }
    }

    public void b() {
        kg();
    }

    @Override // com.byazt.tm.hp
    public int cx() {
        return 5;
    }

    public void eb(boolean z2) {
        this.pu = z2;
    }

    @Override // com.byazt.tm.hp
    public boolean p_() {
        return false;
    }
}
