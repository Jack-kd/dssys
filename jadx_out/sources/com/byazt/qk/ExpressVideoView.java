package com.byazt.qk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 64, 1480})
/* loaded from: classes3.dex */
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {
    public boolean cx;
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f24769l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f24770n;
    public boolean ns;

    public ExpressVideoView(Context context, mp mpVar, String str, boolean z2) {
        super(context, mpVar, false, false, str, false, false);
        this.f24770n = false;
        if ("draw_ad".equals(str)) {
            this.f24770n = true;
        }
        this.ns = z2;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    private void n() {
        jl();
        RelativeLayout relativeLayout = this.f24025e;
        if (relativeLayout != null) {
            if (relativeLayout.getVisibility() == 0) {
                return;
            }
            com.byazt.ws.l.hp(df.l(this.f24027j)).to(this.gu);
            hp(this.gu, df.l(this.f24027j));
        }
        s();
    }

    private void s() {
        xh.hp((View) this.f24025e, 0);
        xh.hp((View) this.gu, 0);
        xh.hp((View) this.zy, 8);
    }

    public void E_() {
        ImageView imageView = this.zy;
        if (imageView != null) {
            xh.hp((View) imageView, 0);
        }
    }

    public void F_() {
        jl();
        xh.hp((View) this.f24025e, 0);
    }

    public boolean G_() {
        com.byazt.su.jx jxVar = this.f24039w;
        return (jxVar == null || jxVar.xs() == null || !this.f24039w.xs().isPlaying()) ? false : true;
    }

    public void a() {
        ImageView imageView = this.jl;
        if (imageView != null) {
            xh.hp((View) imageView, 8);
        }
    }

    public com.byazt.su.jx getVideoController() {
        return this.f24039w;
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public com.byazt.su.jx hp(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        return this.ns ? new com.byazt.oh.jx(context, viewGroup, mpVar, str, z2, z3, z4) : super.hp(context, viewGroup, mpVar, str, z2, z3, z4);
    }

    public void jx() {
        ImageView imageView = this.zy;
        if (imageView != null) {
            xh.hp((View) imageView, 8);
        }
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void l() {
        if (this.f24770n) {
            super.l(this.hp);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.jl;
        if (imageView != null && imageView.getVisibility() == 0) {
            xh.w(this.f24025e);
        }
        l(this.hp);
    }

    @Override // com.byazt.oh.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        ImageView imageView = this.jl;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowFocusChanged(z2);
        } else {
            n();
        }
    }

    @Override // com.byazt.oh.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i2) {
        ImageView imageView = this.jl;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i2);
        } else {
            n();
        }
    }

    public void setCanInterruptVideoPlay(boolean z2) {
        this.f24770n = z2;
    }

    public void setPauseIcon(boolean z2) {
        if (this.f24769l == null) {
            this.f24769l = new ImageView(getContext());
            if (com.byazt.jz.s.u().kg() != null) {
                this.f24769l.setImageBitmap(com.byazt.jz.s.u().kg());
            } else {
                com.byazt.ymw.v.hp(com.byazt.jz.sz.getContext(), "tt_new_play_video", this.f24769l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            }
            this.f24769l.setScaleType(ImageView.ScaleType.FIT_XY);
            int iJx = xh.jx(getContext(), this.f24037u);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iJx, iJx);
            layoutParams.gravity = 17;
            this.f24022a.addView(this.f24769l, layoutParams);
        }
        if (z2) {
            this.f24769l.setVisibility(0);
        } else {
            this.f24769l.setVisibility(8);
        }
    }

    public void setShouldCheckNetChange(boolean z2) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.w(z2);
        }
    }

    public void setShowAdInteractionView(boolean z2) {
        com.byazt.su.l lVarVv;
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar == null || (lVarVv = jxVar.vv()) == null) {
            return;
        }
        lVarVv.hp(z2);
    }

    public void setVideoPlayStatus(int i2) {
        this.hp = i2;
    }

    public void l(boolean z2) {
        this.cx = z2;
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void hp(boolean z2) {
        if (this.cx) {
            super.hp(z2);
        }
    }
}
