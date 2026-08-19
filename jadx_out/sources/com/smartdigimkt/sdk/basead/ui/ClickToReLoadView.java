package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.v1.e2;
import com.smartdigimkt.v1.f2;

/* loaded from: classes5.dex */
public class ClickToReLoadView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f43351a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f43352b;

    /* renamed from: c, reason: collision with root package name */
    public f2 f43353c;

    /* renamed from: d, reason: collision with root package name */
    public final int f43354d;

    public ClickToReLoadView(Context context) {
        super(context);
        setOrientation(1);
        setGravity(17);
        int iA = k.a(context, 10.0f);
        this.f43354d = iA;
        ImageView imageView = new ImageView(context);
        this.f43351a = imageView;
        imageView.setImageResource(k.a(context, "myoffer_webview_reload_icon", "drawable"));
        int i2 = (int) ((context.getResources().getDisplayMetrics().density * 30.0f) + 0.5f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 17;
        layoutParams.bottomMargin = iA;
        TextView textView = new TextView(context);
        this.f43352b = textView;
        textView.setText(getResources().getText(k.a(context, "myoffer_webview_reload", "string")));
        textView.setTextColor(getResources().getColor(k.a(context, "color_reload_button", "color")));
        textView.setBackgroundResource(k.a(context, "myoffer_webview_bg_reload_button", "drawable"));
        int i3 = (int) ((context.getResources().getDisplayMetrics().density * 9.0f) + 0.5f);
        int i4 = (int) ((context.getResources().getDisplayMetrics().density * 5.0f) + 0.5f);
        textView.setPadding(i3, i4, i3, i4);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.topMargin = iA;
        addView(imageView, layoutParams);
        addView(textView, layoutParams2);
        textView.setOnClickListener(new e2(this));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (getHeight() < k.a(getContext(), 100.0f)) {
            try {
                this.f43351a.setVisibility(8);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f43352b.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.topMargin = 0;
                    this.f43352b.setLayoutParams(layoutParams);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void setListener(f2 f2Var) {
        this.f43353c = f2Var;
    }
}
