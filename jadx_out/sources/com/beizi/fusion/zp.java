package com.beizi.fusion;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;

/* loaded from: classes2.dex */
public abstract class zp extends s3 {

    /* renamed from: a, reason: collision with root package name */
    private WebChromeClient.CustomViewCallback f17927a;

    /* renamed from: b, reason: collision with root package name */
    private FrameLayout f17928b;

    /* renamed from: c, reason: collision with root package name */
    private Activity f17929c;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            zp.this.onHideCustomView();
        }
    }

    public zp(Activity activity) {
        this.f17929c = activity;
    }

    private void a(FrameLayout frameLayout) {
        ImageButton imageButton = new ImageButton(this.f17929c);
        imageButton.setImageDrawable(this.f17929c.getResources().getDrawable(android.R.drawable.ic_menu_close_clear_cancel));
        imageButton.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 53));
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(new a());
        frameLayout.addView(imageButton);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        ViewGroup viewGroup;
        super.onHideCustomView();
        Activity activity = this.f17929c;
        if (activity == null || this.f17928b == null || (viewGroup = (ViewGroup) activity.findViewById(android.R.id.content)) == null) {
            return;
        }
        viewGroup.removeView(this.f17928b);
        WebChromeClient.CustomViewCallback customViewCallback = this.f17927a;
        if (customViewCallback != null) {
            try {
                customViewCallback.onCustomViewHidden();
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int i2, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        ViewGroup viewGroup;
        super.onShowCustomView(view, customViewCallback);
        Activity activity = this.f17929c;
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(android.R.id.content)) == null) {
            return;
        }
        this.f17927a = customViewCallback;
        if (!(view instanceof FrameLayout)) {
            this.f17928b = null;
            return;
        }
        FrameLayout frameLayout = (FrameLayout) view;
        this.f17928b = frameLayout;
        frameLayout.setClickable(true);
        this.f17928b.setBackgroundColor(-16777216);
        try {
            a(this.f17928b);
            viewGroup.addView(this.f17928b, new ViewGroup.LayoutParams(-1, -1));
        } catch (Exception unused) {
        }
    }
}
