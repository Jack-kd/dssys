package com.byazt.ay;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 525, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends AlertDialog {
    public static volatile AtomicInteger jx = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public ImageView f18445a;
    public Button eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public SSWebView f18446j;

    /* renamed from: l, reason: collision with root package name */
    public String f18447l;

    /* renamed from: q, reason: collision with root package name */
    public hp f18448q;

    /* renamed from: s, reason: collision with root package name */
    public Button f18449s;

    /* renamed from: w, reason: collision with root package name */
    public Context f18450w;

    public interface hp {
        void hp(Dialog dialog);

        void jx(Dialog dialog);

        void l(Dialog dialog);
    }

    public w(Context context, String str, String str2, String str3) {
        super(context);
        this.f18450w = context;
        this.hp = str;
        this.f18447l = str3;
        if (TextUtils.isEmpty(str) || !(this.hp.startsWith("https") || this.hp.startsWith("http"))) {
            this.hp = str2;
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        jx.set(0);
        hp hpVar = this.f18448q;
        if (hpVar != null) {
            hpVar.l(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        if (this.f18450w == null) {
            this.f18450w = sz.getContext();
        }
        hp();
    }

    private View hp(int i2) {
        LinearLayout linearLayout = new LinearLayout(this.f18450w);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i2);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.f18450w);
        LinearLayout.LayoutParams layoutParams2 = i2 == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        LinearLayout linearLayout2 = new LinearLayout(this.f18450w);
        LinearLayout.LayoutParams layoutParams3 = i2 == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(xh.jx(this.f18450w, 8.0f));
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams3);
        linearLayout.addView(linearLayout2);
        RelativeLayout relativeLayout = new RelativeLayout(this.f18450w);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this.f18450w);
        this.f18445a = imageView;
        imageView.setMaxHeight(xh.jx(this.f18450w, 46.0f));
        this.f18445a.setMaxWidth(xh.jx(this.f18450w, 46.0f));
        this.f18445a.setMinimumHeight(xh.jx(this.f18450w, 46.0f));
        this.f18445a.setMinimumWidth(xh.jx(this.f18450w, 46.0f));
        this.f18445a.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.byazt.vi.jx jxVar = new com.byazt.vi.jx(xh.jx(this.f18450w, 14.0f));
        jxVar.hp(-16777216);
        jxVar.hp(xh.jx(this.f18450w, 2.0f));
        this.f18445a.setImageDrawable(jxVar);
        relativeLayout.addView(this.f18445a);
        TextView textView = new TextView(this.f18450w);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams4.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText(this.f18447l);
        textView.setLayoutParams(layoutParams4);
        relativeLayout.addView(textView);
        linearLayout2.addView(relativeLayout);
        View view2 = new View(this.f18450w);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.f18450w, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view2);
        this.f18446j = new SSWebView(this.f18450w);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.weight = 1.0f;
        this.f18446j.setLayoutParams(layoutParams5);
        linearLayout2.addView(this.f18446j);
        View view3 = new View(this.f18450w);
        view3.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.f18450w, 1.0f)));
        view3.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view3);
        LinearLayout linearLayout3 = new LinearLayout(this.f18450w);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setOrientation(0);
        int iJx = xh.jx(this.f18450w, 16.0f);
        linearLayout3.setPadding(iJx, iJx, iJx, iJx);
        linearLayout3.setLayoutParams(layoutParams6);
        linearLayout2.addView(linearLayout3);
        this.f18449s = new Button(this.f18450w);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -2);
        int iJx2 = xh.jx(this.f18450w, 7.0f);
        layoutParams7.leftMargin = iJx2;
        layoutParams7.rightMargin = iJx2;
        layoutParams7.weight = 1.0f;
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-1);
        gradientDrawable2.setCornerRadius(xh.jx(this.f18450w, 3.0f));
        gradientDrawable2.setStroke(xh.jx(this.f18450w, 0.5f), Color.parseColor("#E0161823"));
        this.f18449s.setBackground(gradientDrawable2);
        int iJx3 = xh.jx(this.f18450w, 12.0f);
        this.f18449s.setText("上一步");
        this.f18449s.setPadding(0, iJx3, 0, iJx3);
        this.f18449s.setTextColor(Color.parseColor("#A8161823"));
        this.f18449s.setLayoutParams(layoutParams7);
        linearLayout3.addView(this.f18449s);
        this.eb = new Button(this.f18450w);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -2);
        layoutParams8.leftMargin = iJx2;
        layoutParams8.rightMargin = iJx2;
        layoutParams8.weight = 1.0f;
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable3.setCornerRadius(xh.jx(this.f18450w, 3.0f));
        this.eb.setBackground(gradientDrawable3);
        this.eb.setText("立即下载");
        this.eb.setPadding(0, iJx3, 0, iJx3);
        this.eb.setTextColor(-1);
        this.eb.setLayoutParams(layoutParams8);
        linearLayout3.addView(this.eb);
        if (i2 == 0) {
            return linearLayout;
        }
        View view4 = new View(this.f18450w);
        view4.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.f18450w, 34.0f)));
        linearLayout2.addView(view4);
        return linearLayout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp() {
        if (this.f18450w.getResources().getConfiguration().orientation == 1) {
            setContentView(hp(1));
        } else {
            setContentView(hp(0));
        }
        this.f18445a.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.w.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.jx.set(0);
                if (w.this.f18448q != null) {
                    w.this.f18448q.l(w.this);
                }
            }
        });
        this.f18449s.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.w.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.jx.set(0);
                if (w.this.f18448q != null) {
                    w.this.f18448q.jx(w.this);
                }
            }
        });
        this.eb.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.w.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.jx.set(0);
                if (w.this.f18448q != null) {
                    w.this.f18448q.hp(w.this);
                }
            }
        });
        this.f18446j.setWebViewClient(new com.byazt.cf.j(this.f18450w, null, 0 == true ? 1 : 0) { // from class: com.byazt.ay.w.4
            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, WebResourceRequest webResourceRequest) {
                this.f18835s = w.jx;
                return super.hp(webView, webResourceRequest);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (webView == null) {
                    return true;
                }
                try {
                    if (TextUtils.isEmpty(str)) {
                        return true;
                    }
                    String scheme = Uri.parse(str).getScheme();
                    if (TextUtils.isEmpty(scheme)) {
                        return true;
                    }
                    String lowerCase = scheme.toLowerCase(Locale.ROOT);
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }

            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, String str) {
                this.f18835s = w.jx;
                return super.hp(webView, str);
            }
        });
        this.f18446j.setJavaScriptEnabled(true);
        this.f18446j.setDisplayZoomControls(false);
        this.f18446j.setCacheMode(2);
        this.f18446j.loadUrl(this.hp);
    }

    public w hp(hp hpVar) {
        this.f18448q = hpVar;
        return this;
    }
}
