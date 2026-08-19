package com.byazt.wnd;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.na.LottieAnimationView;
import com.byazt.nw.e;
import com.byazt.ymw.di;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1794})
/* loaded from: classes3.dex */
public class WriggleGuideAnimationView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public LinearLayout f27075a;
    public LottieAnimationView eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f27076j;
    public di jx;

    /* renamed from: l, reason: collision with root package name */
    public TextView f27077l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f27078q;

    /* renamed from: s, reason: collision with root package name */
    public e f27079s;

    /* renamed from: w, reason: collision with root package name */
    public hp f27080w;

    public interface hp {
        void hp();
    }

    public WriggleGuideAnimationView(Context context, View view, e eVar, boolean z2, int i2) {
        super(context);
        this.f27079s = eVar;
        this.f27078q = z2;
        this.hp = i2;
        hp(context, view);
    }

    public TextView getTopTextView() {
        return this.f27077l;
    }

    public LinearLayout getWriggleLayout() {
        return this.f27075a;
    }

    public View getWriggleProgressIv() {
        return this.eb;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.jx == null) {
                this.jx = new di(getContext().getApplicationContext(), 2, this.f27078q);
            }
            this.jx.hp(new di.hp() { // from class: com.byazt.wnd.WriggleGuideAnimationView.2
                @Override // com.byazt.ymw.di.hp
                public void hp(int i2) {
                    if (i2 == 2 && WriggleGuideAnimationView.this.isShown() && WriggleGuideAnimationView.this.f27080w != null) {
                        WriggleGuideAnimationView.this.f27080w.hp();
                    }
                }
            });
            if (this.f27079s != null) {
                this.jx.l(r0.jx());
                this.jx.a(this.f27079s.w());
                this.jx.hp(this.f27079s.a());
                this.jx.l(this.f27079s.s());
            }
            this.jx.hp(this.hp);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        di diVar = this.jx;
        if (diVar != null) {
            diVar.l(this.hp);
        }
        try {
            LottieAnimationView lottieAnimationView = this.eb;
            if (lottieAnimationView != null) {
                lottieAnimationView.a();
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        di diVar = this.jx;
        if (diVar != null) {
            if (z2) {
                diVar.hp(this.hp);
            } else {
                diVar.l(this.hp);
            }
        }
    }

    public void setOnShakeViewListener(hp hpVar) {
        this.f27080w = hpVar;
    }

    public void setShakeText(String str) {
        this.f27076j.setText(str);
    }

    private void hp(Context context, View view) {
        setClipChildren(false);
        addView(view);
        this.f27075a = (LinearLayout) findViewById(2097610722);
        this.f27077l = (TextView) findViewById(2097610719);
        this.f27076j = (TextView) findViewById(2097610718);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(2097610706);
        this.eb = lottieAnimationView;
        lottieAnimationView.setAnimation("lottie_json/twist_multi_angle.json");
        this.eb.setImageAssetsFolder("images/");
        this.eb.hp(true);
    }

    public void hp() {
        postDelayed(new Runnable() { // from class: com.byazt.wnd.WriggleGuideAnimationView.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WriggleGuideAnimationView.this.eb.hp();
                } catch (Throwable unused) {
                }
            }
        }, 500L);
    }
}
