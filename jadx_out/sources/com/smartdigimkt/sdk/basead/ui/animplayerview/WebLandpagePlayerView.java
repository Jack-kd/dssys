package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.TranslateAnimation;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.q;
import com.smartdigimkt.s2.b;
import com.smartdigimkt.s2.d;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;
import com.smartdigimkt.sdk.core.common.res.image.RecycleImageView;
import com.smartdigimkt.y1.p;
import com.smartdigimkt.y1.s;
import com.smartdigimkt.y1.t;
import com.smartdigimkt.y3.h;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes5.dex */
public class WebLandpagePlayerView extends BaseAnimPlayerView implements b {

    /* renamed from: S, reason: collision with root package name */
    public static final /* synthetic */ int f43715S = 0;

    /* renamed from: B, reason: collision with root package name */
    public LinearLayout f43716B;

    /* renamed from: C, reason: collision with root package name */
    public TranslateAnimation f43717C;

    /* renamed from: D, reason: collision with root package name */
    public TranslateAnimation f43718D;

    /* renamed from: E, reason: collision with root package name */
    public TranslateAnimation f43719E;

    /* renamed from: F, reason: collision with root package name */
    public BaseWebView f43720F;

    /* renamed from: G, reason: collision with root package name */
    public int f43721G;

    /* renamed from: H, reason: collision with root package name */
    public int f43722H;

    /* renamed from: I, reason: collision with root package name */
    public IOfferClickHandler f43723I;

    /* renamed from: J, reason: collision with root package name */
    public d f43724J;

    /* renamed from: K, reason: collision with root package name */
    public ValueCallback f43725K;

    /* renamed from: L, reason: collision with root package name */
    public int f43726L;

    /* renamed from: M, reason: collision with root package name */
    public String f43727M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f43728N;

    /* renamed from: O, reason: collision with root package name */
    public String f43729O;

    /* renamed from: P, reason: collision with root package name */
    public int f43730P;

    /* renamed from: Q, reason: collision with root package name */
    public LinkedHashMap f43731Q;

    /* renamed from: R, reason: collision with root package name */
    public final boolean f43732R;

    public WebLandpagePlayerView(Context context) {
        super(context, null);
        this.f43721G = 8;
        this.f43722H = 0;
        this.f43725K = null;
        this.f43726L = 0;
        this.f43728N = false;
        this.f43729O = "";
        this.f43730P = 0;
        this.f43732R = false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
    }

