package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.Dips;
import com.sigmob.sdk.videoAd.C1376c;

/* renamed from: com.sigmob.sdk.base.views.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1292d extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private final int f36929a;

    /* renamed from: b, reason: collision with root package name */
    private final int f36930b;

    /* renamed from: c, reason: collision with root package name */
    private final int f36931c;

    /* renamed from: d, reason: collision with root package name */
    private final int f36932d;

    /* renamed from: e, reason: collision with root package name */
    private final int f36933e;

    /* renamed from: f, reason: collision with root package name */
    private final int f36934f;

    /* renamed from: g, reason: collision with root package name */
    private final int f36935g;

    /* renamed from: h, reason: collision with root package name */
    private final int f36936h;

    /* renamed from: i, reason: collision with root package name */
    private Button f36937i;

    /* renamed from: j, reason: collision with root package name */
    private Button f36938j;

    /* renamed from: k, reason: collision with root package name */
    private int f36939k;

    /* renamed from: l, reason: collision with root package name */
    private TextView f36940l;

    /* renamed from: m, reason: collision with root package name */
    private final C1376c f36941m;

    /* renamed from: com.sigmob.sdk.base.views.d$a */
    public interface a {
        void a();

        void b();
    }

    public C1292d(Context context, C1376c c1376c) {
        super(context);
        this.f36941m = c1376c;
        this.f36929a = Dips.dipsToIntPixels(10.0f, context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(16.0f, context);
        this.f36930b = iDipsToIntPixels;
        this.f36931c = Dips.dipsToIntPixels(227.0f, context);
        this.f36934f = (int) ((r1 * 16.0f) / 9.0d);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(25.0f, context);
        this.f36932d = iDipsToIntPixels2;
        this.f36936h = Dips.dipsToIntPixels(25.0f, context);
        this.f36933e = Dips.dipsToIntPixels(100.0f, context);
        this.f36935g = iDipsToIntPixels2 + iDipsToIntPixels;
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        e(context);
    }

    private TextView a(Context context) {
        TextView textView = new TextView(context);
        textView.setText(this.f36941m.a());
        textView.setTextColor(-16777216);
        textView.setTextSize(2, 18.0f);
        textView.setGravity(17);
        return textView;
    }

    private TextView b(Context context) {
        TextView textView = new TextView(context);
        this.f36940l = textView;
        textView.setTextColor(-16777216);
        this.f36940l.setTextSize(2, 14.0f);
        this.f36940l.setGravity(17);
        return this.f36940l;
    }

    private Button c(Context context) {
        Button button = new Button(context);
        button.setText(this.f36941m.c());
        button.setTextColor(Color.parseColor("#ff999999"));
        button.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.f36930b / 2, 0, 0);
        button.setGravity(17);
        button.setTextSize(2, 14.0f);
        button.setLayoutParams(layoutParams);
        return button;
    }

    private Button d(Context context) {
        Button button = new Button(context);
        button.setText(this.f36941m.d());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.f36935g);
        int i2 = this.f36929a;
        layoutParams.setMargins(i2 * 5, i2 * 2, i2 * 5, 0);
        button.setLayoutParams(layoutParams);
        button.setTextColor(-1);
        button.setBackgroundColor(0);
        button.setTextSize(2, 16.0f);
        ab.a(button, r.f37161a, this.f36935g / 2, Color.parseColor("#66000000"), 0, 0, 0);
        return button;
    }

    private void e(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f36932d);
        int i2 = this.f36930b;
        layoutParams.setMargins(i2, this.f36929a * 2, i2, 0);
        linearLayout.addView(a(context), layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, this.f36936h);
        int i3 = this.f36930b;
        layoutParams2.setMargins(i3, this.f36929a, i3, 0);
        linearLayout.addView(b(context), layoutParams2);
        ab.a(linearLayout, Color.parseColor("#FFFFFF"), this.f36929a, Color.parseColor("#66000000"), 0, 0, 0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.f36934f, this.f36931c);
        int i4 = this.f36930b;
        layoutParams3.setMargins(i4, 0, i4, 0);
        layoutParams3.addRule(13);
        relativeLayout.setLayoutParams(layoutParams3);
        relativeLayout.addView(linearLayout, new RelativeLayout.LayoutParams(-1, -1));
        Button buttonD = d(context);
        this.f36938j = buttonD;
        linearLayout.addView(buttonD);
        Button buttonC = c(context);
        this.f36937i = buttonC;
        linearLayout.addView(buttonC);
        linearLayout.setGravity(17);
        addView(relativeLayout);
    }

    public void setDialogListener(final a aVar) {
        Button button = this.f36937i;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.views.d.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aVar.a();
                }
            });
        }
        Button button2 = this.f36938j;
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.views.d.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aVar.b();
                }
            });
        }
    }

    public void setDuration(int i2) {
        this.f36939k = i2;
        TextView textView = this.f36940l;
        if (textView == null) {
            return;
        }
        textView.setText(this.f36941m.b().replace("_SEC_", String.valueOf(this.f36939k)));
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }
}
