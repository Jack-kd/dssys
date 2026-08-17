package com.byazt.ay;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 525, 34})
@SuppressLint({"SetJavaScriptEnabled"})
/* loaded from: classes2.dex */
public class l extends AlertDialog {

    /* renamed from: l, reason: collision with root package name */
    public static volatile AtomicInteger f18409l = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public ListView f18410a;

    /* renamed from: e, reason: collision with root package name */
    public String f18411e;
    public SSWebView eb;
    public HashMap<String, String> gu;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public Button f18412j;
    public List<jx> jl;
    public Button jx;

    /* renamed from: q, reason: collision with root package name */
    public hp f18413q;

    /* renamed from: s, reason: collision with root package name */
    public String f18414s;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f18415w;
    public boolean zy;

    public interface hp {
        void hp(Dialog dialog);

        void jx(Dialog dialog);

        void l(Dialog dialog);
    }

    @com.byazt.kj.hp(hp = {0, 1, 525, 1157})
    public class jx {
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f18416l;

        public jx(String str, String str2) {
            this.f18416l = str;
            this.jx = str2;
        }

        public String hp() {
            return this.f18416l;
        }

        public String l() {
            return this.jx;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 525, 1376})
    /* renamed from: com.byazt.ay.l$l, reason: collision with other inner class name */
    public class C0192l extends ArrayAdapter<jx> {

        @com.byazt.kj.hp(hp = {0, 1, 525, 526})
        /* renamed from: com.byazt.ay.l$l$hp */
        public class hp {

            /* renamed from: j, reason: collision with root package name */
            public ImageView f18417j;
            public TextView jx;

            /* renamed from: l, reason: collision with root package name */
            public TextView f18418l;

            public hp() {
            }
        }

        public C0192l(Context context, int i2, List<jx> list) {
            super(context, i2, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            hp hpVar;
            View view2;
            jx jxVar = (jx) getItem(i2);
            if (view == null) {
                RelativeLayout relativeLayout = new RelativeLayout(l.this.hp);
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                relativeLayout.setPadding(0, 0, 0, xh.jx(l.this.hp, 17.0f));
                TextView textView = new TextView(l.this.hp);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                int iJx = xh.jx(l.this.hp, 16.0f);
                layoutParams.leftMargin = iJx;
                layoutParams.rightMargin = iJx;
                textView.setGravity(16);
                textView.setId(View.generateViewId());
                textView.setTextColor(Color.parseColor("#161823"));
                textView.setTextSize(16.0f);
                textView.setTypeface(null, 1);
                textView.setPadding(0, xh.jx(l.this.hp, 19.0f), 0, 0);
                textView.setLayoutParams(layoutParams);
                relativeLayout.addView(textView);
                ImageView imageView = new ImageView(l.this.hp);
                imageView.setId(View.generateViewId());
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iJx, iJx);
                layoutParams2.topMargin = xh.jx(l.this.hp, 7.0f);
                layoutParams2.addRule(3, textView.getId());
                layoutParams2.addRule(5, textView.getId());
                com.byazt.ymw.v.hp(l.this.hp, "tt_open_app_detail_list_item", (View) imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                imageView.setLayoutParams(layoutParams2);
                relativeLayout.addView(imageView);
                TextView textView2 = new TextView(l.this.hp);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.leftMargin = xh.jx(l.this.hp, 8.0f);
                layoutParams3.topMargin = xh.jx(l.this.hp, 6.0f);
                layoutParams3.addRule(3, textView.getId());
                layoutParams3.addRule(1, imageView.getId());
                textView2.setLayoutParams(layoutParams3);
                textView2.setTextColor(Color.parseColor("#161823"));
                textView2.setTextSize(13.0f);
                textView2.setAlpha(0.5f);
                textView2.setGravity(16);
                relativeLayout.addView(textView2);
                hpVar = new hp();
                hpVar.f18418l = textView;
                hpVar.jx = textView2;
                hpVar.f18417j = imageView;
                relativeLayout.setTag(hpVar);
                view2 = relativeLayout;
            } else {
                hpVar = (hp) view.getTag();
                view2 = view;
            }
            hpVar.f18417j.setVisibility(0);
            if ("补充中，可于应用官网查看".equals(jxVar.hp())) {
                hpVar.f18417j.setVisibility(4);
            }
            hpVar.f18418l.setText(jxVar.hp());
            hpVar.jx.setText(jxVar.l());
            return view2;
        }
    }

