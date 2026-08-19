package com.byazt.qo;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.SlideUpView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs<E extends SlideUpView> implements eb<E> {
    public SlideUpView hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.nw.eb f25008j;
    public DynamicBaseWidget jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f25009l;

    /* renamed from: w, reason: collision with root package name */
    public int f25010w;

    public xs(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, int i2) {
        this.f25010w = i2;
        this.f25009l = context;
        this.jx = dynamicBaseWidget;
        this.f25008j = ebVar;
        j();
    }

    @Override // com.byazt.qo.eb
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public E jx() {
        return (E) this.hp;
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        this.hp.hp();
    }

    public void j() {
        this.hp = new SlideUpView(this.f25009l, this.f25008j.kg());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.byazt.sq.s.hp(this.f25009l, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.byazt.sq.s.hp(this.f25009l, 100 - this.f25010w);
        this.hp.setLayoutParams(layoutParams);
        try {
            this.hp.setGuideText(this.f25008j.zx());
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.hp.l();
    }

    public xs(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        this(context, dynamicBaseWidget, ebVar, 0);
    }
}
