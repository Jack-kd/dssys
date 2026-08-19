package com.byazt.oh;

import android.view.View;
import android.widget.TextView;
import com.byazt.ay.v;
import com.byazt.nk.RoundImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 94})
/* loaded from: classes3.dex */
public class eb {
    public a hp;

    public eb(a aVar) {
        this.hp = aVar;
    }

    public boolean hp() {
        v vVar = this.hp.f24054d;
        boolean zHp = vVar != null ? vVar.hp() : false;
        this.hp.jx.getVisibility();
        return zHp || this.hp.jx.getVisibility() == 0;
    }

    public boolean l() {
        View view;
        RoundImageView roundImageView;
        TextView textView;
        if (com.byazt.we.hp.hp(this.hp.di)) {
            return true;
        }
        View view2 = this.hp.f24066s;
        return (view2 != null && view2.getVisibility() == 0) || ((view = this.hp.f24055e) != null && view.getVisibility() == 0) || (((roundImageView = this.hp.gu) != null && roundImageView.getVisibility() == 0) || ((textView = this.hp.jl) != null && textView.getVisibility() == 0));
    }
}
