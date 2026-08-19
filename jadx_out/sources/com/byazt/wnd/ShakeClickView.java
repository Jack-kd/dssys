package com.byazt.wnd;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.byazt.nw.e;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2298})
/* loaded from: classes3.dex */
public class ShakeClickView extends ShakeAnimationView {

    /* renamed from: l, reason: collision with root package name */
    public TextView f27051l;

    public ShakeClickView(Context context, View view, e eVar, boolean z2, int i2) {
        super(context, view, eVar, z2, i2);
    }

    @Override // com.byazt.wnd.ShakeAnimationView
    public void hp(Context context, View view) {
        addView(view);
        this.f27051l = (TextView) findViewById(2097610747);
    }

    @Override // com.byazt.wnd.ShakeAnimationView
    public void setShakeText(String str) {
        if (this.f27051l == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.f27051l.setText(str);
            return;
        }
        try {
            this.f27051l.setText("摇一摇或点击了解更多");
        } catch (Exception e2) {
            u.l("shakeClickView", e2.getMessage());
        }
    }
}