    public l(Context context, String str) {
        super(context);
        this.jl = new ArrayList();
        this.zy = false;
        this.hp = context;
        this.f18411e = str;
    }

    private void j() {
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        if (this.hp.getResources().getConfiguration().orientation == 1) {
            setContentView(hp(1));
        } else {
            setContentView(hp(0));
        }
    }

    private LinearLayout jx(int i2, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        LinearLayout linearLayout2 = new LinearLayout(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout2.setOrientation(0);
        int iJx = xh.jx(this.hp, 16.0f);
        linearLayout2.setPadding(iJx, iJx, iJx, iJx);
        linearLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(linearLayout2);
        this.f18412j = new Button(this.hp);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int iJx2 = xh.jx(this.hp, 7.0f);
        layoutParams2.leftMargin = iJx2;
        layoutParams2.rightMargin = iJx2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 3.0f));
        gradientDrawable.setStroke(xh.jx(this.hp, 0.5f), Color.parseColor("#E0161823"));
        this.f18412j.setBackground(gradientDrawable);
        int iJx3 = xh.jx(this.hp, 12.0f);
        this.f18412j.setText("上一步");
        this.f18412j.setPadding(0, iJx3, 0, iJx3);
        this.f18412j.setTextColor(Color.parseColor("#A8161823"));
        this.f18412j.setLayoutParams(layoutParams2);
        linearLayout2.addView(this.f18412j);
        return hp(i2, linearLayout, relativeLayout, linearLayout2, iJx2, iJx3);
    }

