package com.beizi.fusion.asnp.adn.ad.widget.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.LandingPageWebView;
import com.beizi.fusion.ip;
import com.beizi.fusion.vg;
import com.sigmob.sdk.base.n;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class ASNPLandingPageActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private LandingPageWebView f12996a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f12997b;

    /* renamed from: c, reason: collision with root package name */
    private LinearLayout f12998c;

    /* renamed from: d, reason: collision with root package name */
    private FrameLayout f12999d;

    /* renamed from: e, reason: collision with root package name */
    private View f13000e;

    /* renamed from: f, reason: collision with root package name */
    private String f13001f = "";

    /* renamed from: g, reason: collision with root package name */
    private vg.e f13002g;

    public class a implements OnBackInvokedCallback {
        public a() {
        }

        public void onBackInvoked() {
        }
    }

    public class b implements BasicWebView.d {
        private b() {
        }

        @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView.d
        public void a(Context context, String str, boolean z2) {
            if (ASNPLandingPageActivity.this.f13002g != null) {
                ASNPLandingPageActivity.this.f13002g.a(context, str, z2);
            }
        }

        public /* synthetic */ b(ASNPLandingPageActivity aSNPLandingPageActivity, a aVar) {
            this();
        }

        @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView.d
        public void a() {
            if (ASNPLandingPageActivity.this.f13002g != null) {
                ASNPLandingPageActivity.this.f13002g.d();
            }
        }
    }

    private void b() {
        this.f12998c.setBackgroundColor(Color.parseColor(ip.a().a("#FFFFFF")));
        this.f13000e.setBackgroundColor(Color.parseColor(ip.a().a("#FFC1C1C1")));
        this.f12997b.setTextColor(Color.parseColor(ip.a().a("#000000")));
    }

    private void c() {
        Intent intent = getIntent();
        if (intent != null) {
            this.f13001f = intent.getStringExtra("url");
            Bundle bundleExtra = intent.getBundleExtra(n.f36450m);
            if (bundleExtra != null) {
                this.f12996a.setAllowDeeplinkDirect(bundleExtra.getBoolean("allow", false));
            }
            this.f12996a.setWebViewClientListener(new b(this, null));
        }
    }

    private void d() {
        this.f12999d = (FrameLayout) findViewById(R.id.landing_page_root);
        this.f12998c = (LinearLayout) findViewById(R.id.landing_page_container);
        this.f13000e = findViewById(R.id.landing_page_divider);
        this.f12996a = (LandingPageWebView) findViewById(R.id.landing_page_main);
        TextView textView = (TextView) findViewById(R.id.landing_page_close);
        this.f12997b = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.asnp.adn.ad.widget.activity.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13009b.a(view);
            }
        });
        try {
            b();
        } catch (Exception unused) {
        }
    }

    private void e() {
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new a());
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        e();
        setContentView(R.layout.asnp_landing_page_layout);
        d();
        c();
        a(this.f13001f);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        vg.e eVar = this.f13002g;
        if (eVar != null) {
            eVar.c();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        vg.e eVar = this.f13002g;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        vg.e eVar = this.f13002g;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        vg.e eVar = this.f13002g;
        if (eVar != null) {
            eVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a();
    }

    private void a() {
        finish();
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("X-Requested-With", "");
        this.f12996a.loadUrl(str, map);
    }

    public void a(vg.e eVar) {
        this.f13002g = eVar;
        if (eVar != null) {
            eVar.a(this.f12999d);
        }
    }
}
