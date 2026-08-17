package com.byazt.ih;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;

@com.byazt.kj.hp(hp = {0, 1, 863, 2062})
/* loaded from: classes.dex */
public class TTDislikeToast extends FrameLayout {
    public Handler hp;

    /* renamed from: l, reason: collision with root package name */
    public TextView f21088l;

    public TTDislikeToast(Context context) {
        this(context, null);
    }

    public TTDislikeToast(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void hp(Context context) {
        TextView textView = new TextView(context);
        this.f21088l = textView;
        textView.setClickable(false);
        this.f21088l.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int iHp = com.byazt.ruu.hp.l().hp(getContext(), 20.0f);
        int iHp2 = com.byazt.ruu.hp.l().hp(getContext(), 12.0f);
        this.f21088l.setPadding(iHp, iHp2, iHp, iHp2);
        this.f21088l.setLayoutParams(layoutParams);
        this.f21088l.setTextColor(-1);
        this.f21088l.setTextSize(16.0f);
        this.f21088l.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(com.byazt.ruu.hp.l().hp(getContext(), 6.0f));
        this.f21088l.setBackgroundDrawable(gradientDrawable);
        addView(this.f21088l);
    }

    public TTDislikeToast(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.hp = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        hp(context);
    }

    public void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.hp.removeCallbacksAndMessages(null);
        this.hp.post(new Runnable() { // from class: com.byazt.ih.TTDislikeToast.1
            @Override // java.lang.Runnable
            public void run() {
                if (TTDislikeToast.this.f21088l != null) {
                    TTDislikeToast.this.f21088l.setText(String.valueOf(str));
                }
                TTDislikeToast.this.setVisibility(0);
            }
        });
        this.hp.postDelayed(new Runnable() { // from class: com.byazt.ih.TTDislikeToast.2
            @Override // java.lang.Runnable
            public void run() {
                TTDislikeToast.this.setVisibility(8);
            }
        }, 2000L);
    }

    public void hp() {
        setVisibility(8);
        this.hp.removeCallbacksAndMessages(null);
    }
}
