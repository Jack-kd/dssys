package com.byazt.vz;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import com.byazt.ikh.j;
import com.byazt.ikh.jx;
import com.byazt.ikh.l;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Deque;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, 780})
/* loaded from: classes3.dex */
public class MultiWebview extends FrameLayout implements com.byazt.ikh.l {

    /* renamed from: j, reason: collision with root package name */
    public static com.byazt.ykc.hp f26780j = null;

    /* renamed from: w, reason: collision with root package name */
    public static int f26781w = 1;

    /* renamed from: a, reason: collision with root package name */
    public long f26782a;
    public l.hp eb;
    public final AtomicInteger hp;
    public WebViewImpl jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile j f26783l;

    /* renamed from: q, reason: collision with root package name */
    public Map<j, Set<String>> f26784q;

    /* renamed from: s, reason: collision with root package name */
    public Deque<j> f26785s;

    public MultiWebview(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        while (true) {
            j jVarHp = hp();
            if (jVarHp == null) {
                break;
            } else {
                removeView(jVarHp.getView());
            }
        }
        WebViewImpl webViewImpl = this.jx;
        if (webViewImpl != null) {
            webViewImpl.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j eb() {
        if (this.f26785s.size() < 2) {
            this.f26783l = this.jx;
            return null;
        }
        j jVarPollLast = this.f26785s.pollLast();
        if (jVarPollLast != null) {
            removeView(jVarPollLast.getView());
            jVarPollLast.destroy();
            this.f26784q.remove(jVarPollLast);
        }
        j last = this.f26785s.getLast();
        if (last != null) {
            last.setVisibility(0);
            last.onResume();
            this.f26783l = last;
        }
        return jVarPollLast;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.jx == null) {
            return;
        }
        removeAllViews();
        setBackground(null);
        try {
            this.jx.getView().setId(2064056317);
        } catch (Throwable unused) {
        }
        addView(this.jx.getView(), new FrameLayout.LayoutParams(-1, -1));
        this.f26785s.add(this.jx);
        this.f26783l = this.jx;
    }

    public static void setExceptionReport(com.byazt.ykc.hp hpVar) {
        f26780j = hpVar;
    }

    public static void setMaxWebViewCount(int i2) {
        f26781w = i2 + 1;
    }

    public void M_() {
        this.f26784q.clear();
        this.eb = null;
        hp(new Runnable() { // from class: com.byazt.vz.MultiWebview.2
            @Override // java.lang.Runnable
            public void run() {
                MultiWebview.this.a();
            }
        });
    }

    public void destroy() {
        while (true) {
            j jVarPollLast = this.f26785s.pollLast();
            if (jVarPollLast == null) {
                this.jx = null;
                this.f26783l = null;
                this.f26784q.clear();
                this.eb = null;
                return;
            }
            jVarPollLast.destroy();
        }
    }

    public long getCreateDuration() {
        return this.f26782a;
    }

    public j getCurrentWebView() {
        return this.f26783l;
    }

    public int getWebViewCount() {
        return this.f26785s.size();
    }

    public boolean w() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public MultiWebview(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private j jx() {
        String name = Thread.currentThread().getName();
        try {
            return new WebViewImpl(this, getContext());
        } catch (Throwable th) {
            com.byazt.ykc.hp hpVar = f26780j;
            if (hpVar == null) {
                return null;
            }
            hpVar.hp(name, th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j l(String str) {
        j jVarJx = jx();
        if (jVarJx != null) {
            j jVar = this.f26783l;
            this.f26785s.add(jVarJx);
            this.f26783l = jVarJx;
            addView(jVarJx.getView(), new FrameLayout.LayoutParams(-1, -1));
            hp(jVarJx);
            jVarJx.loadUrl(str);
            if (jVar != null) {
                jVar.onPause();
                jVar.setVisibility(8);
            }
        }
        return jVarJx;
    }

    public MultiWebview(final Context context, final AttributeSet attributeSet, final int i2) {
        super(context, attributeSet, i2);
        AtomicInteger atomicInteger = new AtomicInteger();
        this.hp = atomicInteger;
        this.f26785s = new LinkedList();
        this.f26784q = new ConcurrentHashMap();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        atomicInteger.set(1);
        if (w()) {
            this.jx = hp(context, attributeSet, i2);
            j();
            this.f26782a = System.currentTimeMillis() - jCurrentTimeMillis;
            return;
        }
        hp(new Runnable() { // from class: com.byazt.vz.MultiWebview.1
            @Override // java.lang.Runnable
            public void run() {
                MultiWebview multiWebview = MultiWebview.this;
                multiWebview.jx = multiWebview.hp(context, attributeSet, i2);
                MultiWebview.this.j();
                MultiWebview.this.f26782a = System.currentTimeMillis() - jCurrentTimeMillis;
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebViewImpl hp(Context context, AttributeSet attributeSet, int i2) {
        WebViewImpl webViewImpl;
        try {
            this.hp.set(2);
            if (i2 == 0) {
                webViewImpl = new WebViewImpl(this, context, attributeSet);
            } else {
                webViewImpl = new WebViewImpl(this, context, attributeSet, i2);
            }
            this.hp.set(3);
            return webViewImpl;
        } catch (Throwable th) {
            this.hp.set(4);
            if (f26780j == null) {
                return null;
            }
            f26780j.hp(Thread.currentThread().getName(), th);
            return null;
        }
    }

    @Override // com.byazt.ikh.l
    public void l(j jVar, String str) {
        if (jVar == null) {
            return;
        }
        if (str == null) {
            this.f26784q.remove(jVar);
            return;
        }
        Set<String> set = this.f26784q.get(jVar);
        if (set != null) {
            set.remove(str);
            if (set.isEmpty()) {
                this.f26784q.remove(jVar);
            }
        }
    }

    @Override // com.byazt.ikh.l
    public int hp(final String str) {
        j jVarL;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (f26781w == 1) {
            return 2;
        }
        if (getWebViewCount() >= f26781w) {
            return 1;
        }
        if (w()) {
            jVarL = l(str);
        } else {
            final j[] jVarArr = new j[1];
            final Object obj = new Object();
            hp(new Runnable() { // from class: com.byazt.vz.MultiWebview.3
                @Override // java.lang.Runnable
                public void run() {
                    jVarArr[0] = MultiWebview.this.l(str);
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            });
            try {
                if (jVarArr[0] == null) {
                    synchronized (obj) {
                        obj.wait(2500L);
                    }
                }
            } catch (InterruptedException unused) {
            }
            jVarL = jVarArr[0];
        }
        return jVarL != null ? 0 : -999;
    }

    private void hp(j jVar) {
        hp hpVar;
        Object objHp;
        WebViewImpl webViewImpl = this.jx;
        if (webViewImpl == null || jVar == null) {
            return;
        }
        Integer backgroundColor = webViewImpl.getBackgroundColor();
        if (backgroundColor != null) {
            jVar.setBackgroundColor(backgroundColor.intValue());
        }
        Boolean allowFileAccess = webViewImpl.getAllowFileAccess();
        if (allowFileAccess != null) {
            jVar.setAllowFileAccess(allowFileAccess.booleanValue());
        }
        Boolean databaseEnabled = webViewImpl.getDatabaseEnabled();
        if (databaseEnabled != null) {
            jVar.setDatabaseEnabled(databaseEnabled.booleanValue());
        }
        Boolean appCacheEnabled = webViewImpl.getAppCacheEnabled();
        if (appCacheEnabled != null) {
            jVar.setAppCacheEnabled(appCacheEnabled.booleanValue());
        }
        Boolean domStorageEnabled = webViewImpl.getDomStorageEnabled();
        if (domStorageEnabled != null) {
            jVar.setDomStorageEnabled(domStorageEnabled.booleanValue());
        }
        Boolean supportZoom = webViewImpl.getSupportZoom();
        if (supportZoom != null) {
            jVar.setSupportZoom(supportZoom.booleanValue());
        }
        Boolean builtInZoomControls = webViewImpl.getBuiltInZoomControls();
        if (builtInZoomControls != null) {
            jVar.setBuiltInZoomControls(builtInZoomControls.booleanValue());
        }
        Boolean useWideViewPort = webViewImpl.getUseWideViewPort();
        if (useWideViewPort != null) {
            jVar.setUseWideViewPort(useWideViewPort.booleanValue());
        }
        WebSettings.LayoutAlgorithm layoutAlgorithm = webViewImpl.getLayoutAlgorithm();
        if (layoutAlgorithm != null) {
            jVar.setLayoutAlgorithm(layoutAlgorithm);
        }
        Boolean javaScriptEnabled = webViewImpl.getJavaScriptEnabled();
        if (javaScriptEnabled != null) {
            jVar.setJavaScriptEnabled(javaScriptEnabled.booleanValue());
        }
        Boolean javaScriptCanOpenWindowsAutomatically = webViewImpl.getJavaScriptCanOpenWindowsAutomatically();
        if (javaScriptCanOpenWindowsAutomatically != null) {
            jVar.setJavaScriptCanOpenWindowsAutomatically(javaScriptCanOpenWindowsAutomatically.booleanValue());
        }
        View.OnScrollChangeListener onScrollChangeListener = webViewImpl.getOnScrollChangeListener();
        if (onScrollChangeListener != null) {
            jVar.setOnScrollChangeListener(onScrollChangeListener);
        }
        Boolean mediaPlaybackRequiresUserGesture = webViewImpl.getMediaPlaybackRequiresUserGesture();
        if (mediaPlaybackRequiresUserGesture != null) {
            jVar.setMediaPlaybackRequiresUserGesture(mediaPlaybackRequiresUserGesture.booleanValue());
        }
        Boolean savePassword = webViewImpl.getSavePassword();
        if (savePassword != null) {
            jVar.setSavePassword(savePassword.booleanValue());
        }
        Boolean allowFileAccessFromFileURLs = webViewImpl.getAllowFileAccessFromFileURLs();
        if (allowFileAccessFromFileURLs != null) {
            jVar.setAllowFileAccessFromFileURLs(allowFileAccessFromFileURLs.booleanValue());
        }
        Boolean allowUniversalAccessFromFileURLs = webViewImpl.getAllowUniversalAccessFromFileURLs();
        if (allowUniversalAccessFromFileURLs != null) {
            jVar.setAllowUniversalAccessFromFileURLs(allowUniversalAccessFromFileURLs.booleanValue());
        }
        Boolean blockNetworkImage = webViewImpl.getBlockNetworkImage();
        if (blockNetworkImage != null) {
            jVar.setBlockNetworkImage(blockNetworkImage.booleanValue());
        }
        Integer defaultFontSize = webViewImpl.getDefaultFontSize();
        if (defaultFontSize != null) {
            jVar.setDefaultFontSize(defaultFontSize.intValue());
        }
        String defaultTextEncodingName = webViewImpl.getDefaultTextEncodingName();
        if (defaultTextEncodingName != null) {
            jVar.setDefaultTextEncodingName(defaultTextEncodingName);
        }
        Integer cacheMode = webViewImpl.getCacheMode();
        if (cacheMode != null) {
            jVar.setCacheMode(cacheMode.intValue());
        }
        Boolean displayZoomControls = webViewImpl.getDisplayZoomControls();
        if (displayZoomControls != null) {
            jVar.setDisplayZoomControls(displayZoomControls.booleanValue());
        }
        Boolean loadWithOverviewMod = webViewImpl.getLoadWithOverviewMod();
        if (loadWithOverviewMod != null) {
            jVar.setLoadWithOverviewMode(loadWithOverviewMod.booleanValue());
        }
        String userAgentString = webViewImpl.getUserAgentString();
        if (userAgentString != null) {
            jVar.setUserAgentString(userAgentString);
        }
        jx.hp onTouchEventListener = webViewImpl.getOnTouchEventListener();
        if (onTouchEventListener != null) {
            jVar.setTouchEventListener(onTouchEventListener);
        }
        DownloadListener downloadListener = webViewImpl.getDownloadListener();
        if (downloadListener != null) {
            jVar.setDownloadListener(downloadListener);
        }
        WebChromeClient chromeClient = webViewImpl.getChromeClient();
        if (chromeClient != null) {
            jVar.setWebChromeClient(chromeClient);
        }
        com.byazt.ykc.l client = webViewImpl.getClient();
        if (client != null) {
            jVar.setWebViewClient(client.hp());
        }
        Map<String, hp> javascriptInterfaces = webViewImpl.getJavascriptInterfaces();
        if (javascriptInterfaces != null) {
            for (String str : javascriptInterfaces.keySet()) {
                if (str != null && (hpVar = javascriptInterfaces.get(str)) != null && (objHp = hpVar.hp()) != null) {
                    jVar.addJavascriptInterface(objHp, str);
                }
            }
        }
    }

    @Override // com.byazt.ikh.l
    public j hp() {
        if (w()) {
            return eb();
        }
        final j[] jVarArr = new j[1];
        final Object obj = new Object();
        hp(new Runnable() { // from class: com.byazt.vz.MultiWebview.4
            @Override // java.lang.Runnable
            public void run() {
                jVarArr[0] = MultiWebview.this.eb();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            if (jVarArr[0] == null) {
                synchronized (obj) {
                    obj.wait(2500L);
                }
            }
        } catch (InterruptedException unused) {
        }
        return jVarArr[0];
    }

    @Override // com.byazt.ikh.l
    public void hp(j jVar, String str, String str2, Object obj) {
        Set<String> set;
        if (str2 == null || jVar == null) {
            return;
        }
        for (j jVar2 : this.f26784q.keySet()) {
            if (jVar2 != null && jVar != jVar2 && (set = this.f26784q.get(jVar2)) != null && set.contains(str2)) {
                jVar2.hp(str, str2, obj);
            }
        }
    }

    @Override // com.byazt.ikh.l
    public void hp(j jVar, String str) {
        if (jVar == null || str == null) {
            return;
        }
        Set<String> hashSet = this.f26784q.get(jVar);
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.f26784q.put(jVar, hashSet);
        }
        hashSet.add(str);
    }

    public void hp(Runnable runnable) {
        hp(runnable, false);
    }

    public void hp(final Runnable runnable, boolean z2) {
        if (w()) {
            runnable.run();
        } else if (z2) {
            post(new Runnable() { // from class: com.byazt.vz.MultiWebview.5
                @Override // java.lang.Runnable
                public void run() {
                    if (MultiWebview.this.w()) {
                        runnable.run();
                    } else {
                        e.l().post(runnable);
                    }
                }
            });
        } else {
            e.l().post(runnable);
        }
    }
}
