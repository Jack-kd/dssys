package com.smartdigimkt.q1;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.badge.BadgeDrawable;
import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;

/* loaded from: classes5.dex */
public final class o extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public final String f42689a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f42690b;

    /* renamed from: c, reason: collision with root package name */
    public FrameLayout f42691c;

    /* renamed from: d, reason: collision with root package name */
    public MraidBaseWebView f42692d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f42693e;

    /* renamed from: f, reason: collision with root package name */
    public g f42694f;

    /* renamed from: g, reason: collision with root package name */
    public final com.smartdigimkt.d0.b f42695g;

    /* renamed from: h, reason: collision with root package name */
    public final n f42696h;

    public o(Context context, Bundle bundle, g gVar, com.smartdigimkt.d0.b bVar) {
        super(context);
        this.f42696h = new n(this);
        this.f42689a = bundle.getString("url");
        this.f42690b = bundle.getBoolean("shouldUseCustomClose");
        this.f42694f = gVar;
        this.f42695g = bVar;
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f42691c = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        MraidBaseWebView mraidBaseWebView = new MraidBaseWebView(getContext().getApplicationContext());
        this.f42692d = mraidBaseWebView;
        mraidBaseWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f42691c.addView(this.f42692d);
        TextView textView = new TextView(getContext());
        this.f42693e = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = BadgeDrawable.TOP_END;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f42693e.setLayoutParams(layoutParams);
        this.f42693e.setVisibility(this.f42690b ? 4 : 0);
        this.f42693e.setOnClickListener(new i(this));
        this.f42691c.addView(this.f42693e);
        this.f42691c.setOnTouchListener(new j(this));
        setContentView(this.f42691c);
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            getWindow().setAttributes(attributes);
            getWindow().getDecorView().setSystemUiVisibility(4615);
        }
        this.f42692d.setWebViewListener(new l(this));
        this.f42692d.setObject(this.f42696h);
        this.f42692d.loadUrl(this.f42689a);
        setOnDismissListener(new m(this));
    }
}
