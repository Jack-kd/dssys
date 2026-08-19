package com.byazt.oh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.jz.s;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 1960})
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class NativeDrawVideoTsView extends NativeVideoTsView implements View.OnClickListener {
    public boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public int f24021l;

    public NativeDrawVideoTsView(Context context, mp mpVar) {
        super(context, mpVar);
        this.hp = false;
        setOnClickListener(this);
        this.f24021l = getResources().getConfiguration().orientation;
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

    @Override // com.byazt.oh.NativeVideoTsView
    public void eb() {
        this.f24038v = "draw_ad";
        super.eb();
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void j() {
        int i2 = getResources().getConfiguration().orientation;
        if (this.f24021l == i2) {
            super.j();
        } else {
            this.f24021l = i2;
            xh.hp(this, new xh.hp() { // from class: com.byazt.oh.NativeDrawVideoTsView.2
                @Override // com.byazt.zn.xh.hp
                public void hp(View view) {
                    NativeDrawVideoTsView nativeDrawVideoTsView = NativeDrawVideoTsView.this;
                    if (nativeDrawVideoTsView.f24039w == null) {
                        return;
                    }
                    NativeDrawVideoTsView.this.hp(nativeDrawVideoTsView.getWidth(), NativeDrawVideoTsView.this.getHeight());
                    NativeDrawVideoTsView.super.j();
                }
            });
        }
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void l() {
        if (this.hp) {
            super.l();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.jl;
        if (imageView != null && imageView.getVisibility() == 0) {
            xh.w(this.f24025e);
        }
        l();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        int i2 = this.f24021l;
        int i3 = configuration.orientation;
        if (i2 == i3) {
            return;
        }
        this.f24021l = i3;
        xh.hp(this, new xh.hp() { // from class: com.byazt.oh.NativeDrawVideoTsView.1
            @Override // com.byazt.zn.xh.hp
            public void hp(View view) {
                NativeDrawVideoTsView nativeDrawVideoTsView = NativeDrawVideoTsView.this;
                if (nativeDrawVideoTsView.f24039w == null) {
                    return;
                }
                NativeDrawVideoTsView.this.hp(nativeDrawVideoTsView.getWidth(), NativeDrawVideoTsView.this.getHeight());
            }
        });
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
        this.hp = z2;
    }

    public void hp(Bitmap bitmap, int i2) {
        s.u().hp(bitmap);
        this.f24037u = i2;
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public com.byazt.su.jx hp(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        return new jx(context, viewGroup, mpVar, str, z2, z3, z4);
    }

    public NativeDrawVideoTsView(Context context, mp mpVar, String str, boolean z2, boolean z3) {
        super(context, mpVar, str, z2, z3);
        this.hp = false;
        setOnClickListener(this);
        this.f24021l = getResources().getConfiguration().orientation;
    }
}
