package com.baidu.oauth.sdkbqt.view;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.mobads.sdk.internal.b.a;
import com.baidu.oauth.sdkbqt.R;
import com.baidu.oauth.sdkbqt.auth.C1120a;
import com.baidu.oauth.sdkbqt.auth.C1121b;
import com.baidu.oauth.sdkbqt.auth.i;
import o.d;
import o.h;
import t.C1770a;
import t.C1771b;
import t.ViewOnClickListenerC1772c;
import t.ViewOnClickListenerC1773d;

/* loaded from: classes2.dex */
public class a extends Activity {

    /* renamed from: b, reason: collision with root package name */
    public View f11847b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f11848c;

    /* renamed from: d, reason: collision with root package name */
    public com.baidu.oauth.sdkbqt.auth.i f11849d;

    /* renamed from: e, reason: collision with root package name */
    public C1120a f11850e;

    /* renamed from: com.baidu.oauth.sdkbqt.view.a$a, reason: collision with other inner class name */
    public class ViewOnClickListenerC0143a implements View.OnClickListener {
        public ViewOnClickListenerC0143a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f11849d.q();
        }

        public /* synthetic */ ViewOnClickListenerC0143a(a aVar, C1770a c1770a) {
            this();
        }
    }

    private void c() {
        int iOauthResID;
        int iOauthResID2;
        LayoutInflater layoutInflater = (LayoutInflater) getSystemService("layout_inflater");
        C1120a c1120a = this.f11850e;
        if (c1120a == null || c1120a.c() == null) {
            iOauthResID = R.layout.layout_bd_oauth_sdk_loading_timeout;
            iOauthResID2 = R.id.btn_retry;
        } else {
            iOauthResID = this.f11850e.c().oauthResID(a.b.f11139c);
            iOauthResID2 = this.f11850e.c().oauthResID(a.b.f11144h);
        }
        View viewInflate = layoutInflater.inflate(iOauthResID, (ViewGroup) null);
        viewInflate.findViewById(iOauthResID2).setOnClickListener(new ViewOnClickListenerC1773d(this, viewInflate));
        this.f11849d.r(viewInflate);
    }

    private void d() {
        try {
            ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
            progressBar.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, h.a(this, 2.0f), 0, 0));
            this.f11849d.f(progressBar);
        } catch (Throwable th) {
            d.c(th);
        }
    }

    public final void b() {
        int iOauthResID;
        int iOauthResID2;
        LayoutInflater layoutInflater = (LayoutInflater) getSystemService("layout_inflater");
        C1120a c1120a = this.f11850e;
        if (c1120a == null || c1120a.c() == null) {
            iOauthResID = R.layout.layout_bd_oauth_sdk_network_unavailable;
            iOauthResID2 = R.id.btn_network_settings;
        } else {
            iOauthResID = this.f11850e.c().oauthResID(a.b.f11138b);
            iOauthResID2 = this.f11850e.c().oauthResID(a.b.f11143g);
        }
        View viewInflate = layoutInflater.inflate(iOauthResID, (ViewGroup) null);
        viewInflate.findViewById(iOauthResID2).setOnClickListener(new ViewOnClickListenerC1772c(this));
        this.f11849d.e(viewInflate);
    }

    public void e() {
        finish();
    }

    public void f(String str) {
        this.f11848c.setText(str);
    }

    public void g() {
        int iOauthResID;
        int iOauthResID2;
        int iOauthResID3;
        this.f11849d = new com.baidu.oauth.sdkbqt.auth.i(this);
        this.f11849d.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        C1120a c1120aB = C1121b.b();
        this.f11850e = c1120aB;
        if (c1120aB == null || c1120aB.c() == null) {
            iOauthResID = R.id.oauth_title_back;
            iOauthResID2 = R.id.oauth_title;
            iOauthResID3 = R.id.oauth_webview_container;
        } else {
            iOauthResID = this.f11850e.c().oauthResID(a.b.f11140d);
            iOauthResID2 = this.f11850e.c().oauthResID(a.b.f11142f);
            iOauthResID3 = this.f11850e.c().oauthResID(a.b.f11141e);
        }
        this.f11847b = findViewById(iOauthResID);
        this.f11848c = (TextView) findViewById(iOauthResID2);
        LinearLayout linearLayout = (LinearLayout) findViewById(iOauthResID3);
        if (linearLayout != null) {
            linearLayout.addView(this.f11849d);
        }
        this.f11847b.setOnClickListener(new ViewOnClickListenerC0143a(this, null));
        b();
        c();
        d();
        this.f11849d.j(new C1770a(this));
        this.f11849d.i(new C1771b(this));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        e();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f11849d.destroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f11849d.g(i.b.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f11849d.g(i.b.ON_RESUME);
    }
}
