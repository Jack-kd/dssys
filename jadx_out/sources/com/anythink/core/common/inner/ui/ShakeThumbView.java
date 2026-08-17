package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.y;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class ShakeThumbView extends BaseShakeView {

    /* renamed from: l, reason: collision with root package name */
    private FrameLayout f5049l;

    /* renamed from: m, reason: collision with root package name */
    private TextView f5050m;

    public ShakeThumbView(Context context) {
        super(context);
    }

    @Override // com.anythink.core.common.inner.ui.BaseShakeView
    public final void a() {
        setOrientation(1);
        setGravity(1);
        View imageView = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(p.a(getContext(), 80.0f), p.a(getContext(), 80.0f));
        layoutParams.gravity = 49;
        imageView.setLayoutParams(layoutParams);
        int iA = p.a(getContext(), 88.0f);
        int color = Color.parseColor("#99262626");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(iA);
        imageView.setBackgroundDrawable(gradientDrawable);
        this.f4892a = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(p.a(getContext(), 48.0f), p.a(getContext(), 48.0f));
        layoutParams2.gravity = 49;
        layoutParams2.topMargin = p.a(getContext(), 16.0f);
        this.f4892a.setLayoutParams(layoutParams2);
        this.f5050m = new TextView(getContext());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        this.f5050m.setGravity(1);
        this.f5050m.setMaxWidth(p.a(getContext(), 124.0f));
        this.f5050m.setMaxLines(2);
        this.f5050m.setEllipsize(TextUtils.TruncateAt.END);
        layoutParams3.gravity = 49;
        layoutParams3.topMargin = p.a(getContext(), 86.0f);
        this.f5050m.setLayoutParams(layoutParams3);
        this.f5050m.setText(p.a(s.b().g(), "myoffer_shake_full_title", "string"));
        this.f5050m.setTextSize(1, 12.0f);
        this.f5050m.setTextColor(-1);
        this.f5050m.setBackgroundResource(p.a(s.b().g(), "myoffer_bg_shake_thumb_hint", "drawable"));
        int iA2 = p.a(getContext(), 6.0f);
        int iA3 = p.a(getContext(), 12.0f);
        this.f5050m.setPadding(iA3, iA2, iA3, iA2);
        this.f5049l = new FrameLayout(getContext());
        this.f5049l.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f5049l.addView(imageView);
        this.f5049l.addView(this.f4892a);
        this.f5049l.addView(this.f5050m);
        addView(this.f5049l);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        try {
            FrameLayout frameLayout = this.f5049l;
            if (frameLayout != null) {
                frameLayout.setOnClickListener(onClickListener);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseShakeView
    public void setShakeSetting(y yVar, int i2) {
        super.setShakeSetting(yVar, i2);
        if (this.f5050m != null) {
            if (!TextUtils.isEmpty(this.f4898g)) {
                this.f5050m.setText(this.f4898g);
                return;
            }
            TextView textView = this.f5050m;
            Context context = getContext();
            textView.setText((i2 == 1 || i2 == 4) ? p.a(context, "myoffer_shake_full_title_download_type", "string") : p.a(context, "myoffer_shake_full_title", "string"));
        }
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    private void a(View view) {
        int iA = p.a(getContext(), 88.0f);
        int color = Color.parseColor("#99262626");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(iA);
        view.setBackgroundDrawable(gradientDrawable);
    }
}
