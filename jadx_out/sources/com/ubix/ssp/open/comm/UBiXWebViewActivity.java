package com.ubix.ssp.open.comm;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.ubix.ssp.ad.e.a0.m;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.w;
import com.ubix.ssp.ad.e.c0.a;
import com.ubix.ssp.ad.e.c0.b;
import com.ubix.ssp.ad.e.c0.c;
import com.ubix.ssp.ad.e.c0.d;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class UBiXWebViewActivity extends Activity implements b.a, d.b, View.OnClickListener, DownloadListener {
    private byte[] adBytes;
    private FrameLayout container;
    private boolean finishOnce;
    private ProgressBar progressBar;
    private String replacePgk;
    private String webUrl;
    private c webView;
    private boolean sendTracker = false;
    private boolean needRemovePackageName = false;
    private String reg = "\\b([a-z][a-z0-9_]*\\.)+[a-z][a-z0-9_]*\\b";
    private boolean hasError = false;
    private ArrayList<com.ubix.ssp.ad.d.d> bl = new ArrayList<>();
    private String adType = "0";
    private boolean userInnerFace = false;

    private void finishCurrentActivity() {
        try {
            try {
                setResult(-1, new Intent("closeImmediately"));
                c cVar = this.webView;
                if (cVar != null) {
                    this.container.removeView(cVar);
                    this.webView.getSettings().setJavaScriptEnabled(false);
                    this.webView.stopLoading();
                    this.webView.removeAllViews();
                    this.webView.clearHistory();
                    this.webView.clearCache(true);
                    this.webView.freeMemory();
                    this.webView.destroy();
                    this.webView = null;
                }
            } catch (Throwable th) {
                u.d(th.toString());
            }
            FrameLayout frameLayout = this.container;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
            Runtime.getRuntime().gc();
            finish();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private ArrayList<com.ubix.ssp.ad.d.d> generalBlockList() {
        com.ubix.ssp.ad.d.d dVarA;
        String[] strArr = com.ubix.ssp.ad.d.b.f45803j;
        if (strArr != null && strArr.length > 0) {
            ArrayList<com.ubix.ssp.ad.d.d> arrayList = new ArrayList<>();
            for (String str : com.ubix.ssp.ad.d.b.f45803j) {
                if (!TextUtils.isEmpty(str) && (dVarA = com.ubix.ssp.ad.d.d.a(str, com.ubix.ssp.ad.d.b.f45804k)) != null) {
                    arrayList.add(dVarA);
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        return new ArrayList<>();
    }

    private void initBrowser(String str, String str2) {
        c cVar = new c((Activity) this);
        this.webView = cVar;
        cVar.setWebChromeClient(new b(this, this));
        this.webView.setWebViewClient(new d(this, this));
        this.webView.setDownloadListener(this);
        this.container.addView(this.webView, 0, new FrameLayout.LayoutParams(-1, -1));
        this.webView.setMaterial(this.adBytes);
        if (!TextUtils.isEmpty(this.webUrl) && this.needRemovePackageName) {
            updateCookies(this.webUrl);
        }
        this.webView.setTag(str + "_" + str2);
        this.webView.loadUrl(this.webUrl);
    }

    private void updateCookies(String str) {
        String[] strArrSplit;
        try {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            String cookie = cookieManager.getCookie(str);
            ArrayList arrayList = new ArrayList();
            if (TextUtils.isEmpty(cookie) || (strArrSplit = cookie.split(";")) == null) {
                return;
            }
            int i2 = 0;
            for (String str2 : strArrSplit) {
                arrayList.add(str2.replaceAll(getPackageName(), ""));
            }
            if (arrayList.isEmpty()) {
                return;
            }
            cookieManager.removeAllCookie();
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                cookieManager.setCookie(str, (String) obj);
            }
            cookieManager.flush();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    public void fullScreenOrShowStatusBar() {
    }

    @Override // com.ubix.ssp.ad.e.c0.d.b
    public boolean needReplace() {
        return this.replacePgk != null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        c cVar = this.webView;
        if (cVar == null || !cVar.canGoBack()) {
            finishCurrentActivity();
        } else {
            this.webView.goBack();
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 10003) {
            onBackPressed();
            return;
        }
        try {
            if (!"0".equals(this.adType)) {
                setResult(-1, new Intent("closeImmediately"));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(new a(this));
        try {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.clearFlags(134217728);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(-1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.webUrl = getIntent().getStringExtra("webUrl");
        this.adType = getIntent().getStringExtra("adType");
        this.userInnerFace = getIntent().getBooleanExtra("useInnerFace", false);
        String stringExtra = getIntent().getStringExtra("slotId");
        this.adBytes = getIntent().getByteArrayExtra("ubixAdBytes");
        this.replacePgk = getIntent().getStringExtra("replacePkg");
        this.needRemovePackageName = getIntent().getBooleanExtra("removePkg", false);
        u.d("---------webUrl " + this.webUrl);
        this.progressBar = (ProgressBar) findViewById(10002);
        this.container = (FrameLayout) findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec);
        try {
            initBrowser(this.adType, stringExtra);
            findViewById(10003).setOnClickListener(this);
            findViewById(10007).setOnClickListener(this);
            findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).setOnClickListener(this);
            w.f46486a.a(this);
            if (this.userInnerFace) {
                findViewById(10007).setVisibility(0);
                findViewById(10001).setVisibility(8);
                ((FrameLayout.LayoutParams) findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).getLayoutParams()).topMargin = 0;
                findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).invalidate();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            finishCurrentActivity();
        }
        this.bl = generalBlockList();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        try {
            Intent intent = new Intent("MainFrameDestroy");
            intent.putExtra("error", this.hasError);
            m.a(getApplicationContext()).a(intent);
            c cVar = this.webView;
            if (cVar != null) {
                cVar.stopLoading();
                ViewGroup viewGroup = (ViewGroup) this.webView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.webView);
                }
                this.webView.removeAllViews();
                this.webView.destroy();
            }
            this.webView = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        u.b("webview download url: " + str);
        try {
            if (!this.finishOnce) {
                setWebViewProgress(100, false, true);
                this.finishOnce = true;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0) {
            c cVar = this.webView;
            if (cVar != null && cVar.canGoBack()) {
                this.webView.goBack();
                return false;
            }
            finishCurrentActivity();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        try {
            c cVar = this.webView;
            if (cVar != null) {
                cVar.onPause();
                this.webView.pauseTimers();
            }
        } catch (Exception unused) {
        }
        super.onPause();
    }

    @Override // com.ubix.ssp.ad.e.c0.d.b
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest) {
        this.hasError = true;
    }

    @Override // android.app.Activity
    public void onResume() {
        try {
            this.webView.onResume();
            this.webView.resumeTimers();
        } catch (Exception e2) {
            u.d(e2.toString());
        }
        super.onResume();
    }

    @Override // com.ubix.ssp.ad.e.c0.d.b
    public void onTwiceClicked(int i2) {
        HashMap<String, String> map = new HashMap<>();
        map.put("__MP_RESULT__", i2 + "");
        c cVar = this.webView;
        if (cVar != null) {
            cVar.a(202, map);
        }
    }

    @Override // com.ubix.ssp.ad.e.c0.d.b
    public String replacePackageName() {
        return this.replacePgk;
    }

    public void sendTracker() {
        if (this.sendTracker) {
            return;
        }
        try {
            this.sendTracker = true;
            HashMap map = new HashMap();
            u.b("--------webView page_url: " + this.webView.getTag());
            if (!TextUtils.isEmpty(this.webView.getTag().toString())) {
                String[] strArrSplit = this.webView.getTag().toString().split("_");
                if (strArrSplit.length > 1) {
                    map.put("ad_type", strArrSplit[0]);
                    map.put("ad_slot_id", strArrSplit[1]);
                }
            }
            map.put("page_url", this.webUrl);
            map.put("ad_sizes", this.webView.getWidth() + "x" + this.webView.getHeight());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.e.c0.b.a
    public void setTitle(String str) {
        ((TextView) findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2)).setText(str);
    }

    @Override // com.ubix.ssp.ad.e.c0.b.a, com.ubix.ssp.ad.e.c0.d.b
    public void setWebViewProgress(int i2, boolean z2, boolean z3) {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            if (z2) {
                progressBar.setVisibility(0);
            }
            if (z3) {
                this.progressBar.setVisibility(8);
            }
            this.progressBar.setProgress(i2);
            if (i2 == 100) {
                this.progressBar.setVisibility(8);
                Intent intent = new Intent("MainFrameHasError");
                intent.putExtra("error", this.hasError);
                m.a(getApplicationContext()).a(intent);
            }
            if (!z3 || this.finishOnce) {
                return;
            }
            this.finishOnce = true;
            Intent intent2 = new Intent("WebViewLoadFinished");
            intent2.putExtra("error", this.hasError);
            m.a(getApplicationContext()).a(intent2);
        }
    }

    @Override // com.ubix.ssp.ad.e.c0.d.b
    public ArrayList<com.ubix.ssp.ad.d.d> shouldCheckRule() {
        try {
            if (this.webView == null) {
                return null;
            }
            return this.bl;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