    private LinearLayout l(int i2, LinearLayout linearLayout, LinearLayout linearLayout2) {
        if (i2 == 0) {
            return linearLayout;
        }
        View view = new View(this.hp);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.hp, 34.0f)));
        linearLayout2.addView(view);
        return linearLayout;
    }

    private void w() {
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        if (this.hp.getResources().getConfiguration().orientation == 1) {
            setContentView(l(1));
        } else {
            setContentView(l(0));
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f18409l.set(0);
        hp hpVar = this.f18413q;
        if (hpVar != null) {
            hpVar.l(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        l();
        if (this.zy) {
            w();
        } else {
            j();
        }
        jx();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    private View hp(int i2) {
        LinearLayout linearLayout = new LinearLayout(this.hp);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i2);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.hp);
        LinearLayout.LayoutParams layoutParams2 = i2 == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        LinearLayout linearLayout2 = new LinearLayout(this.hp);
        LinearLayout.LayoutParams layoutParams3 = i2 == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 8.0f));
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams3);
        linearLayout.addView(linearLayout2);
        RelativeLayout relativeLayout = new RelativeLayout(this.hp);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        return hp(i2, linearLayout, linearLayout2, relativeLayout);
    }

    private LinearLayout j(int i2, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        if (i2 == 0) {
            return linearLayout;
        }
        View view = new View(this.hp);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.hp, 34.0f)));
        relativeLayout.addView(view);
        return linearLayout;
    }

    private View l(int i2) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout.LayoutParams layoutParams2;
        LinearLayout linearLayout = new LinearLayout(this.hp);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i2);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams3);
        View view = new View(this.hp);
        if (i2 == 0) {
            layoutParams = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams.weight = 0.38f;
        view.setLayoutParams(layoutParams);
        linearLayout.addView(view);
        RelativeLayout relativeLayout = new RelativeLayout(this.hp);
        if (i2 == 0) {
            layoutParams2 = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams2.weight = 0.62f;
        layoutParams2.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 8.0f));
        relativeLayout.setBackground(gradientDrawable);
        relativeLayout.setLayoutParams(layoutParams2);
        linearLayout.addView(relativeLayout);
        return hp(i2, linearLayout, relativeLayout);
    }

    public void jx() {
        if (this.zy) {
            hp();
        } else {
            SSWebView sSWebView = this.eb;
            if (sSWebView != null) {
                sSWebView.setWebViewClient(new SSWebView.hp());
            }
        }
        this.jx.setVisibility(0);
        this.jx.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.l.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.f18409l.set(0);
                if (l.this.f18413q != null) {
                    l.this.f18413q.hp(l.this);
                }
            }
        });
        this.f18415w.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.l.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.f18409l.set(0);
                if (l.this.f18413q != null) {
                    l.this.f18413q.l(l.this);
                }
            }
        });
        this.f18412j.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.l.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.f18409l.set(0);
                if (l.this.f18413q != null) {
                    l.this.f18413q.jx(l.this);
                }
            }
        });
        List<jx> list = this.jl;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f18410a.setAdapter((ListAdapter) new C0192l(this.hp, 0, this.jl));
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout) {
        ImageView imageView = new ImageView(this.hp);
        this.f18415w = imageView;
        imageView.setMaxHeight(xh.jx(this.hp, 46.0f));
        this.f18415w.setMaxWidth(xh.jx(this.hp, 46.0f));
        this.f18415w.setMinimumHeight(xh.jx(this.hp, 46.0f));
        this.f18415w.setMinimumWidth(xh.jx(this.hp, 46.0f));
        this.f18415w.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.byazt.vi.jx jxVar = new com.byazt.vi.jx(xh.jx(this.hp, 14.0f));
        jxVar.hp(-16777216);
        jxVar.hp(xh.jx(this.hp, 2.0f));
        this.f18415w.setImageDrawable(jxVar);
        relativeLayout.addView(this.f18415w);
        TextView textView = new TextView(this.hp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("权限列表");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        linearLayout2.addView(relativeLayout);
        View view = new View(this.hp);
        view.setId(View.generateViewId());
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, xh.jx(this.hp, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view);
        return hp(i2, linearLayout, hp(linearLayout2, view));
    }

    private LinearLayout l(int i2, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        View view = new View(this.hp);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.hp, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        relativeLayout.addView(view);
        this.eb = new SSWebView(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        this.eb.setLayoutParams(layoutParams);
        relativeLayout.addView(this.eb);
        View view2 = new View(this.hp);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.hp, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        relativeLayout.addView(view2);
        return jx(i2, linearLayout, relativeLayout);
    }

    public void l() {
        if (TextUtils.isEmpty(this.f18411e)) {
            hp(this.gu);
            return;
        }
        try {
            com.byazt.xci.a aVarW = com.byazt.jz.hp.w(new JSONObject(this.f18411e));
            if (aVarW != null) {
                HashMap<String, String> mapHp = aVarW.hp();
                this.gu = mapHp;
                if (!mapHp.isEmpty()) {
                    this.zy = false;
                    hp(this.gu);
                } else if (!TextUtils.isEmpty(aVarW.l())) {
                    this.f18414s = aVarW.l();
                    this.zy = true;
                } else {
                    hp(this.gu);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private LinearLayout hp(LinearLayout linearLayout, View view) {
        LinearLayout linearLayout2 = new LinearLayout(this.hp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, view.getId());
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2);
        this.f18410a = new ListView(this.hp);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        layoutParams2.topMargin = xh.jx(this.hp, 20.0f);
        int iJx = xh.jx(this.hp, 16.0f);
        this.f18410a.setPadding(iJx, 0, iJx, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setShape(2);
        gradientDrawable.setStroke(xh.jx(this.hp, 1.0f), Color.parseColor("#F0F0F0"));
        this.f18410a.setDivider(gradientDrawable);
        this.f18410a.setDividerHeight(xh.jx(this.hp, 24.0f));
        this.f18410a.setSelector(new ColorDrawable(0));
        this.f18410a.setLayoutParams(layoutParams2);
        linearLayout2.addView(this.f18410a);
        View view2 = new View(this.hp);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, xh.jx(this.hp, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view2);
        return linearLayout2;
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, LinearLayout linearLayout2) {
        LinearLayout linearLayout3 = new LinearLayout(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setOrientation(0);
        int iJx = xh.jx(this.hp, 16.0f);
        linearLayout3.setPadding(iJx, iJx, iJx, iJx);
        linearLayout3.setLayoutParams(layoutParams);
        linearLayout2.addView(linearLayout3);
        this.f18412j = new Button(this.hp);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int iJx2 = xh.jx(this.hp, 7.0f);
        layoutParams2.leftMargin = iJx2;
        layoutParams2.rightMargin = iJx2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 3.0f));
        gradientDrawable.setStroke(xh.jx(this.hp, 0.5f), Color.parseColor("#E0161823"));
        this.f18412j.setBackground(gradientDrawable);
        int iJx3 = xh.jx(this.hp, 12.0f);
        this.f18412j.setText("上一步");
        this.f18412j.setPadding(0, iJx3, 0, iJx3);
        this.f18412j.setTextColor(Color.parseColor("#A8161823"));
        this.f18412j.setLayoutParams(layoutParams2);
        linearLayout3.addView(this.f18412j);
        return hp(iJx2, iJx3, linearLayout3, l(i2, linearLayout, linearLayout2));
    }

    private LinearLayout hp(int i2, int i3, LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.jx = new Button(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        layoutParams.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 3.0f));
        this.jx.setBackground(gradientDrawable);
        this.jx.setText("立即下载");
        this.jx.setPadding(0, i3, 0, i3);
        this.jx.setTextColor(-1);
        this.jx.setLayoutParams(layoutParams);
        linearLayout.addView(this.jx);
        return linearLayout2;
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        RelativeLayout relativeLayout2 = new RelativeLayout(this.hp);
        relativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this.hp);
        this.f18415w = imageView;
        imageView.setMaxHeight(xh.jx(this.hp, 46.0f));
        this.f18415w.setMaxWidth(xh.jx(this.hp, 46.0f));
        this.f18415w.setMinimumHeight(xh.jx(this.hp, 46.0f));
        this.f18415w.setMinimumWidth(xh.jx(this.hp, 46.0f));
        this.f18415w.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.byazt.vi.jx jxVar = new com.byazt.vi.jx(xh.jx(this.hp, 14.0f));
        jxVar.hp(-16777216);
        jxVar.hp(xh.jx(this.hp, 2.0f));
        this.f18415w.setImageDrawable(jxVar);
        relativeLayout2.addView(this.f18415w);
        TextView textView = new TextView(this.hp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("权限列表");
        textView.setLayoutParams(layoutParams);
        relativeLayout2.addView(textView);
        relativeLayout.addView(relativeLayout2);
        return l(i2, linearLayout, relativeLayout);
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, RelativeLayout relativeLayout, LinearLayout linearLayout2, int i3, int i4) {
        return hp(i3, i4, linearLayout2, j(i2, linearLayout, relativeLayout));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp() {
        this.eb.setWebViewClient(new com.byazt.cf.j(this.hp, null, 0 == true ? 1 : 0) { // from class: com.byazt.ay.l.1
            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, WebResourceRequest webResourceRequest) {
                this.f18835s = l.f18409l;
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
                this.f18835s = l.f18409l;
                return super.hp(webView, str);
            }
        });
        this.eb.setJavaScriptEnabled(true);
        this.eb.setDisplayZoomControls(false);
        this.eb.setCacheMode(2);
        this.eb.loadUrl(this.f18414s);
    }

    private void hp(HashMap<String, String> map) {
        List<jx> list = this.jl;
        if (list != null && list.size() > 0) {
            this.jl.clear();
        }
        if (this.jl == null) {
            this.jl = new ArrayList();
        }
        if (map != null && map.size() > 0) {
            for (String str : map.keySet()) {
                this.jl.add(new jx(str, map.get(str)));
            }
            return;
        }
        this.jl.add(new jx("补充中，可于应用官网查看", ""));
    }

    public l hp(hp hpVar) {
        this.f18413q = hpVar;
        return this;
    }
}
