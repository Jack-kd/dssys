package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* loaded from: classes4.dex */
public class aq extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private TextView f36873a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f36874b;

    public aq(Context context) {
        super(context);
        a();
    }

    private void a() {
        TextView textView = new TextView(getContext());
        this.f36873a = textView;
        textView.setId(View.generateViewId());
        this.f36874b = new TextView(getContext());
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.f36873a.setTextColor(-1);
        this.f36873a.setSingleLine();
        this.f36873a.setGravity(17);
        this.f36873a.setTextSize(2, 20.0f);
        this.f36874b.setSingleLine();
        this.f36874b.setTextColor(-1);
        this.f36874b.setGravity(17);
        this.f36874b.setTextSize(2, 14.0f);
        addView(this.f36873a, layoutParams);
        addView(this.f36874b, new LinearLayout.LayoutParams(-1, -2));
    }

    public void setDescription(String str) {
        this.f36874b.setText(str);
    }

    public void setTitle(String str) {
        this.f36873a.setText(str);
    }

    public aq(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public aq(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
