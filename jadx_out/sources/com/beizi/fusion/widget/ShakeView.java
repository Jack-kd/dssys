package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;

/* loaded from: classes2.dex */
public class ShakeView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f17168a;

    /* renamed from: b, reason: collision with root package name */
    ImageView f17169b;

    /* renamed from: c, reason: collision with root package name */
    TextView f17170c;

    /* renamed from: d, reason: collision with root package name */
    private String f17171d;

    /* renamed from: e, reason: collision with root package name */
    private AnimationDrawable f17172e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f17173f;

    public ShakeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17168a = false;
        init(context);
    }

    private void a() {
        removeAllViews();
        ImageView imageView = new ImageView(getContext());
        this.f17169b = imageView;
        imageView.setBackgroundResource(R.drawable.beizi_anim_shake_download);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.f17169b, layoutParams);
        this.f17172e = (AnimationDrawable) this.f17169b.getBackground();
    }

    public void init(Context context) {
        if (this.f17168a) {
            return;
        }
        this.f17168a = true;
        ImageView imageView = new ImageView(context);
        this.f17169b = imageView;
        imageView.setBackgroundResource(R.drawable.beizi_anim_shake);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.f17169b, layoutParams);
        this.f17172e = (AnimationDrawable) this.f17169b.getBackground();
    }

    public void setDownloadApp(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        this.f17173f = zBooleanValue;
        if (zBooleanValue) {
            a();
        }
    }

    public void setTitleText(String str) {
        this.f17171d = str;
        TextView textView = this.f17170c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void startShake() {
        AnimationDrawable animationDrawable = this.f17172e;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public void stopShake() {
        AnimationDrawable animationDrawable = this.f17172e;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public void updateTwistRollAnim() {
        removeAllViews();
        ImageView imageView = new ImageView(getContext());
        this.f17169b = imageView;
        imageView.setBackgroundResource(R.drawable.beizi_twist_roll);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.f17169b, layoutParams);
        this.f17172e = (AnimationDrawable) this.f17169b.getBackground();
    }

    public ShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17168a = false;
        init(context);
    }

    public ShakeView(Context context) {
        super(context);
        this.f17168a = false;
        init(context);
    }
}
