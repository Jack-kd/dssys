package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class ThirdPartyNativeExtView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private TextView f5248a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f5249b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f5250c;

    public ThirdPartyNativeExtView(Context context) {
        this(context, null);
    }

    private static void a(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setTextSize(1, 10.0f);
        textView.setTextColor(Color.parseColor("#A0A0A0"));
        textView.setSelected(true);
        textView.setSingleLine();
        textView.setMarqueeRepeatLimit(-1);
        textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
    }

    public TextView getAdFromView() {
        return this.f5250c;
    }

    public TextView getDomainView() {
        return this.f5248a;
    }

    public TextView getWarningView() {
        return this.f5249b;
    }

    public void initView(String str, String str2, String str3) {
        setOrientation(0);
        Context context = getContext();
        if (!TextUtils.isEmpty(str)) {
            TextView textView = new TextView(context);
            this.f5248a = textView;
            textView.setText(str);
            a(this.f5248a);
            addView(this.f5248a);
        }
        if (!TextUtils.isEmpty(str2)) {
            TextView textView2 = new TextView(context);
            this.f5249b = textView2;
            textView2.setText(str2);
            a(this.f5249b);
            if (getChildCount() > 0) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.leftMargin = p.a(context, 10.0f);
                addView(this.f5249b, layoutParams);
            } else {
                addView(this.f5249b);
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            TextView textView3 = new TextView(context);
            this.f5250c = textView3;
            textView3.setText(str3);
            a(this.f5250c);
            if (getChildCount() > 0) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams2.leftMargin = p.a(context, 10.0f);
                addView(this.f5250c, layoutParams2);
            } else {
                addView(this.f5250c);
            }
        }
        setGravity(16);
    }

    public ThirdPartyNativeExtView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ThirdPartyNativeExtView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
