package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;

/* loaded from: classes2.dex */
public class SlideClickView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f17186a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f17187b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f17188c;

    /* renamed from: d, reason: collision with root package name */
    private String f17189d;

    /* renamed from: e, reason: collision with root package name */
    private int f17190e;

    /* renamed from: f, reason: collision with root package name */
    private int f17191f;

    /* renamed from: g, reason: collision with root package name */
    private int f17192g;

    /* renamed from: h, reason: collision with root package name */
    private AnimationDrawable f17193h;

    public SlideClickView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17186a = false;
        this.f17191f = 45;
        this.f17192g = 45;
        init(context);
    }

    private void a() {
        AnimationDrawable animationDrawable = new AnimationDrawable();
        this.f17193h = animationDrawable;
        animationDrawable.addFrame(getResources().getDrawable(R.drawable.beizi_slide_down_one), 600);
        this.f17193h.addFrame(getResources().getDrawable(R.drawable.beizi_slide_down_two), 600);
        this.f17193h.addFrame(getResources().getDrawable(R.drawable.beizi_slide_down_three), 600);
        this.f17193h.setOneShot(false);
        ImageView imageView = this.f17187b;
        if (imageView != null) {
            imageView.setImageDrawable(this.f17193h);
        }
    }

    public void init(Context context) {
        if (this.f17186a) {
            return;
        }
        this.f17186a = true;
        TextView textView = new TextView(context);
        this.f17188c = textView;
        textView.setGravity(17);
        this.f17187b = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        setOrientation(1);
        setGravity(17);
        addView(this.f17188c, layoutParams);
        addView(this.f17187b, layoutParams2);
        a();
    }

    public void setImageWidthAndHeight(int i2, int i3) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i3);
        ImageView imageView = this.f17187b;
        if (imageView != null) {
            imageView.setLayoutParams(layoutParams);
        }
    }

    public void setTitleFont(int i2) {
        TextView textView;
        this.f17190e = i2;
        if (i2 == 0 || (textView = this.f17188c) == null) {
            return;
        }
        textView.setTextSize(2, i2);
    }

    public void setTitleText(String str) {
        TextView textView;
        this.f17189d = str;
        if (TextUtils.isEmpty(str) || (textView = this.f17188c) == null) {
            return;
        }
        textView.setText(str);
        this.f17188c.setTypeface(Typeface.DEFAULT, 1);
        this.f17188c.setTextColor(Color.parseColor("#FFFFFFFF"));
        this.f17188c.setShadowLayer(5.0f, 1.0f, 1.0f, Color.parseColor("#80000000"));
    }

    public void startAnim() {
        AnimationDrawable animationDrawable = this.f17193h;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public void stopAnim() {
        AnimationDrawable animationDrawable = this.f17193h;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public SlideClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17186a = false;
        this.f17191f = 45;
        this.f17192g = 45;
        init(context);
    }

    public SlideClickView(Context context) {
        super(context);
        this.f17186a = false;
        this.f17191f = 45;
        this.f17192g = 45;
        init(context);
    }
}
