package com.byazt.je;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.byazt.xa.s;
import com.byazt.zs.j;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, 1825})
/* loaded from: classes.dex */
public class UGRatingBar extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public LinearLayout f21468a;
    public Context eb;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public float f21469j;
    public double jx;

    /* renamed from: l, reason: collision with root package name */
    public float f21470l;

    /* renamed from: s, reason: collision with root package name */
    public j f21471s;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f21472w;

    public UGRatingBar(Context context) {
        super(context);
        this.eb = context;
        this.f21472w = new LinearLayout(context);
        this.f21468a = new LinearLayout(context);
        this.f21472w.setOrientation(0);
        this.f21472w.setGravity(GravityCompat.START);
        this.f21468a.setOrientation(0);
        this.f21468a.setGravity(GravityCompat.START);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.hp, (int) this.f21470l);
        float f2 = this.f21469j;
        layoutParams.leftMargin = (int) f2;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = (int) f2;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public void hp(double d2, int i2, int i3, float f2, int i4) {
        removeAllViews();
        this.f21472w.removeAllViews();
        this.f21468a.removeAllViews();
        this.hp = (int) s.hp(this.eb, f2);
        this.f21470l = (int) s.hp(this.eb, f2);
        this.jx = d2;
        this.f21469j = i4;
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            hp(starImageView, "tt_ugen_rating_star");
            starImageView.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            this.f21468a.addView(starImageView);
        }
        for (int i6 = 0; i6 < 5; i6++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            hp(starImageView2, "tt_ugen_rating_star");
            starImageView2.setColorFilter(i3);
            this.f21472w.addView(starImageView2);
        }
        addView(this.f21472w);
        addView(this.f21468a);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.f21471s;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f21471s;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.f21471s;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.f21471s;
        if (jVar != null) {
            jVar.hp(i2, i3);
        }
        super.onMeasure(i2, i3);
        this.f21472w.measure(i2, i3);
        double dFloor = Math.floor(this.jx);
        this.f21468a.measure(View.MeasureSpec.makeMeasureSpec((int) (((r0 + r0 + r2) * dFloor) + this.f21469j + ((this.jx - dFloor) * this.hp)), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(this.f21472w.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.f21471s;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.f21471s;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    public void hp(ImageView imageView, String str) {
        imageView.setImageResource(com.byazt.xa.j.l(this.eb, str));
    }

    public void hp(j jVar) {
        this.f21471s = jVar;
    }
}
