package com.smartdigimkt.sdk.basead.ui;

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
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class ShakeThumbView extends BaseShakeView {

    /* renamed from: m, reason: collision with root package name */
    public FrameLayout f43586m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f43587n;

    public ShakeThumbView(Context context) {
        super(context);
    }

    private void setBgDrawable(View view) {
        int iA = k.a(getContext(), 88.0f);
        int color = Color.parseColor("#99262626");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(iA);
        view.setBackgroundDrawable(gradientDrawable);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void a() {
        setOrientation(1);
        setGravity(1);
        View imageView = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(k.a(getContext(), 80.0f), k.a(getContext(), 80.0f));
        layoutParams.gravity = 49;
        imageView.setLayoutParams(layoutParams);
        setBgDrawable(imageView);
        this.f43316a = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(k.a(getContext(), 48.0f), k.a(getContext(), 48.0f));
        layoutParams2.gravity = 49;
        layoutParams2.topMargin = k.a(getContext(), 16.0f);
        this.f43316a.setLayoutParams(layoutParams2);
        this.f43587n = new TextView(getContext());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        this.f43587n.setGravity(1);
        this.f43587n.setMaxWidth(k.a(getContext(), 124.0f));
        this.f43587n.setMaxLines(2);
        this.f43587n.setEllipsize(TextUtils.TruncateAt.END);
        layoutParams3.gravity = 49;
        layoutParams3.topMargin = k.a(getContext(), 86.0f);
        this.f43587n.setLayoutParams(layoutParams3);
        this.f43587n.setText(k.a(SDKContext.getInstance().d(), "myoffer_shake_full_title", "string"));
        this.f43587n.setTextSize(1, 12.0f);
        this.f43587n.setTextColor(-1);
        this.f43587n.setBackgroundResource(k.a(SDKContext.getInstance().d(), "myoffer_bg_shake_thumb_hint", "drawable"));
        int iA = k.a(getContext(), 6.0f);
        int iA2 = k.a(getContext(), 12.0f);
        this.f43587n.setPadding(iA2, iA, iA2, iA);
        this.f43586m = new FrameLayout(getContext());
        this.f43586m.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f43586m.addView(imageView);
        this.f43586m.addView(this.f43316a);
        this.f43586m.addView(this.f43587n);
        addView(this.f43586m);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        try {
            FrameLayout frameLayout = this.f43586m;
            if (frameLayout != null) {
                frameLayout.setOnClickListener(onClickListener);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setShakeSetting(e eVar, int i2) {
        super.setShakeSetting(eVar, i2);
        if (this.f43587n != null) {
            if (TextUtils.isEmpty(this.f43323h)) {
                this.f43587n.setText(z.a(getContext(), i2));
            } else {
                this.f43587n.setText(this.f43323h);
            }
        }
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public ShakeThumbView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
