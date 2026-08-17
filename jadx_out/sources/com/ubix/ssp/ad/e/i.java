package com.ubix.ssp.ad.e;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* loaded from: classes5.dex */
public class i extends RelativeLayout implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    private int f46924a;

    /* renamed from: b, reason: collision with root package name */
    private int f46925b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f46926c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f46927d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f46928e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f46929f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f46930g;

    /* renamed from: h, reason: collision with root package name */
    private a f46931h;

    public interface a {
        void a();
    }

    public i(Context context) {
        double d2;
        super(context);
        this.f46924a = 0;
        this.f46925b = 0;
        this.f46926c = null;
        this.f46927d = null;
        this.f46928e = null;
        this.f46929f = null;
        this.f46930g = false;
        int iH = com.ubix.ssp.ad.e.a0.r.a().h(context);
        int iC = com.ubix.ssp.ad.e.a0.r.a().c(context);
        double dA = com.ubix.ssp.ad.e.a0.r.a().a(context);
        if (iH > iC) {
            this.f46930g = true;
            this.f46924a = (int) (iH * 0.6f);
            d2 = 54.0d;
        } else {
            this.f46924a = (int) (iH * 0.95f);
            d2 = 64.0d;
        }
        this.f46925b = (int) (d2 * dA);
        this.f46924a = Math.min(1200, this.f46924a);
        this.f46926c = new ImageView(context);
        this.f46927d = new TextView(context);
        this.f46928e = new TextView(context);
        this.f46929f = new TextView(context);
        this.f46926c.setId(89001);
        this.f46927d.setId(89002);
        this.f46928e.setId(89003);
        this.f46929f.setId(89004);
        setBackground(com.ubix.ssp.ad.e.a0.c.a(context, -1, (int) (dA * 15.0d)));
        TextView textView = this.f46927d;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        this.f46928e.setEllipsize(truncateAt);
        addView(this.f46926c);
        TextView textView2 = this.f46927d;
        double d3 = this.f46925b;
        addView(textView2, new RelativeLayout.LayoutParams((int) (d3 * 0.8d), (int) (d3 * 0.35d)));
        TextView textView3 = this.f46928e;
        double d4 = this.f46925b;
        addView(textView3, new RelativeLayout.LayoutParams((int) (0.8d * d4), (int) (d4 * 0.35d)));
        addView(this.f46929f);
        setZ(20.0f);
        this.f46927d.setSingleLine();
        this.f46928e.setSingleLine();
        this.f46927d.setTextColor(-16777216);
        this.f46928e.setTextColor(-8158333);
        this.f46929f.setTextColor(-8158333);
        this.f46927d.setTextSize(12.0f);
        this.f46928e.setTextSize(12.0f);
        this.f46929f.setTextSize(9.0f);
        setOnTouchListener(this);
    }

    public void a(Bundle bundle) {
        String string = bundle.getString("DOWNLOAD_APP_NAME", "");
        if (TextUtils.isEmpty(string)) {
            string = bundle.getString("TITLE", "");
        }
        this.f46927d.setText(string);
        String string2 = bundle.getString("SUB_TITLE", "");
        TextView textView = this.f46928e;
        if (TextUtils.isEmpty(string2)) {
            string2 = "精选推荐";
        }
        textView.setText(string2);
        String string3 = bundle.getString("ICON_URL", "");
        this.f46929f.setText("刚刚");
        if (TextUtils.isEmpty(string3)) {
            return;
        }
        com.ubix.ssp.ad.e.v.e.b().a(string3, this.f46926c, 0, null);
    }

    public int getTargetHeight() {
        return this.f46925b;
    }

    public int getTargetWidth() {
        return this.f46924a;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            switch (childAt.getId()) {
                case 89001:
                    double d2 = this.f46924a * 0.05d;
                    double d3 = this.f46925b;
                    double d4 = 0.15d * d3;
                    double d5 = d3 * 0.7d;
                    childAt.layout((int) d2, (int) d4, (int) (d2 + d5), (int) (d4 + d5));
                    break;
                case 89002:
                    int right = findViewById(89001).getRight();
                    int i7 = this.f46924a;
                    double d6 = this.f46925b;
                    childAt.layout((int) (findViewById(89001).getRight() + (this.f46924a * 0.05d)), (int) (this.f46925b * 0.2d), (int) (((right + i7) - (0.8d * d6)) - (i7 * 0.1d)), (int) ((0.2d * d6) + (d6 * 0.35d)));
                    break;
                case 89003:
                    int bottom = findViewById(89002).getBottom();
                    int right2 = findViewById(89001).getRight();
                    childAt.layout((int) (findViewById(89001).getRight() + (this.f46924a * 0.05d)), bottom, (int) (((right2 + r11) - (this.f46925b * 0.8d)) - (this.f46924a * 0.1d)), (int) (findViewById(89002).getBottom() + (this.f46925b * 0.35d)));
                    break;
                case 89004:
                    double d7 = this.f46924a;
                    double d8 = this.f46925b;
                    childAt.layout((int) (0.9d * d7), (int) (0.2d * d8), (int) (d7 * 0.96d), (int) (d8 * 0.45d));
                    break;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(this.f46924a, this.f46925b);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1 && action != 3) {
            return true;
        }
        a aVar = this.f46931h;
        if (aVar == null) {
            return false;
        }
        aVar.a();
        return false;
    }

    public void setClickListener(a aVar) {
        this.f46931h = aVar;
    }

    public void a(View view, long j2) {
        if (view == null) {
            return;
        }
        try {
            view.setTranslationY(view.getHeight());
            view.setAlpha(0.0f);
            view.setVisibility(0);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, (float) (((i) view).getTargetHeight() * (this.f46930g ? 1.6d : 1.4d)));
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            animatorSet.setDuration(j2);
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
