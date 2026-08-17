package com.smartdigimkt.sdk.basead.ui.web;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Context;
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
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.anythink.core.basead.a;
import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.m3.q;
import com.smartdigimkt.r2.y;
import com.smartdigimkt.s2.b;
import com.smartdigimkt.s2.d;
import com.smartdigimkt.s2.f;
import com.smartdigimkt.s2.g;
import com.smartdigimkt.s2.i;
import com.smartdigimkt.s2.j;
import com.smartdigimkt.s2.m;
import com.smartdigimkt.s2.n;
import com.smartdigimkt.s2.o;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.h;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes5.dex */
public class WebLandPageActivity extends Activity implements b {

    /* renamed from: E, reason: collision with root package name */
    public static final /* synthetic */ int f44030E = 0;

    /* renamed from: A, reason: collision with root package name */
    public JSONArray f44031A;

    /* renamed from: D, reason: collision with root package name */
    public long f44034D;

    /* renamed from: a, reason: collision with root package name */
    public WebProgressBarView f44035a;

    /* renamed from: b, reason: collision with root package name */
    public BaseWebView f44036b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f44037c;

    /* renamed from: d, reason: collision with root package name */
    public ImageView f44038d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f44039e;

    /* renamed from: g, reason: collision with root package name */
    public ValueAnimator f44041g;

    /* renamed from: h, reason: collision with root package name */
    public Random f44042h;

    /* renamed from: i, reason: collision with root package name */
    public int f44043i;

    /* renamed from: j, reason: collision with root package name */
    public long f44044j;

    /* renamed from: k, reason: collision with root package name */
    public LinkedHashMap f44045k;

    /* renamed from: n, reason: collision with root package name */
    public WebLoadFailRefrshView f44048n;

    /* renamed from: o, reason: collision with root package name */
    public RelativeLayout f44049o;

    /* renamed from: s, reason: collision with root package name */
    public c f44053s;

    /* renamed from: t, reason: collision with root package name */
    public a f44054t;

    /* renamed from: u, reason: collision with root package name */
    public String f44055u;

    /* renamed from: v, reason: collision with root package name */
    public IOfferClickHandler f44056v;

    /* renamed from: w, reason: collision with root package name */
    public d f44057w;

    /* renamed from: x, reason: collision with root package name */
    public int f44058x;

    /* renamed from: f, reason: collision with root package name */
    public int f44040f = 8;

    /* renamed from: l, reason: collision with root package name */
    public String f44046l = "";

    /* renamed from: m, reason: collision with root package name */
    public int f44047m = 0;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f44050p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f44051q = true;

    /* renamed from: r, reason: collision with root package name */
    public String f44052r = "";

    /* renamed from: y, reason: collision with root package name */
    public boolean f44059y = false;

    /* renamed from: z, reason: collision with root package name */
    public ValueCallback f44060z = null;

    /* renamed from: B, reason: collision with root package name */
    public int f44032B = 0;

    /* renamed from: C, reason: collision with root package name */
    public int f44033C = 0;

    public static void a(Context context, String str) {
        com.smartdigimkt.s2.c.f43115b = true;
        Intent intent = new Intent();
        intent.setClass(context, WebLandPageActivity.class);
        intent.putExtra(a.C0043a.f1582c, (Serializable) null);
        intent.putExtra(a.C0043a.f1584e, (Serializable) null);
        intent.putExtra(a.C0043a.f1588i, str);
        intent.putExtra(a.C0043a.f1595p, -1);
        intent.putExtra(a.C0043a.f1596q, true);
        intent.putExtra("extra_need_limit_redirect", false);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }

