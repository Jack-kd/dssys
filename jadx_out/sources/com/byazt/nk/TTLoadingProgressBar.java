package com.byazt.nk;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 2480})
/* loaded from: classes3.dex */
public class TTLoadingProgressBar extends LinearLayout {
    public View hp;
    public View jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f23655l;

    private int hp(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public View getProgressBar() {
        return this.hp;
    }

    public ImageView getProgressIcon() {
        return this.f23655l;
    }

    public void setProgress(int i2) {
        if (this.f23655l.getVisibility() == 0 && i2 > 3) {
            ((LinearLayout.LayoutParams) this.f23655l.getLayoutParams()).leftMargin = hp(this.hp.getContext(), -7.0f);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.hp.getLayoutParams();
        float f2 = i2 / 100.0f;
        layoutParams.weight = f2;
        this.hp.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.jx.getLayoutParams();
        layoutParams2.weight = 1.0f - f2;
        this.jx.setLayoutParams(layoutParams2);
        requestLayout();
    }
}
