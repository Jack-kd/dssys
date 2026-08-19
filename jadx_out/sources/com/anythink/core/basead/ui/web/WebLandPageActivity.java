package com.anythink.core.basead.ui.web;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.basead.a;
import com.anythink.core.basead.a.e;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.cf;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.p;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class WebLandPageActivity extends Activity implements b {

    /* renamed from: g, reason: collision with root package name */
    private static final int f1660g = 343452;

    /* renamed from: B, reason: collision with root package name */
    private w f1662B;

    /* renamed from: C, reason: collision with root package name */
    private x f1663C;

    /* renamed from: D, reason: collision with root package name */
    private String f1664D;

    /* renamed from: E, reason: collision with root package name */
    private IOfferClickHandler f1665E;

    /* renamed from: F, reason: collision with root package name */
    private c f1666F;

    /* renamed from: G, reason: collision with root package name */
    private int f1667G;

    /* renamed from: b, reason: collision with root package name */
    JSONArray f1671b;

    /* renamed from: e, reason: collision with root package name */
    long f1674e;

    /* renamed from: l, reason: collision with root package name */
    private WebProgressBarView f1680l;

    /* renamed from: m, reason: collision with root package name */
    private WebView f1681m;

    /* renamed from: n, reason: collision with root package name */
    private ImageView f1682n;

    /* renamed from: o, reason: collision with root package name */
    private ImageView f1683o;

    /* renamed from: p, reason: collision with root package name */
    private TextView f1684p;

    /* renamed from: q, reason: collision with root package name */
    private ValueAnimator f1685q;

    /* renamed from: r, reason: collision with root package name */
    private Random f1686r;

    /* renamed from: s, reason: collision with root package name */
    private int f1687s;

    /* renamed from: t, reason: collision with root package name */
    private long f1688t;

    /* renamed from: u, reason: collision with root package name */
    private Map<String, JSONArray> f1689u;

    /* renamed from: x, reason: collision with root package name */
    private WebLoadFailRefrshView f1692x;

    /* renamed from: y, reason: collision with root package name */
    private RelativeLayout f1693y;

    /* renamed from: h, reason: collision with root package name */
    private final int f1676h = 1;

    /* renamed from: i, reason: collision with root package name */
    private final int f1677i = 2;

    /* renamed from: j, reason: collision with root package name */
    private final int f1678j = 3;

    /* renamed from: k, reason: collision with root package name */
    private final int f1679k = 0;

    /* renamed from: a, reason: collision with root package name */
    int f1670a = 8;

    /* renamed from: v, reason: collision with root package name */
    private String f1690v = "";

    /* renamed from: w, reason: collision with root package name */
    private int f1691w = 0;

    /* renamed from: z, reason: collision with root package name */
    private boolean f1694z = false;

    /* renamed from: A, reason: collision with root package name */
    private boolean f1661A = true;

    /* renamed from: H, reason: collision with root package name */
    private ValueCallback<Uri[]> f1668H = null;

    /* renamed from: I, reason: collision with root package name */
    private final int f1669I = 512;

    /* renamed from: c, reason: collision with root package name */
    int f1672c = 0;

    /* renamed from: d, reason: collision with root package name */
    int f1673d = 0;

    /* renamed from: f, reason: collision with root package name */
    final long f1675f = 2500;

    /* renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$3, reason: invalid class name */
    public class AnonymousClass3 implements DownloadListener {
        public AnonymousClass3() {
        }

        @Override // android.webkit.DownloadListener
        public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
            s.b();
            if (WebLandPageActivity.this.f1662B == null || WebLandPageActivity.this.f1663C == null || TextUtils.isEmpty(WebLandPageActivity.this.f1662B.t())) {
                if (WebLandPageActivity.f(WebLandPageActivity.this)) {
                    WebLandPageActivity.a(WebLandPageActivity.this, str, 11);
                    return;
                }
                WebLandPageActivity.b(WebLandPageActivity.this, str, 11);
            } else if (WebLandPageActivity.this.f1665E != null && WebLandPageActivity.this.f1665E != null && WebLandPageActivity.this.f1665E.startDataFetchApp(WebLandPageActivity.this.getApplicationContext(), WebLandPageActivity.this.f1662B, WebLandPageActivity.this.f1663C, str)) {
                WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                webLandPageActivity.f1670a = 6;
                webLandPageActivity.f1673d = 1;
            } else if (WebLandPageActivity.f(WebLandPageActivity.this)) {
                WebLandPageActivity.a(WebLandPageActivity.this, str, 7);
                return;
            } else {
                WebLandPageActivity webLandPageActivity2 = WebLandPageActivity.this;
                webLandPageActivity2.f1673d = 2;
                WebLandPageActivity.b(webLandPageActivity2, str, 7);
            }
            WebLandPageActivity.g(WebLandPageActivity.this);
            WebLandPageActivity.this.i();
        }
    }

    /* renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$4, reason: invalid class name */
    public class AnonymousClass4 implements DialogInterface.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1699a;

        public AnonymousClass4(String str) {
            this.f1699a = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            f.a(WebLandPageActivity.this.f1662B, WebLandPageActivity.this.f1663C, 3, WebLandPageActivity.this.f1674e > 0, 2, this.f1699a);
        }
    }

    /* renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$5, reason: invalid class name */
    public class AnonymousClass5 implements DialogInterface.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1701a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1702b;

        public AnonymousClass5(int i2, String str) {
            this.f1701a = i2;
            this.f1702b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            int i3 = this.f1701a;
            if (i3 == 7) {
                WebLandPageActivity.this.f1673d = 2;
            }
            WebLandPageActivity.b(WebLandPageActivity.this, this.f1702b, i3);
            WebLandPageActivity.g(WebLandPageActivity.this);
            f.a(WebLandPageActivity.this.f1662B, WebLandPageActivity.this.f1663C, 3, WebLandPageActivity.this.f1674e > 0, 1, this.f1702b);
            WebLandPageActivity.this.i();
        }
    }

    /* renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$6, reason: invalid class name */
    public class AnonymousClass6 implements View.OnClickListener {
        public AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (WebLandPageActivity.this.f1681m == null || !WebLandPageActivity.this.f1681m.canGoBack()) {
                WebLandPageActivity.this.finish();
            } else {
                WebLandPageActivity.this.f1681m.goBack();
            }
        }
    }

    /* renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$7, reason: invalid class name */
    public class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WebLandPageActivity.this.finish();
        }
    }

    private static void f() {
    }

    private static void g() {
    }

    private static /* synthetic */ boolean o(WebLandPageActivity webLandPageActivity) {
        webLandPageActivity.f1694z = true;
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1674e = System.currentTimeMillis();
            this.f1661A = true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public void finish() {
        y yVar;
        x xVar = this.f1663C;
        if (xVar != null && (yVar = xVar.f4500t) != null && yVar.g() == 1) {
            try {
                AlertDialog.Builder builder = new AlertDialog.Builder(this, p.a(this, "system_dialog", "style"));
                builder.setMessage(getString(p.a(this, "web_land_page_dialog_title", "string"))).setCancelable(true).setPositiveButton(getString(p.a(this, "web_land_page_dialog_stay", "string")), new DialogInterface.OnClickListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.10
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        dialogInterface.dismiss();
                        x xVar2 = WebLandPageActivity.this.f1663C;
                        int iA = WebLandPageActivity.this.f1662B.a();
                        String strI = WebLandPageActivity.this.f1662B.i();
                        WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                        f.a(xVar2, iA, strI, webLandPageActivity.f1671b, webLandPageActivity.f1690v, 0);
                    }
                }).setNegativeButton(getString(p.a(this, "web_land_page_dialog_yes", "string")), new DialogInterface.OnClickListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.9
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        dialogInterface.dismiss();
                        x xVar2 = WebLandPageActivity.this.f1663C;
                        int iA = WebLandPageActivity.this.f1662B.a();
                        String strI = WebLandPageActivity.this.f1662B.i();
                        WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                        f.a(xVar2, iA, strI, webLandPageActivity.f1671b, webLandPageActivity.f1690v, 1);
                        WebLandPageActivity.this.i();
                    }
                });
                builder.create().show();
                return;
            } catch (Throwable unused) {
            }
        }
        i();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        Uri[] uriArr;
        ClipData clipData;
        if (i2 == 512) {
            if (this.f1668H == null) {
                return;
            }
            if (i3 != -1 || intent == null) {
                uriArr = null;
            } else {
                String dataString = intent.getDataString();
                try {
                    clipData = intent.getClipData();
                } catch (Throwable unused) {
                }
                if (clipData != null) {
                    uriArr = new Uri[clipData.getItemCount()];
                    for (int i4 = 0; i4 < clipData.getItemCount(); i4++) {
                        try {
                            uriArr[i4] = clipData.getItemAt(i4).getUri();
                        } catch (Throwable unused2) {
                        }
                    }
                } else {
                    uriArr = null;
                }
                if (dataString != null) {
                    uriArr = new Uri[]{Uri.parse(dataString)};
                }
            }
            this.f1668H.onReceiveValue(uriArr);
            this.f1668H = null;
            super.onActivityResult(i2, i3, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        WebView webView = this.f1681m;
        if (webView == null || !webView.canGoBack()) {
            super.onBackPressed();
        } else {
            this.f1681m.goBack();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onCreate(bundle);
        this.f1688t = SystemClock.elapsedRealtime();
        this.f1689u = new LinkedHashMap();
        setResult(-1);
        Intent intent = getIntent();
        if (intent != null) {
            try {
                Serializable serializableExtra = intent.getSerializableExtra(a.C0043a.f1582c);
                if (serializableExtra != null && (serializableExtra instanceof w)) {
                    w wVar = (w) serializableExtra;
                    this.f1662B = wVar;
                    this.f1666F = new c(wVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                Serializable serializableExtra2 = intent.getSerializableExtra(a.C0043a.f1584e);
                if (serializableExtra2 != null && (serializableExtra2 instanceof x)) {
                    this.f1663C = (x) serializableExtra2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                Serializable serializableExtra3 = intent.getSerializableExtra(a.C0043a.f1590k);
                if (serializableExtra3 != null && (serializableExtra3 instanceof IOfferClickHandler)) {
                    this.f1665E = (IOfferClickHandler) serializableExtra3;
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                this.f1664D = intent.getStringExtra(a.C0043a.f1588i);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            try {
                this.f1667G = intent.getIntExtra(a.C0043a.f1595p, -1);
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
            this.f1661A = true;
            try {
                this.f1661A = intent.getBooleanExtra(a.C0043a.f1596q, true);
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
        }
        String strS = this.f1664D;
        if (TextUtils.isEmpty(strS)) {
            w wVar2 = this.f1662B;
            strS = wVar2 != null ? wVar2.s() : "";
        }
        Context applicationContext = getApplicationContext();
        if (TextUtils.isEmpty(strS)) {
            Toast.makeText(applicationContext, p.a(applicationContext, "basead_click_empty", "string"), 0).show();
            this.f1691w = 3;
            i();
            return;
        }
        if (this.f1661A) {
            cf cfVarA = e.a(applicationContext, strS, this.f1662B);
            if (cfVarA.f4212m) {
                a(cfVarA);
                return;
            }
            a(cfVarA);
        }
        RelativeLayout relativeLayoutJ = j();
        this.f1693y = relativeLayoutJ;
        if (relativeLayoutJ == null) {
            e.b(strS);
            i();
            return;
        }
        setContentView(relativeLayoutJ);
        this.f1682n.setOnClickListener(new AnonymousClass6());
        this.f1683o.setOnClickListener(new AnonymousClass7());
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
        com.anythink.core.basead.ui.a.a.a(this.f1681m, this, this);
        this.f1681m.setDownloadListener(new AnonymousClass3());
        cf cfVarA2 = e.a(strS);
        this.f1670a = cfVarA2.f4211l;
        this.f1681m.loadUrl(cfVarA2.f4214o);
        a(this.f1681m.getUrl());
    }

    @Override // android.app.Activity
    public void onDestroy() {
        x xVar;
        super.onDestroy();
        ValueAnimator valueAnimator = this.f1685q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f1685q = null;
        }
        WebView webView = this.f1681m;
        if (webView != null) {
            webView.setDownloadListener(null);
            this.f1681m.destroy();
        }
        this.f1681m = null;
        w wVar = this.f1662B;
        if (wVar == null || (xVar = this.f1663C) == null) {
            return;
        }
        int iA = wVar.a();
        String strI = this.f1662B.i();
        Map<String, JSONArray> map = this.f1689u;
        int i2 = this.f1672c;
        int i3 = this.f1673d;
        int i4 = this.f1670a;
        String str = this.f1664D;
        int i5 = this.f1663C.f4482b;
        int i6 = this.f1667G;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f1688t;
        String str2 = this.f1690v;
        int i7 = this.f1691w;
        if (i7 == 0) {
            i7 = 1;
        }
        f.a(xVar, iA, strI, map, i2, i3, i4, str, i5, i6, jElapsedRealtime, str2, i7, this.f1694z);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        WebView webView = this.f1681m;
        if (webView != null) {
            webView.setWebChromeClient(null);
            WebView webView2 = this.f1681m;
            if (isFinishing()) {
                webView2.stopLoading();
                webView2.loadUrl("");
            }
            webView2.onPause();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        WebView webView = this.f1681m;
        if (webView != null) {
            webView.setWebChromeClient(new WebChromeClient() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.8
                @Override // android.webkit.WebChromeClient
                public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                    com.anythink.core.basead.ui.a.a.a(WebLandPageActivity.this, str, callback);
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                }

                @Override // android.webkit.WebChromeClient
                public final void onProgressChanged(WebView webView2, int i2) {
                    if (WebLandPageActivity.this.f1680l != null) {
                        if (!WebLandPageActivity.this.f1685q.isRunning()) {
                            WebLandPageActivity.this.f1680l.setProgress(((i2 * 30) / 100) + 70);
                        }
                        if (i2 == 100) {
                            if (WebLandPageActivity.this.f1685q.isRunning()) {
                                WebLandPageActivity.this.f1685q.cancel();
                                WebLandPageActivity.this.f1680l.setProgress(100);
                            }
                            s.b();
                            s.a(new Runnable() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.8.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebLandPageActivity.this.f1680l.setVisibility(8);
                                }
                            }, 200L);
                        }
                    }
                }

                @Override // android.webkit.WebChromeClient
                public final void onReceivedTitle(WebView webView2, String str) {
                    super.onReceivedTitle(webView2, str);
                    if (TextUtils.isEmpty(str) || WebLandPageActivity.this.f1684p == null || WebLandPageActivity.this.f1684p.getText().toString().length() != 0) {
                        return;
                    }
                    WebLandPageActivity.this.f1684p.setText(str);
                }

                @Override // android.webkit.WebChromeClient
                public final boolean onShowFileChooser(WebView webView2, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                    try {
                        WebLandPageActivity.this.f1668H = valueCallback;
                        Intent intent = new Intent("android.intent.action.GET_CONTENT");
                        intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*", "audio/*"});
                        intent.addCategory("android.intent.category.OPENABLE");
                        intent.setType("image/* video/* audio/*");
                        WebLandPageActivity.this.startActivityForResult(Intent.createChooser(intent, "File Chooser"), 512);
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
            });
            this.f1681m.onResume();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    private void d(String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        com.anythink.core.basead.ui.a.a.a(this.f1681m, this, this);
        this.f1681m.setDownloadListener(new AnonymousClass3());
        cf cfVarA = e.a(str);
        this.f1670a = cfVarA.f4211l;
        this.f1681m.loadUrl(cfVarA.f4214o);
        a(this.f1681m.getUrl());
    }

    private void e() {
        Intent intent = getIntent();
        if (intent != null) {
            try {
                Serializable serializableExtra = intent.getSerializableExtra(a.C0043a.f1582c);
                if (serializableExtra != null && (serializableExtra instanceof w)) {
                    w wVar = (w) serializableExtra;
                    this.f1662B = wVar;
                    this.f1666F = new c(wVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                Serializable serializableExtra2 = intent.getSerializableExtra(a.C0043a.f1584e);
                if (serializableExtra2 != null && (serializableExtra2 instanceof x)) {
                    this.f1663C = (x) serializableExtra2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                Serializable serializableExtra3 = intent.getSerializableExtra(a.C0043a.f1590k);
                if (serializableExtra3 != null && (serializableExtra3 instanceof IOfferClickHandler)) {
                    this.f1665E = (IOfferClickHandler) serializableExtra3;
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                this.f1664D = intent.getStringExtra(a.C0043a.f1588i);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            try {
                this.f1667G = intent.getIntExtra(a.C0043a.f1595p, -1);
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
            this.f1661A = true;
            try {
                this.f1661A = intent.getBooleanExtra(a.C0043a.f1596q, true);
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
        }
    }

    public static /* synthetic */ boolean f(WebLandPageActivity webLandPageActivity) {
        return System.currentTimeMillis() - webLandPageActivity.f1674e > 2500;
    }

    public static /* synthetic */ int g(WebLandPageActivity webLandPageActivity) {
        webLandPageActivity.f1691w = 2;
        return 2;
    }

    private void h() {
        this.f1682n.setOnClickListener(new AnonymousClass6());
        this.f1683o.setOnClickListener(new AnonymousClass7());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        } catch (Throwable unused) {
        }
        super.finish();
    }

    private RelativeLayout j() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(f1660g);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, p.a((Context) this, 55.0f));
        layoutParams.addRule(10);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
        int iA = p.a((Context) this, 16.0f);
        linearLayout.setPadding(iA, 0, iA, 0);
        relativeLayout.addView(linearLayout);
        this.f1682n = a(getResources().getDrawable(p.a(this, "browser_left_icon", "drawable")));
        this.f1683o = a(getResources().getDrawable(p.a(this, "browser_close_icon", "drawable")));
        linearLayout.addView(this.f1682n);
        linearLayout.addView(this.f1683o);
        TextView textView = new TextView(this);
        new LinearLayout.LayoutParams(0, -2, 1.0f);
        textView.setPadding(p.a((Context) this, 20.0f), 0, 0, p.a((Context) this, 2.0f));
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(Color.parseColor("#666666"));
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        this.f1684p = textView;
        linearLayout.addView(textView);
        try {
            this.f1681m = new BaseWebView(getApplicationContext());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(3, f1660g);
            this.f1681m.setLayoutParams(layoutParams2);
            relativeLayout.addView(this.f1681m);
            View view = new View(this);
            view.setBackgroundColor(-2434342);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, p.a((Context) this, 1.0f));
            layoutParams3.addRule(3, f1660g);
            view.setLayoutParams(layoutParams3);
            relativeLayout.addView(view);
            WebProgressBarView webProgressBarView = new WebProgressBarView(this);
            this.f1680l = webProgressBarView;
            webProgressBarView.setProgress(0);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, p.a((Context) this, 4.0f));
            layoutParams4.addRule(3, f1660g);
            relativeLayout.addView(this.f1680l, layoutParams4);
            Random random = new Random();
            this.f1686r = random;
            this.f1687s = random.nextInt(12) + 3;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 70);
            this.f1685q = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(1000L);
            this.f1685q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (WebLandPageActivity.this.f1680l == null || iIntValue % WebLandPageActivity.this.f1687s != 0) {
                        return;
                    }
                    WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                    webLandPageActivity.f1687s = webLandPageActivity.f1686r.nextInt(12) + 3;
                    WebLandPageActivity.this.f1680l.setProgress(iIntValue);
                }
            });
            this.f1685q.start();
            return relativeLayout;
        } catch (Throwable unused) {
            return null;
        }
    }

    private TextView k() {
        TextView textView = new TextView(this);
        new LinearLayout.LayoutParams(0, -2, 1.0f);
        textView.setPadding(p.a((Context) this, 20.0f), 0, 0, p.a((Context) this, 2.0f));
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(Color.parseColor("#666666"));
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    private boolean l() {
        return System.currentTimeMillis() - this.f1674e > 2500;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final void b(String str) throws JSONException {
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.equals(this.f1690v, str)) {
                this.f1691w = 1;
            }
            JSONArray jSONArray = this.f1689u.get(str);
            if (jSONArray != null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis());
                    jSONArray.put(0, sb.toString());
                    jSONArray.put(1, "");
                    this.f1689u.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        WebLoadFailRefrshView webLoadFailRefrshView = this.f1692x;
        if (webLoadFailRefrshView != null) {
            ak.a((View) webLoadFailRefrshView);
        }
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final void c(String str) {
        if (TextUtils.equals(this.f1690v, str)) {
            this.f1691w = 3;
        }
        WebLoadFailRefrshView webLoadFailRefrshView = this.f1692x;
        if (webLoadFailRefrshView != null) {
            ak.a((View) webLoadFailRefrshView);
        } else {
            WebLoadFailRefrshView webLoadFailRefrshView2 = new WebLoadFailRefrshView(this);
            this.f1692x = webLoadFailRefrshView2;
            WebView webView = this.f1681m;
            if (webView != null) {
                webLoadFailRefrshView2.setLayoutParams(webView.getLayoutParams());
            }
            this.f1692x.setOnRefreshListener(new View.OnClickListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ak.a((View) WebLandPageActivity.this.f1692x);
                    if (WebLandPageActivity.this.f1681m != null) {
                        WebLandPageActivity.this.f1681m.reload();
                    }
                }
            });
        }
        WebView webView2 = this.f1681m;
        if (webView2 != null) {
            webView2.setVisibility(8);
        }
        this.f1693y.addView(this.f1692x);
    }

    private static void a(Context context, com.anythink.core.basead.b.c cVar) {
        Intent intent = new Intent();
        intent.setClass(context, WebLandPageActivity.class);
        intent.putExtra(a.C0043a.f1582c, cVar.f1635c);
        intent.putExtra(a.C0043a.f1584e, cVar.f1640h);
        intent.putExtra(a.C0043a.f1588i, cVar.f1638f);
        intent.putExtra(a.C0043a.f1595p, cVar.f1641i);
        intent.putExtra(a.C0043a.f1596q, cVar.f1643k);
        IOfferClickHandler iOfferClickHandler = cVar.f1639g;
        if (iOfferClickHandler != null) {
            intent.putExtra(a.C0043a.f1590k, iOfferClickHandler);
        }
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final w d() {
        return this.f1662B;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final void b() {
        i();
    }

    private void b(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.anythink.core.common.v.x.a(str);
        this.f1670a = i2;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final boolean c() {
        return this.f1661A;
    }

    public static void a(Context context, String str) {
        com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
        cVar.f1638f = str;
        Intent intent = new Intent();
        intent.setClass(context, WebLandPageActivity.class);
        intent.putExtra(a.C0043a.f1582c, cVar.f1635c);
        intent.putExtra(a.C0043a.f1584e, cVar.f1640h);
        intent.putExtra(a.C0043a.f1588i, cVar.f1638f);
        intent.putExtra(a.C0043a.f1595p, cVar.f1641i);
        intent.putExtra(a.C0043a.f1596q, cVar.f1643k);
        IOfferClickHandler iOfferClickHandler = cVar.f1639g;
        if (iOfferClickHandler != null) {
            intent.putExtra(a.C0043a.f1590k, iOfferClickHandler);
        }
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }

    public static /* synthetic */ void b(WebLandPageActivity webLandPageActivity, String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.anythink.core.common.v.x.a(str);
        webLandPageActivity.f1670a = i2;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final void a(WebView webView, String str) throws JSONException {
        WebView webView2;
        WebLoadFailRefrshView webLoadFailRefrshView = this.f1692x;
        if (webLoadFailRefrshView != null && webLoadFailRefrshView.getParent() == null && (webView2 = this.f1681m) != null) {
            webView2.setVisibility(0);
        }
        webView.canGoBack();
        webView.canGoForward();
        if (!TextUtils.isEmpty(str) && this.f1691w != 3 && TextUtils.equals(this.f1690v, str) && !isFinishing()) {
            this.f1691w = 2;
            JSONArray jSONArray = this.f1689u.get(str);
            if (jSONArray != null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis());
                    jSONArray.put(1, sb.toString());
                    this.f1689u.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        c cVar = this.f1666F;
        if (cVar != null) {
            cVar.a(webView, str);
        }
    }

    private void a(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this, p.a(this, "system_dialog", "style"));
        builder.setMessage(getString(p.a(this, "web_download_file_confirm_title", "string"))).setCancelable(true).setPositiveButton(getString(p.a(this, "web_download_file_confirm", "string")), new AnonymousClass5(i2, str)).setNegativeButton(getString(p.a(this, "web_download_file_cancel", "string")), new AnonymousClass4(str));
        builder.create().show();
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final WebProgressBarView a() {
        return this.f1680l;
    }

    private ImageView a(Drawable drawable) {
        ImageView imageView = new ImageView(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p.a((Context) this, 48.0f), p.a((Context) this, 48.0f));
        layoutParams.gravity = 16;
        layoutParams.rightMargin = p.a((Context) this, 6.0f);
        imageView.setLayoutParams(layoutParams);
        int iA = p.a((Context) this, 16.0f);
        imageView.setPadding(iA, iA, iA, iA);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageDrawable(drawable);
        return imageView;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final void a(String str) {
        if (this.f1671b == null) {
            this.f1671b = new JSONArray();
        }
        this.f1671b.put(str);
        if (this.f1689u.size() > 0) {
            JSONArray jSONArray = this.f1689u.get(this.f1690v);
            try {
                if (this.f1691w == 0 && jSONArray != null) {
                    if (TextUtils.isEmpty(jSONArray.getString(1))) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(System.currentTimeMillis());
                        jSONArray.put(1, sb.toString());
                    }
                    this.f1689u.put(this.f1690v, jSONArray);
                }
            } catch (Throwable unused) {
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis());
        jSONArray2.put(sb2.toString());
        jSONArray2.put("");
        this.f1689u.put(str, jSONArray2);
        this.f1690v = str;
        this.f1691w = 0;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public final void a(cf cfVar) {
        this.f1670a = cfVar.f4211l;
        if (cfVar.f4213n) {
            if (cfVar.f4212m) {
                this.f1672c = 1;
                this.f1691w = 2;
                i();
            } else {
                this.f1672c = 2;
                if (cfVar.f4215p) {
                    f.a(this.f1662B, this.f1663C, 2, this.f1674e > 0, 0, cfVar.f4214o);
                }
            }
        }
    }

    public static /* synthetic */ void a(WebLandPageActivity webLandPageActivity, String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(webLandPageActivity, p.a(webLandPageActivity, "system_dialog", "style"));
        builder.setMessage(webLandPageActivity.getString(p.a(webLandPageActivity, "web_download_file_confirm_title", "string"))).setCancelable(true).setPositiveButton(webLandPageActivity.getString(p.a(webLandPageActivity, "web_download_file_confirm", "string")), webLandPageActivity.new AnonymousClass5(i2, str)).setNegativeButton(webLandPageActivity.getString(p.a(webLandPageActivity, "web_download_file_cancel", "string")), webLandPageActivity.new AnonymousClass4(str));
        builder.create().show();
    }
}