    @Override // com.smartdigimkt.s2.b
    public void callbackClickResult(q qVar) {
        this.f43721G = qVar.f42140a;
        if (qVar.f42142c) {
            if (!qVar.f42141b) {
                this.f43726L = 2;
            } else {
                this.f43726L = 1;
                this.f43730P = 2;
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
    }

    @Override // com.smartdigimkt.s2.b
    public c getBaseAdContent() {
        return this.f43705p;
    }

    @Override // com.smartdigimkt.s2.b
    public a getBaseAdRequestInfo() {
        return null;
    }

    @Override // com.smartdigimkt.s2.b
    public String getOriginalUrl() {
        return "";
    }

    @Override // com.smartdigimkt.s2.b
    public WebProgressBarView getWebProgressBarView() {
        return null;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void init(c cVar, a aVar, boolean z2, List<Bitmap> list, com.smartdigimkt.u1.c cVar2) {
        super.init(cVar, aVar, z2, list, cVar2);
        Context context = getContext();
        a(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels - k.a(context, 40.0f));
        this.f43731Q = new LinkedHashMap();
        LinearLayout linearLayout = new LinearLayout(context);
        this.f43716B = linearLayout;
        linearLayout.setGravity(1);
        this.f43716B.setOrientation(1);
        this.f43716B.setBackgroundColor(-1);
        RecycleImageView recycleImageView = new RecycleImageView(context);
        recycleImageView.setImageResource(k.a(getContext(), "myoffer_arrow_up", "drawable"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) ((context.getResources().getDisplayMetrics().density * 9.0f) + 0.5f), (int) ((context.getResources().getDisplayMetrics().density * 9.0f) + 0.5f));
        layoutParams.topMargin = (int) ((context.getResources().getDisplayMetrics().density * 3.0f) + 0.5f);
        this.f43716B.addView(recycleImageView, layoutParams);
        TextView textView = new TextView(context);
        textView.setText(k.a(getContext(), "myoffer_slide_hint", "string"));
        textView.setTextSize(1, 12.0f);
        textView.setTextColor(Color.parseColor("#000000"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = (int) ((context.getResources().getDisplayMetrics().density * 1.0f) + 0.5f);
        this.f43716B.addView(textView, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) ((context.getResources().getDisplayMetrics().density * 54.0f) + 0.5f));
        layoutParams3.addRule(12);
        layoutParams3.setMargins(0, 0, 0, 0);
        addView(this.f43716B, layoutParams3);
        if (this.f43717C == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, (int) ((context.getResources().getDisplayMetrics().density * 18.0f) + 0.5f), 0.0f);
            this.f43717C = translateAnimation;
            translateAnimation.setFillAfter(true);
            this.f43717C.setRepeatMode(2);
            this.f43717C.setRepeatCount(-1);
            this.f43717C.setInterpolator(new AnticipateInterpolator());
            this.f43717C.setDuration(600L);
        }
        this.f43716B.startAnimation(this.f43717C);
        post(new p(this, context));
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        Uri[] uriArr;
        ClipData clipData;
        if (i2 == 512) {
            try {
                if (this.f43725K == null) {
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
                this.f43725K.onReceiveValue(uriArr);
                this.f43725K = null;
            } catch (Throwable unused3) {
            }
        }
    }

    @Override // com.smartdigimkt.s2.b
    public void onWebFinish() {
    }

    @Override // com.smartdigimkt.s2.b
    public void onWebPageFinish(WebView webView, String str) throws JSONException {
        if (!TextUtils.isEmpty(str) && this.f43730P != 3) {
            this.f43730P = 2;
            JSONArray jSONArray = (JSONArray) this.f43731Q.get(str);
            if (jSONArray != null) {
                try {
                    jSONArray.put(1, "" + System.currentTimeMillis());
                    this.f43731Q.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        d dVar = this.f43724J;
        if (dVar != null) {
            dVar.a(webView, str);
        }
    }

    @Override // com.smartdigimkt.s2.b
    public void onWebPageLoadError(WebView webView, String str) {
        this.f43730P = 3;
    }

    @Override // com.smartdigimkt.s2.b
    public void onWebPageStart(WebView webView, String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f43730P = 1;
        JSONArray jSONArray = (JSONArray) this.f43731Q.get(str);
        if (jSONArray != null) {
            try {
                jSONArray.put(0, "" + System.currentTimeMillis());
                jSONArray.put(1, "");
                this.f43731Q.put(str, jSONArray);
            } catch (JSONException unused) {
            }
        }
    }

    public synchronized boolean openInternalWebView(String str, IOfferClickHandler iOfferClickHandler) {
        try {
            if (TextUtils.isEmpty(this.f43727M)) {
                this.f43727M = str;
                this.f43723I = iOfferClickHandler;
                post(new t(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f43728N;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void pause() {
        super.pause();
        if (this.f43720F != null) {
            CookieSyncManager.getInstance().stopSync();
            this.f43720F.setWebChromeClient(null);
            boolean zIsFinishing = getContext() instanceof Activity ? ((Activity) getContext()).isFinishing() : false;
            BaseWebView baseWebView = this.f43720F;
            if (zIsFinishing) {
                baseWebView.stopLoading();
                baseWebView.loadUrl("");
            }
            baseWebView.onPause();
        }
    }

    @Override // com.smartdigimkt.s2.b
    public void recordRedirectUrl(String str) {
        if (this.f43731Q.size() > 0) {
            JSONArray jSONArray = (JSONArray) this.f43731Q.get(this.f43729O);
            try {
                if (this.f43730P == 0 && jSONArray != null) {
                    if (TextUtils.isEmpty(jSONArray.getString(1))) {
                        jSONArray.put(1, "" + System.currentTimeMillis());
                    }
                    this.f43731Q.put(this.f43729O, jSONArray);
                }
            } catch (Throwable unused) {
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put("" + System.currentTimeMillis());
        jSONArray2.put("");
        this.f43731Q.put(str, jSONArray2);
        this.f43729O = str;
        this.f43730P = 0;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void release(int i2) {
        a aVar;
        super.release(i2);
        BaseWebView baseWebView = this.f43720F;
        if (baseWebView != null) {
            baseWebView.setDownloadListener(null);
            this.f43720F.destroy();
        }
        this.f43720F = null;
        c cVar = this.f43705p;
        if (cVar == null || (aVar = this.f43706q) == null) {
            return;
        }
        int iE = cVar.e();
        String str = this.f43705p.f41806a;
        LinkedHashMap linkedHashMap = this.f43731Q;
        int i3 = this.f43726L;
        int i4 = this.f43722H;
        int i5 = this.f43721G;
        String str2 = this.f43727M;
        int i6 = this.f43706q.f41628b;
        String str3 = this.f43729O;
        int i7 = this.f43730P;
        if (i7 == 0) {
            i7 = 1;
        }
        h.a(aVar, iE, str, linkedHashMap, i3, i4, i5, str2, i6, 1, 0L, str3, i7, this.f43732R);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void start() {
        super.start();
        if (this.f43720F != null) {
            CookieSyncManager.getInstance().startSync();
            this.f43720F.setWebChromeClient(new s(this));
            this.f43720F.onResume();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void stop() {
        super.stop();
    }

    @Override // com.smartdigimkt.s2.b
    public boolean supportDeeplinkJump() {
        return true;
    }

    public WebLandpagePlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f43721G = 8;
        this.f43722H = 0;
        this.f43725K = null;
        this.f43726L = 0;
        this.f43728N = false;
        this.f43729O = "";
        this.f43730P = 0;
        this.f43732R = false;
    }

    public WebLandpagePlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43721G = 8;
        this.f43722H = 0;
        this.f43725K = null;
        this.f43726L = 0;
        this.f43728N = false;
        this.f43729O = "";
        this.f43730P = 0;
        this.f43732R = false;
    }
}
