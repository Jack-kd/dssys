package com.byazt.tv;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.cw.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF, 1568})
/* loaded from: classes3.dex */
public class TTLottieVideoContainer extends FrameLayout implements com.byazt.cw.l {
    public l.hp hp;

    public TTLottieVideoContainer(Context context) {
        super(context);
    }

    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.byazt.cw.l
    public View getView() {
        return this;
    }

    @Override // com.byazt.cw.l
    public void hp(com.byazt.cw.hp hpVar) {
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
    }

    public void setWindowVisibilityChangedListener(l.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.cw.l
    public void hp(int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i3;
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
    }
}
