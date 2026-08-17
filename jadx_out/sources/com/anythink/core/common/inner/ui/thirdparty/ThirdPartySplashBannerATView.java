package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.inner.ui.thirdparty.a;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class ThirdPartySplashBannerATView extends RelativeLayout implements com.anythink.core.common.l.b.a.c {

    /* renamed from: a, reason: collision with root package name */
    private Context f5268a;

    /* renamed from: b, reason: collision with root package name */
    private a f5269b;

    public ThirdPartySplashBannerATView(Context context) {
        this(context, null);
    }

    private void a() {
        TextView textView = new TextView(this.f5268a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int iA = p.a(this.f5268a, 5.0f);
        layoutParams.leftMargin = iA;
        layoutParams.topMargin = iA;
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        textView.setBackgroundResource(p.a(this.f5268a, "myoffer_splash_ad_label_bg", "drawable"));
        int iA2 = p.a(this.f5268a, 2.0f);
        textView.setPadding(iA, iA2, iA, iA2);
        textView.setText(p.a(this.f5268a, "basead_ad_text", "string"));
        textView.setTextColor(Color.parseColor("#ffffff"));
        textView.setTextSize(2, 11.0f);
        textView.setGravity(17);
        addView(textView, layoutParams);
    }

    private void b() {
        TextView textView = new TextView(this.f5268a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int iA = p.a(this.f5268a, 5.0f);
        layoutParams.leftMargin = iA;
        layoutParams.topMargin = iA;
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        textView.setBackgroundResource(p.a(this.f5268a, "myoffer_splash_ad_label_bg", "drawable"));
        int iA2 = p.a(this.f5268a, 2.0f);
        textView.setPadding(iA, iA2, iA, iA2);
        textView.setText(p.a(this.f5268a, "basead_ad_text", "string"));
        textView.setTextColor(Color.parseColor("#ffffff"));
        textView.setTextSize(2, 11.0f);
        textView.setGravity(17);
        addView(textView, layoutParams);
    }

    public void addBannerView(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(14);
        addView(view, layoutParams);
    }

    public void addCountDownView(int i2, a.InterfaceC0059a interfaceC0059a) {
        a aVar = new a(this.f5268a, this, i2 * 1000, interfaceC0059a);
        this.f5269b = aVar;
        View viewA = aVar.a();
        if (viewA == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        layoutParams.setMargins(0, p.a(this.f5268a, 32.0f), p.a(this.f5268a, 18.0f), 0);
        addView(viewA, layoutParams);
        this.f5269b.b();
    }

    public ThirdPartySplashBannerATView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ThirdPartySplashBannerATView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5268a = context;
        TextView textView = new TextView(this.f5268a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int iA = p.a(this.f5268a, 5.0f);
        layoutParams.leftMargin = iA;
        layoutParams.topMargin = iA;
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        textView.setBackgroundResource(p.a(this.f5268a, "myoffer_splash_ad_label_bg", "drawable"));
        int iA2 = p.a(this.f5268a, 2.0f);
        textView.setPadding(iA, iA2, iA, iA2);
        textView.setText(p.a(this.f5268a, "basead_ad_text", "string"));
        textView.setTextColor(Color.parseColor("#ffffff"));
        textView.setTextSize(2, 11.0f);
        textView.setGravity(17);
        addView(textView, layoutParams);
    }
}
