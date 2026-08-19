package com.beizi.ad.internal.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.beizi.ad.internal.download.BeiZiWebView;
import com.beizi.fusion.R;

/* loaded from: classes2.dex */
public class DownloadAppInfoActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f11950a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f11951b;

    /* renamed from: c, reason: collision with root package name */
    private LinearLayout f11952c;

    /* renamed from: d, reason: collision with root package name */
    private LinearLayout f11953d;

    /* renamed from: e, reason: collision with root package name */
    private LinearLayout f11954e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f11955f;

    /* renamed from: g, reason: collision with root package name */
    private TextView f11956g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f11957h;

    /* renamed from: i, reason: collision with root package name */
    private View f11958i;

    /* renamed from: j, reason: collision with root package name */
    private View f11959j;

    /* renamed from: k, reason: collision with root package name */
    private View f11960k;

    /* renamed from: l, reason: collision with root package name */
    private int f11961l = 0;

    /* renamed from: m, reason: collision with root package name */
    private String f11962m = "";

    /* renamed from: n, reason: collision with root package name */
    private String f11963n = "";

    /* renamed from: o, reason: collision with root package name */
    private String f11964o = "";

    /* renamed from: p, reason: collision with root package name */
    private String f11965p = "";

    /* renamed from: q, reason: collision with root package name */
    private ScrollView f11966q;

    /* renamed from: r, reason: collision with root package name */
    private ScrollView f11967r;

    /* renamed from: s, reason: collision with root package name */
    private ScrollView f11968s;

    /* renamed from: t, reason: collision with root package name */
    private TextView f11969t;

    /* renamed from: u, reason: collision with root package name */
    private TextView f11970u;

    /* renamed from: v, reason: collision with root package name */
    private TextView f11971v;

    /* renamed from: w, reason: collision with root package name */
    private BeiZiWebView f11972w;

    /* renamed from: x, reason: collision with root package name */
    private BeiZiWebView f11973x;

    /* renamed from: y, reason: collision with root package name */
    private BeiZiWebView f11974y;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadAppInfoActivity.this.finish();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadAppInfoActivity.this.a(0);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadAppInfoActivity.this.a(1);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadAppInfoActivity.this.a(2);
        }
    }

    private void b() {
        this.f11950a = (ImageView) findViewById(R.id.beizi_download_appinfo_back);
        this.f11951b = (TextView) findViewById(R.id.beizi_download_appinfo_title);
        this.f11952c = (LinearLayout) findViewById(R.id.beizi_appinfo_permission_layout);
        this.f11955f = (TextView) findViewById(R.id.beizi_appinfo_permission_textview);
        this.f11958i = findViewById(R.id.beizi_appinfo_permission_below_line);
        this.f11953d = (LinearLayout) findViewById(R.id.beizi_appinfo_privacy_layout);
        this.f11956g = (TextView) findViewById(R.id.beizi_appinfo_privacy_textview);
        this.f11959j = findViewById(R.id.beizi_appinfo_privacy_below_line);
        this.f11954e = (LinearLayout) findViewById(R.id.beizi_appinfo_intro_layout);
        this.f11957h = (TextView) findViewById(R.id.beizi_appinfo_intro_textview);
        this.f11960k = findViewById(R.id.beizi_appinfo_intro_below_line);
        this.f11966q = (ScrollView) findViewById(R.id.beizi_download_appinfo_persmission_content_scrollview);
        this.f11969t = (TextView) findViewById(R.id.beizi_download_appinfo_persmission_content_textview);
        this.f11972w = (BeiZiWebView) findViewById(R.id.beizi_download_appinfo_persmission_content_webview);
        this.f11967r = (ScrollView) findViewById(R.id.beizi_download_appinfo_privacy_content_scrollview);
        this.f11970u = (TextView) findViewById(R.id.beizi_download_appinfo_privacy_content_textview);
        this.f11973x = (BeiZiWebView) findViewById(R.id.beizi_download_appinfo_privacy_content_webview);
        this.f11968s = (ScrollView) findViewById(R.id.beizi_download_appinfo_intro_content_scrollview);
        this.f11971v = (TextView) findViewById(R.id.beizi_download_appinfo_intro_content_textview);
        this.f11974y = (BeiZiWebView) findViewById(R.id.beizi_download_appinfo_intro_content_webview);
    }

    private void c() {
        this.f11957h.setTextColor(ContextCompat.getColor(this, R.color.appinfo_tab_unselected_color));
        this.f11960k.setVisibility(4);
        this.f11955f.setTextColor(ContextCompat.getColor(this, R.color.appinfo_tab_unselected_color));
        this.f11958i.setVisibility(4);
        this.f11956g.setTextColor(ContextCompat.getColor(this, R.color.appinfo_tab_unselected_color));
        this.f11959j.setVisibility(4);
        this.f11968s.setVisibility(8);
        this.f11974y.setVisibility(8);
        this.f11971v.setVisibility(8);
        this.f11966q.setVisibility(8);
        this.f11969t.setVisibility(8);
        this.f11972w.setVisibility(8);
        this.f11967r.setVisibility(8);
        this.f11970u.setVisibility(8);
        this.f11973x.setVisibility(8);
    }

    private void d() {
        if (!TextUtils.isEmpty(this.f11965p)) {
            this.f11951b.setText(this.f11965p);
        }
        this.f11950a.setOnClickListener(new a());
        this.f11952c.setOnClickListener(new b());
        this.f11953d.setOnClickListener(new c());
        this.f11954e.setOnClickListener(new d());
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
        setContentView(R.layout.beizi_download_appinfo_activity);
        b();
        a(this.f11961l);
        d();
    }

    private void a() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            return;
        }
        this.f11963n = extras.getString("privacy_content_key");
        this.f11965p = extras.getString("title_content_key");
        this.f11962m = extras.getString("permission_content_key");
        this.f11964o = extras.getString("intro_content_key");
        this.f11961l = extras.getInt("from_position_key");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (i2 == 2) {
            c();
            a(this.f11957h, this.f11960k, this.f11964o, this.f11971v, this.f11968s, this.f11974y);
        } else if (i2 == 1) {
            c();
            a(this.f11956g, this.f11959j, this.f11963n, this.f11970u, this.f11967r, this.f11973x);
        } else {
            c();
            a(this.f11955f, this.f11958i, this.f11962m, this.f11969t, this.f11966q, this.f11972w);
        }
    }

    private void a(TextView textView, View view, String str, TextView textView2, ScrollView scrollView, WebView webView) {
        textView.setTextColor(ContextCompat.getColor(this, R.color.appinfo_tab_selected_color));
        view.setBackgroundColor(ContextCompat.getColor(this, R.color.appinfo_tab_selected_color));
        view.setVisibility(0);
        if (str.startsWith("http")) {
            textView2.setText("");
            scrollView.setVisibility(8);
            webView.setVisibility(0);
            webView.loadUrl(str);
            return;
        }
        textView2.setText(str);
        textView2.setVisibility(0);
        scrollView.setVisibility(0);
        webView.setVisibility(8);
    }
}
