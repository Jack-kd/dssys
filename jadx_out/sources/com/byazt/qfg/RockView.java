package com.byazt.qfg;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.xci.wt;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 2028})
/* loaded from: classes3.dex */
public class RockView extends LinearLayout {
    public ImageView hp;
    public TextView jx;

    /* renamed from: l, reason: collision with root package name */
    public TextView f24563l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 1206})
    public static class hp implements Interpolator {
        private hp() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.25f ? (f2 * (-2.0f)) + 0.5f : f2 <= 0.5f ? (f2 * 4.0f) - 1.0f : f2 <= 0.75f ? (f2 * (-4.0f)) + 3.0f : (f2 * 2.0f) - 1.5f;
        }
    }

    public RockView(Context context) {
        super(context);
        l(context);
    }

    private void l(Context context) {
        if (context == null) {
            context = sz.getContext();
        }
        View viewHp = hp(context);
        if (viewHp == null) {
            return;
        }
        addView(viewHp);
    }

    private View hp(Context context) {
        Resources resources = context.getResources();
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 110.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 110.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = 17;
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        OvalShape ovalShape = new OvalShape();
        int iJx = xh.jx(context, 120.0f);
        shapeDrawable.setShape(ovalShape);
        shapeDrawable.setIntrinsicHeight(iJx);
        shapeDrawable.setIntrinsicWidth(iJx);
        shapeDrawable.getPaint().setColor(Color.parseColor("#57000000"));
        linearLayout2.setBackground(shapeDrawable);
        linearLayout2.setGravity(17);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout.addView(linearLayout2);
        ImageView imageView = new ImageView(context);
        this.hp = imageView;
        imageView.setId(2114387566);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        v.hp(context, "tt_splash_rock", this.hp, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.hp.setLayoutParams(layoutParams3);
        linearLayout2.addView(this.hp);
        TextView textView = new TextView(context);
        this.f24563l = textView;
        textView.setId(2114387564);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        this.f24563l.setSingleLine();
        this.f24563l.setText("摇一摇");
        this.f24563l.setTextColor(-1);
        this.f24563l.setTextSize(14.0f);
        this.f24563l.setLayoutParams(layoutParams4);
        linearLayout2.addView(this.f24563l);
        TextView textView2 = new TextView(context);
        this.jx = textView2;
        textView2.setId(2114387563);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        layoutParams5.topMargin = xh.jx(context, 12.0f);
        this.jx.setLayoutParams(layoutParams5);
        this.jx.setText("前往详情页或第三方应用");
        this.jx.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        this.jx.setTextColor(-1);
        linearLayout.addView(this.jx);
        return linearLayout;
    }

    public void hp(wt wtVar) {
        setVisibility(0);
        setAlpha(0.0f);
        TextView textView = this.f24563l;
        if (textView != null) {
            textView.setText(wtVar.gu());
            this.f24563l.setTextSize(2, wtVar.zy().l());
        }
        TextView textView2 = this.jx;
        if (textView2 != null) {
            textView2.setText(wtVar.l());
            this.jx.setTextSize(2, wtVar.jl().l());
            this.jx.setTypeface(Typeface.defaultFromStyle(0));
        }
    }

    public void hp() {
        if (this.hp != null) {
            final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
            rotateAnimation.setInterpolator(new hp());
            rotateAnimation.setDuration(1000L);
            rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.qfg.RockView.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RockView.this.postDelayed(new Runnable() { // from class: com.byazt.qfg.RockView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RockView.this.hp.startAnimation(rotateAnimation);
                        }
                    }, 250L);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            this.hp.startAnimation(rotateAnimation);
        }
    }
}