    @Override // com.smartdigimkt.s2.b
    public final void callbackClickResult(q qVar) {
        this.f44040f = qVar.f42140a;
        if (qVar.f42142c) {
            if (qVar.f42141b) {
                this.f44032B = 1;
                this.f44047m = 2;
                a();
            } else {
                this.f44032B = 2;
                if (qVar.f42144e) {
                    h.a(2, 0, this.f44054t, this.f44053s, qVar.f42143d, this.f44034D > 0);
                }
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f44034D = System.currentTimeMillis();
            this.f44051q = true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public final void finish() {
        e eVar;
        com.smartdigimkt.l3.a aVar = this.f44054t;
        if (aVar == null || (eVar = aVar.f41644r) == null || eVar.f41879N1 != 1) {
            a();
            return;
        }
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this, k.a(this, "system_dialog", "style"));
            builder.setMessage(getString(k.a(this, "web_land_page_dialog_title", "string"))).setCancelable(true).setPositiveButton(getString(k.a(this, "web_land_page_dialog_stay", "string")), new o(this)).setNegativeButton(getString(k.a(this, "web_land_page_dialog_yes", "string")), new n(this));
            builder.create().show();
        } catch (Throwable unused) {
            a();
        }
    }

    @Override // com.smartdigimkt.s2.b
    public final c getBaseAdContent() {
        return this.f44053s;
    }

    @Override // com.smartdigimkt.s2.b
    public final com.smartdigimkt.l3.a getBaseAdRequestInfo() {
        return this.f44054t;
    }

    @Override // com.smartdigimkt.s2.b
    public final String getOriginalUrl() {
        return this.f44052r;
    }

    @Override // com.smartdigimkt.s2.b
    public final WebProgressBarView getWebProgressBarView() {
        return this.f44035a;
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        Uri[] uriArr;
        ClipData clipData;
        if (i2 == 512) {
            if (this.f44060z == null) {
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
            this.f44060z.onReceiveValue(uriArr);
            this.f44060z = null;
            super.onActivityResult(i2, i3, intent);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        BaseWebView baseWebView = this.f44036b;
        if (baseWebView == null || !baseWebView.canGoBack()) {
            super.onBackPressed();
        } else {
            this.f44036b.goBack();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SDKContext.getInstance().a(getApplicationContext());
        this.f44044j = SystemClock.elapsedRealtime();
        this.f44045k = new LinkedHashMap();
        setResult(-1);
        Intent intent = getIntent();
        if (intent != null) {
            try {
                Serializable serializableExtra = intent.getSerializableExtra(a.C0043a.f1582c);
                if (serializableExtra != null && (serializableExtra instanceof c)) {
                    c cVar = (c) serializableExtra;
                    this.f44053s = cVar;
                    this.f44057w = new d(cVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                Serializable serializableExtra2 = intent.getSerializableExtra(a.C0043a.f1584e);
                if (serializableExtra2 != null && (serializableExtra2 instanceof com.smartdigimkt.l3.a)) {
                    this.f44054t = (com.smartdigimkt.l3.a) serializableExtra2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                Serializable serializableExtra3 = intent.getSerializableExtra(a.C0043a.f1590k);
                if (serializableExtra3 != null && (serializableExtra3 instanceof IOfferClickHandler)) {
                    this.f44056v = (IOfferClickHandler) serializableExtra3;
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                this.f44055u = intent.getStringExtra(a.C0043a.f1588i);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            try {
                this.f44058x = intent.getIntExtra(a.C0043a.f1595p, -1);
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
            this.f44051q = true;
            try {
                this.f44051q = intent.getBooleanExtra(a.C0043a.f1596q, true);
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
            try {
                this.f44059y = intent.getBooleanExtra("extra_need_limit_redirect", false);
            } catch (Throwable th7) {
                th7.printStackTrace();
            }
        }
        String str = this.f44055u;
        if (TextUtils.isEmpty(str)) {
            c cVar2 = this.f44053s;
            str = cVar2 != null ? cVar2.f41821l : "";
        }
        Context applicationContext = getApplicationContext();
        if (TextUtils.isEmpty(str)) {
            Toast.makeText(applicationContext, k.a(applicationContext, "basead_click_empty", "string"), 0).show();
            this.f44047m = 3;
            a();
            return;
        }
        if (this.f44051q) {
            q qVarA = com.smartdigimkt.c0.e.a(applicationContext, str, this.f44053s);
            if (qVarA.f42141b) {
                callbackClickResult(qVarA);
                return;
            }
            callbackClickResult(qVarA);
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(343452);
        char[] cArr = k.f39779a;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) ((getResources().getDisplayMetrics().density * 55.0f) + 0.5f));
        layoutParams.addRule(10);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
        int i2 = (int) ((getResources().getDisplayMetrics().density * 16.0f) + 0.5f);
        linearLayout.setPadding(i2, 0, i2, 0);
        relativeLayout.addView(linearLayout);
        this.f44037c = a(getResources().getDrawable(k.a(this, "browser_left_icon", "drawable")));
        this.f44038d = a(getResources().getDrawable(k.a(this, "browser_close_icon", "drawable")));
        linearLayout.addView(this.f44037c);
        linearLayout.addView(this.f44038d);
        TextView textView = new TextView(this);
        new LinearLayout.LayoutParams(0, -2, 1.0f);
        textView.setPadding((int) ((getResources().getDisplayMetrics().density * 20.0f) + 0.5f), 0, 0, (int) ((getResources().getDisplayMetrics().density * 2.0f) + 0.5f));
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(Color.parseColor("#666666"));
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        this.f44039e = textView;
        linearLayout.addView(textView);
        try {
            this.f44036b = new BaseWebView(getApplicationContext());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(3, 343452);
            this.f44036b.setLayoutParams(layoutParams2);
            relativeLayout.addView(this.f44036b);
            View view = new View(this);
            view.setBackgroundColor(-2434342);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) ((getResources().getDisplayMetrics().density * 1.0f) + 0.5f));
            layoutParams3.addRule(3, 343452);
            view.setLayoutParams(layoutParams3);
            relativeLayout.addView(view);
            WebProgressBarView webProgressBarView = new WebProgressBarView(this);
            this.f44035a = webProgressBarView;
            webProgressBarView.setProgress(0);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, (int) ((getResources().getDisplayMetrics().density * 4.0f) + 0.5f));
            layoutParams4.addRule(3, 343452);
            relativeLayout.addView(this.f44035a, layoutParams4);
            Random random = new Random();
            this.f44042h = random;
            this.f44043i = random.nextInt(12) + 3;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 70);
            this.f44041g = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(1000L);
            this.f44041g.addUpdateListener(new com.smartdigimkt.s2.e(this));
            this.f44041g.start();
        } catch (Throwable unused) {
            relativeLayout = null;
        }
        this.f44049o = relativeLayout;
        if (relativeLayout == null) {
            com.smartdigimkt.d5.e.a(str);
            a();
            return;
        }
        setContentView(relativeLayout);
        RelativeLayout relativeLayout2 = this.f44049o;
        if (relativeLayout2 != null) {
            relativeLayout2.setFitsSystemWindows(true);
            this.f44049o.requestApplyInsets();
        }
        this.f44037c.setOnClickListener(new j(this));
        this.f44038d.setOnClickListener(new com.smartdigimkt.s2.k(this));
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
        y.a(this.f44036b, this, this.f44059y);
        this.f44036b.setDownloadListener(new g(this));
        q qVarD = com.smartdigimkt.c0.e.d(str);
        this.f44040f = qVarD.f42140a;
        String str2 = qVarD.f42143d;
        this.f44052r = str2;
        this.f44036b.loadUrl(str2);
        recordRedirectUrl(this.f44036b.getUrl());
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        com.smartdigimkt.l3.a aVar;
        com.smartdigimkt.s2.c.f43115b = false;
        super.onDestroy();
        ValueAnimator valueAnimator = this.f44041g;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f44041g = null;
        }
        BaseWebView baseWebView = this.f44036b;
        if (baseWebView != null) {
            baseWebView.setDownloadListener(null);
            this.f44036b.destroy();
        }
        this.f44036b = null;
        c cVar = this.f44053s;
        if (cVar == null || (aVar = this.f44054t) == null) {
            return;
        }
        int iE = cVar.e();
        String str = this.f44053s.f41806a;
        LinkedHashMap linkedHashMap = this.f44045k;
        int i2 = this.f44032B;
        int i3 = this.f44033C;
        int i4 = this.f44040f;
        String str2 = this.f44055u;
        int i5 = this.f44054t.f41628b;
        int i6 = this.f44058x;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f44044j;
        String str3 = this.f44046l;
        int i7 = this.f44047m;
        if (i7 == 0) {
            i7 = 1;
        }
        h.a(aVar, iE, str, linkedHashMap, i2, i3, i4, str2, i5, i6, jElapsedRealtime, str3, i7, this.f44050p);
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        BaseWebView baseWebView = this.f44036b;
        if (baseWebView != null) {
            baseWebView.setWebChromeClient(null);
            BaseWebView baseWebView2 = this.f44036b;
            if (isFinishing()) {
                baseWebView2.stopLoading();
                baseWebView2.loadUrl("");
            }
            baseWebView2.onPause();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        BaseWebView baseWebView = this.f44036b;
        if (baseWebView != null) {
            baseWebView.setWebChromeClient(new m(this));
            this.f44036b.onResume();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        com.smartdigimkt.s2.c.f43115b = false;
        com.smartdigimkt.s2.c.f43114a.incrementAndGet();
    }

    @Override // android.app.Activity
    public final void onStop() {
        AtomicInteger atomicInteger = com.smartdigimkt.s2.c.f43114a;
        if (atomicInteger.decrementAndGet() < 0) {
            atomicInteger.set(0);
        }
        super.onStop();
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebFinish() {
        a();
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebPageFinish(WebView webView, String str) throws JSONException {
        BaseWebView baseWebView;
        WebLoadFailRefrshView webLoadFailRefrshView = this.f44048n;
        if (webLoadFailRefrshView != null && webLoadFailRefrshView.getParent() == null && (baseWebView = this.f44036b) != null) {
            baseWebView.setVisibility(0);
        }
        webView.canGoBack();
        webView.canGoForward();
        if (!TextUtils.isEmpty(str) && this.f44047m != 3 && TextUtils.equals(this.f44046l, str) && !isFinishing()) {
            this.f44047m = 2;
            JSONArray jSONArray = (JSONArray) this.f44045k.get(str);
            if (jSONArray != null) {
                try {
                    jSONArray.put(1, "" + System.currentTimeMillis());
                    this.f44045k.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        d dVar = this.f44057w;
        if (dVar != null) {
            dVar.a(webView, str);
        }
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebPageLoadError(WebView webView, String str) {
        if (TextUtils.equals(this.f44046l, str)) {
            this.f44047m = 3;
        }
        WebLoadFailRefrshView webLoadFailRefrshView = this.f44048n;
        if (webLoadFailRefrshView != null) {
            com.smartdigimkt.z3.d.a(webLoadFailRefrshView);
        } else {
            WebLoadFailRefrshView webLoadFailRefrshView2 = new WebLoadFailRefrshView(this);
            this.f44048n = webLoadFailRefrshView2;
            BaseWebView baseWebView = this.f44036b;
            if (baseWebView != null) {
                webLoadFailRefrshView2.setLayoutParams(baseWebView.getLayoutParams());
            }
            this.f44048n.setOnRefreshListener(new f(this));
        }
        BaseWebView baseWebView2 = this.f44036b;
        if (baseWebView2 != null) {
            baseWebView2.setVisibility(8);
        }
        this.f44049o.addView(this.f44048n);
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebPageStart(WebView webView, String str) throws JSONException {
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.equals(this.f44046l, str)) {
                this.f44047m = 1;
            }
            JSONArray jSONArray = (JSONArray) this.f44045k.get(str);
            if (jSONArray != null) {
                try {
                    jSONArray.put(0, "" + System.currentTimeMillis());
                    jSONArray.put(1, "");
                    this.f44045k.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        WebLoadFailRefrshView webLoadFailRefrshView = this.f44048n;
        if (webLoadFailRefrshView != null) {
            com.smartdigimkt.z3.d.a(webLoadFailRefrshView);
        }
    }

    @Override // com.smartdigimkt.s2.b
    public final void recordRedirectUrl(String str) {
        if (this.f44031A == null) {
            this.f44031A = new JSONArray();
        }
        this.f44031A.put(str);
        if (this.f44045k.size() > 0) {
            JSONArray jSONArray = (JSONArray) this.f44045k.get(this.f44046l);
            try {
                if (this.f44047m == 0 && jSONArray != null) {
                    if (TextUtils.isEmpty(jSONArray.getString(1))) {
                        jSONArray.put(1, "" + System.currentTimeMillis());
                    }
                    this.f44045k.put(this.f44046l, jSONArray);
                }
            } catch (Throwable unused) {
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put("" + System.currentTimeMillis());
        jSONArray2.put("");
        this.f44045k.put(str, jSONArray2);
        this.f44046l = str;
        this.f44047m = 0;
    }

    @Override // com.smartdigimkt.s2.b
    public final boolean supportDeeplinkJump() {
        return this.f44051q;
    }

    public static void a(int i2, WebLandPageActivity webLandPageActivity, String str) {
        webLandPageActivity.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(webLandPageActivity, k.a(webLandPageActivity, "system_dialog", "style"));
        builder.setMessage(webLandPageActivity.getString(k.a(webLandPageActivity, "web_download_file_confirm_title", "string"))).setCancelable(true).setPositiveButton(webLandPageActivity.getString(k.a(webLandPageActivity, "web_download_file_confirm", "string")), new i(i2, webLandPageActivity, str)).setNegativeButton(webLandPageActivity.getString(k.a(webLandPageActivity, "web_download_file_cancel", "string")), new com.smartdigimkt.s2.h(webLandPageActivity, str));
        builder.create().show();
    }

    public final void a() {
        try {
            ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        } catch (Throwable unused) {
        }
        super.finish();
    }

    public final ImageView a(Drawable drawable) {
        ImageView imageView = new ImageView(this);
        char[] cArr = k.f39779a;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) ((getResources().getDisplayMetrics().density * 48.0f) + 0.5f), (int) ((getResources().getDisplayMetrics().density * 48.0f) + 0.5f));
        layoutParams.gravity = 16;
        layoutParams.rightMargin = (int) ((getResources().getDisplayMetrics().density * 6.0f) + 0.5f);
        imageView.setLayoutParams(layoutParams);
        int i2 = (int) ((getResources().getDisplayMetrics().density * 16.0f) + 0.5f);
        imageView.setPadding(i2, i2, i2, i2);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageDrawable(drawable);
        return imageView;
    }
}
