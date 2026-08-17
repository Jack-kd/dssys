package com.byazt.qfg;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.qk.NativeExpressView;
import com.byazt.xci.gd;
import com.byazt.xci.mp;
import com.byazt.xci.rk;
import com.byazt.xse.TTCountdownViewForBtn;
import com.byazt.xse.TTCountdownViewForCircle;
import com.byazt.ymw.ec;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.badge.BadgeDrawable;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 849})
/* loaded from: classes3.dex */
public class TsView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public SplashClickBar f24601a;

    /* renamed from: e, reason: collision with root package name */
    public FrameLayout f24602e;
    public NativeExpressView eb;
    public mp gu;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public FrameLayout f24603j;
    public boolean jl;
    public ImageView jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f24604k;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xse.j f24605l;

    /* renamed from: q, reason: collision with root package name */
    public TextView f24606q;

    /* renamed from: s, reason: collision with root package name */
    public String f24607s;

    /* renamed from: u, reason: collision with root package name */
    public int f24608u;

    /* renamed from: v, reason: collision with root package name */
    public FrameLayout f24609v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f24610w;
    public hp zy;

    public interface hp {
        void onAttachedToWindow();

        void onDetachedFromWindow();

        void onWindowFocusChanged(boolean z2);
    }

    public TsView(Context context, String str, mp mpVar) {
        super(context);
        this.jl = false;
        this.f24604k = false;
        this.hp = context;
        this.f24607s = str;
        this.gu = mpVar;
        jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getCountDownLayout() {
        com.byazt.xse.j jVar = this.f24605l;
        if (jVar == null) {
            return null;
        }
        return jVar.getView();
    }

    private boolean j() {
        return getHeight() < xh.l(sz.getContext())[1];
    }

    private void setComplianceBarLayout(mp mpVar) {
        rk rkVarGi;
        if (this.f24606q == null || !l(mpVar) || (rkVarGi = mpVar.gi()) == null) {
            return;
        }
        int iHp = rkVarGi.hp();
        int iL = rkVarGi.l();
        int iJx = rkVarGi.jx();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = xh.jx(sz.getContext(), 25.0f);
        layoutParams.rightMargin = xh.jx(sz.getContext(), 25.0f);
        this.f24606q.setPadding(20, 20, 20, 20);
        this.f24606q.setHighlightColor(0);
        if (iHp == 2) {
            layoutParams.gravity = 80;
            if (j()) {
                layoutParams.bottomMargin = xh.jx(sz.getContext(), iJx);
            } else {
                layoutParams.bottomMargin = xh.jx(sz.getContext(), iL);
            }
        } else {
            layoutParams.gravity = 48;
            if (j()) {
                layoutParams.topMargin = xh.jx(sz.getContext(), iJx);
            } else {
                layoutParams.topMargin = xh.jx(sz.getContext(), iL);
            }
        }
        this.f24602e.setLayoutParams(layoutParams);
    }

    private boolean w() {
        mp mpVar = this.gu;
        return mpVar != null && mpVar.wf() == 2;
    }

    public com.byazt.xse.j getCountDownView() {
        return this.f24605l;
    }

    public View getDislikeView() {
        return getCountDownLayout();
    }

    public FrameLayout getEasyPlayableLayout() {
        return this.f24609v;
    }

    public NativeExpressView getNativeExpressView() {
        return this.eb;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!w() && !this.f24604k) {
            post(new com.byazt.uid.eb("splash_btn_adjust") { // from class: com.byazt.qfg.TsView.2
                @Override // java.lang.Runnable
                public void run() {
                    TsView tsView = TsView.this;
                    xh.hp(tsView, tsView.getCountDownLayout());
                    TsView tsView2 = TsView.this;
                    xh.hp(tsView2, tsView2.jx);
                }
            });
        }
        hp hpVar = this.zy;
        if (hpVar != null) {
            hpVar.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (sz.l().o() == 0) {
            return;
        }
        if (sz.l().o() != 1 || j()) {
            if ((sz.l().o() == 2 && j()) || this.f24608u == configuration.orientation) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
            this.f24608u = configuration.orientation;
            xh.hp(this, new xh.hp() { // from class: com.byazt.qfg.TsView.1
                @Override // com.byazt.zn.xh.hp
                public void hp(View view) {
                    int height = TsView.this.getHeight();
                    int width = TsView.this.getWidth();
                    if (TsView.this.f24608u != 2) {
                        view.setRotation(0.0f);
                        TsView.this.getWidth();
                        TsView.this.getHeight();
                    } else {
                        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                        layoutParams2.width = height;
                        layoutParams2.height = width;
                        view.setLayoutParams(layoutParams2);
                        view.setRotation(-90.0f);
                    }
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        hp hpVar = this.zy;
        if (hpVar != null) {
            hpVar.onDetachedFromWindow();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.jl) {
            return;
        }
        SplashClickBar splashClickBar = this.f24601a;
        if (splashClickBar != null) {
            splashClickBar.setBtnLayout(!j());
        }
        this.jl = true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        hp hpVar = this.zy;
        if (hpVar != null) {
            hpVar.onWindowFocusChanged(z2);
        }
    }

    public void setAdlogoViewVisibility(int i2) {
        xh.hp((View) this.f24610w, i2);
    }

    public void setAttachedToWindowListener(hp hpVar) {
        this.zy = hpVar;
    }

    public void setComplianceBarVisibility(int i2) {
        if (i2 == 8) {
            xh.hp((View) this.f24601a, i2);
        }
    }

    public void setCountDownTime(int i2) {
        com.byazt.xse.j jVar = this.f24605l;
        if (jVar != null) {
            jVar.setCountDownTime(i2);
        }
    }

    public void setCountDownViewPosition(mp mpVar) {
        com.byazt.xse.j jVar = this.f24605l;
        if (jVar == null || jVar.getView() == null || mpVar == null) {
            return;
        }
        View view = this.f24605l.getView();
        gd gdVarLa = mpVar.la();
        if (gdVarLa == null) {
            return;
        }
        int iHp = gdVarLa.hp();
        int iJx = xh.jx(this.hp, gdVarLa.l());
        int iJx2 = xh.jx(this.hp, gdVarLa.jx());
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (iHp == 1) {
            layoutParams.gravity = BadgeDrawable.TOP_START;
            layoutParams.leftMargin = iJx;
            layoutParams.topMargin = iJx2;
        } else if (iHp == 3) {
            layoutParams.gravity = BadgeDrawable.BOTTOM_START;
            layoutParams.leftMargin = iJx;
            layoutParams.bottomMargin = iJx2;
        } else if (iHp != 4) {
            layoutParams.gravity = BadgeDrawable.TOP_END;
            layoutParams.rightMargin = iJx;
            layoutParams.topMargin = iJx2;
        } else {
            layoutParams.gravity = BadgeDrawable.BOTTOM_END;
            layoutParams.rightMargin = iJx;
            layoutParams.bottomMargin = iJx2;
        }
        view.setLayoutParams(layoutParams);
    }

    public void setExpressView(NativeExpressView nativeExpressView) {
        if (nativeExpressView == null) {
            return;
        }
        this.eb = nativeExpressView;
        if (nativeExpressView.getParent() != null) {
            ((ViewGroup) this.eb.getParent()).removeView(this.eb);
        }
        this.f24603j.addView(this.eb);
        setExpressViewVisibility(0);
    }

    public void setExpressViewVisibility(int i2) {
        xh.hp((View) this.f24603j, i2);
    }

    public void setIsShowSuccess(boolean z2) {
        this.f24604k = z2;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        ec.hp("不允许在Splash广告中注册OnClickListener");
    }

    public final void setOnClickListenerInternal(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        ec.hp("不允许在Splash广告中注册OnTouchListener");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void setOnTouchListenerInternal(View.OnTouchListener onTouchListener) {
        super.setOnTouchListener(onTouchListener);
    }

    public void setSkipIconVisibility(int i2) {
        xh.hp(getCountDownLayout(), i2);
    }

    public final void setSkipListener(View.OnClickListener onClickListener) {
        com.byazt.xse.j jVar = this.f24605l;
        if (jVar == null || jVar.getView() == null) {
            return;
        }
        this.f24605l.getView().setOnClickListener(onClickListener);
    }

    public void setSlideUpTouchListener(View.OnTouchListener onTouchListener) {
        setOnTouchListenerInternal(onTouchListener);
    }

    public void setVideoViewVisibility(int i2) {
        xh.hp((View) this.jx, i2);
    }

    public void setVideoVoiceVisibility(int i2) {
        xh.hp((View) this.jx, i2);
    }

    public final void setVoiceViewImageDrawable(Drawable drawable) {
        ImageView imageView = this.jx;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
    }

    public final void setVoiceViewListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.jx;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    private View hp(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(2114387582);
        this.f24603j = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.f24603j.setId(2114387581);
        this.f24603j.setLayoutParams(layoutParams);
        frameLayout.addView(this.f24603j);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.f24609v = frameLayout2;
        frameLayout.addView(frameLayout2);
        this.jx = new ImageView(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 30.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 30.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = BadgeDrawable.TOP_START;
        layoutParams2.topMargin = xh.jx(this.hp, 16.0f);
        layoutParams2.leftMargin = xh.jx(this.hp, 16.0f);
        this.jx.setId(2114387580);
        this.jx.setLayoutParams(layoutParams2);
        v.hp(this.hp, "tt_splash_mute", this.jx, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        xh.hp((View) this.jx, 8);
        frameLayout.addView(this.jx);
        this.f24605l = hp(frameLayout, context);
        this.f24610w = new TextView(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        this.f24610w.setId(2114387578);
        this.f24610w.setGravity(17);
        layoutParams3.gravity = BadgeDrawable.BOTTOM_START;
        layoutParams3.bottomMargin = xh.jx(this.hp, 40.0f);
        layoutParams3.leftMargin = xh.jx(this.hp, 20.0f);
        com.byazt.ij.j.hp(this.hp, 1, this.f24610w);
        this.f24610w.setLayoutParams(layoutParams3);
        frameLayout.addView(this.f24610w);
        return frameLayout;
    }

    private void jx() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        try {
            View viewHp = hp(this.hp);
            if (viewHp == null) {
                return;
            }
            addView(viewHp);
            SplashClickBar splashClickBar = new SplashClickBar(getContext(), this.gu);
            this.f24601a = splashClickBar;
            addView(splashClickBar);
            this.f24608u = getResources().getConfiguration().orientation;
        } catch (Throwable unused) {
        }
    }

    private boolean l(mp mpVar) {
        rk rkVarGi;
        return (mpVar == null || mpVar.q() != 4 || mpVar.vv() == null || (rkVarGi = mpVar.gi()) == null || rkVarGi.hp() == 0) ? false : true;
    }

    public void l() {
        TextView textView = this.f24610w;
        if (textView != null) {
            textView.setVisibility(8);
        }
        com.byazt.xse.j jVar = this.f24605l;
        if (jVar == null || jVar.getView() == null) {
            return;
        }
        this.f24605l.hp(true);
        this.f24605l.getView().setVisibility(8);
    }

    public void hp(mp mpVar) {
        SplashClickBar splashClickBar = this.f24601a;
        if (splashClickBar == null) {
            return;
        }
        try {
            splashClickBar.hp(mpVar);
            xh.hp(this.f24610w, mpVar);
        } catch (Throwable unused) {
        }
    }

    public void hp(int i2, com.byazt.go.hp hpVar) {
        SplashClickBar splashClickBar = this.f24601a;
        if (splashClickBar != null) {
            splashClickBar.hp(hpVar);
        }
        if (i2 == 1) {
            hpVar.hp(this);
            setOnClickListenerInternal(hpVar);
            setOnTouchListenerInternal(hpVar);
        }
    }

    public void hp() {
        TextView textView = this.f24610w;
        if (textView != null) {
            v.hp(this.hp, "tt_ad_logo_backup", textView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
    }

    public com.byazt.xse.j hp(FrameLayout frameLayout, Context context) {
        com.byazt.xse.j tTCountdownViewForBtn;
        FrameLayout.LayoutParams layoutParams;
        Resources resources = context.getResources();
        mp mpVar = this.gu;
        gd gdVarLa = mpVar == null ? null : mpVar.la();
        if ((gdVarLa == null ? 1 : gdVarLa.j()) == 1) {
            tTCountdownViewForBtn = new TTCountdownViewForCircle(context);
            layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 40.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 40.0f, resources.getDisplayMetrics()));
        } else {
            tTCountdownViewForBtn = new TTCountdownViewForBtn(context);
            layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 76.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 26.0f, resources.getDisplayMetrics()));
        }
        if (tTCountdownViewForBtn.getView() != null) {
            tTCountdownViewForBtn.getView().setId(2114387579);
            layoutParams.gravity = BadgeDrawable.TOP_END;
            layoutParams.topMargin = xh.jx(this.hp, 16.0f);
            layoutParams.rightMargin = xh.jx(this.hp, 16.0f);
            tTCountdownViewForBtn.getView().setLayoutParams(layoutParams);
            frameLayout.addView(tTCountdownViewForBtn.getView());
        }
        return tTCountdownViewForBtn;
    }
}
