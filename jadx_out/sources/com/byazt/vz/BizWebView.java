package com.byazt.vz;

import android.content.Context;
import android.graphics.Paint;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.byazt.ikh.j;
import com.byazt.ikh.jx;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, 2269})
/* loaded from: classes3.dex */
public class BizWebView extends MultiWebview implements j {
    public BizWebView(Context context) {
        super(context);
    }

    private void l(Runnable runnable) {
        e.l().post(runnable);
    }

    @Override // com.byazt.vz.MultiWebview
    public void M_() {
        super.M_();
    }

    @Override // com.byazt.ikh.j
    public void addJavascriptInterface(final Object obj, final String str) {
        if (this.f26783l != null) {
            this.f26783l.addJavascriptInterface(obj, str);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.addJavascriptInterface(obj, str);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public boolean canGoBack() {
        if (this.f26783l != null) {
            if (this.f26783l.canGoBack()) {
                return true;
            }
            if (getWebViewCount() > 1 && hp() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.ikh.j
    public void clearCache(boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.clearCache(z2);
        }
    }

    @Override // com.byazt.ikh.j
    public void clearHistory() {
        if (this.f26783l != null) {
            this.f26783l.clearHistory();
        }
    }

    @Override // com.byazt.ikh.j
    public void clearView() {
        if (this.f26783l != null) {
            this.f26783l.clearView();
        }
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void computeScroll() {
        if (this.f26783l != null) {
            this.f26783l.computeScroll();
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.28
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.computeScroll();
                }
            }
        });
    }

    @Override // com.byazt.vz.MultiWebview, com.byazt.ikh.j
    public void destroy() {
        super.destroy();
    }

    @Override // com.byazt.ikh.j
    public void evaluateJavascript(final String str, final ValueCallback<String> valueCallback) {
        if (this.f26783l != null) {
            this.f26783l.evaluateJavascript(str, valueCallback);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.7
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.evaluateJavascript(str, valueCallback);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public int getContentHeight() {
        if (this.f26783l != null) {
            return this.f26783l.getContentHeight();
        }
        return 0;
    }

    @Override // com.byazt.ikh.j
    public int getProgress() {
        if (this.f26783l != null) {
            return this.f26783l.getProgress();
        }
        return 0;
    }

    @Override // com.byazt.ikh.j
    public String getUrl() {
        return this.f26783l != null ? this.f26783l.getUrl() : "";
    }

    @Override // com.byazt.ikh.j
    public String getUserAgentString() {
        return this.f26783l != null ? this.f26783l.getUserAgentString() : "";
    }

    @Override // com.byazt.ikh.j
    public View getView() {
        return this;
    }

    @Override // com.byazt.ikh.j
    public WebView getWebView() throws InterruptedException {
        if (this.f26783l != null) {
            return this.f26783l.getWebView();
        }
        if (w()) {
            return null;
        }
        long j2 = 500;
        while (this.hp.get() < 3 && j2 > 0) {
            try {
                Thread.sleep(10L);
                j2 -= 10;
            } catch (Exception unused) {
            }
        }
        if (this.f26783l != null) {
            return this.f26783l.getWebView();
        }
        return null;
    }

    @Override // com.byazt.ikh.j
    public void goBack() {
        if (this.f26783l != null) {
            this.f26783l.goBack();
        }
    }

    @Override // com.byazt.ikh.j
    public void hp(String str, String str2, Object obj) {
        if (this.f26783l != null) {
            this.f26783l.hp(str, str2, obj);
        }
    }

    public void loadUrl(final String str) {
        if (this.f26783l != null) {
            this.f26783l.loadUrl(str);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.22
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.loadUrl(str);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void onPause() {
        if (this.f26783l != null) {
            this.f26783l.onPause();
        }
    }

    @Override // com.byazt.ikh.j
    public void onResume() {
        if (this.f26783l != null) {
            this.f26783l.onResume();
        }
    }

    @Override // com.byazt.ikh.j
    public void pauseTimers() {
        if (this.f26783l != null) {
            this.f26783l.pauseTimers();
        }
    }

    @Override // com.byazt.ikh.j
    public void removeJavascriptInterface(String str) {
        j jVar = this.f26783l;
        if (jVar != null) {
            jVar.removeJavascriptInterface(str);
        }
    }

    @Override // com.byazt.ikh.j
    public void resumeTimers() {
        if (this.f26783l != null) {
            this.f26783l.resumeTimers();
        }
    }

    @Override // com.byazt.ikh.j
    public void setAllowFileAccess(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setAllowFileAccess(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.20
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setAllowFileAccess(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setAllowFileAccessFromFileURLs(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setAllowFileAccessFromFileURLs(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.23
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setAllowFileAccessFromFileURLs(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setAllowUniversalAccessFromFileURLs(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setAllowUniversalAccessFromFileURLs(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.24
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setAllowFileAccessFromFileURLs(z2);
                    }
                }
            });
        }
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setAlpha(final float f2) {
        super.setAlpha(f2);
        if (this.f26783l != null) {
            this.f26783l.setAlpha(f2);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.32
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setAlpha(f2);
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setAppCacheEnabled(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setAppCacheEnabled(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.8
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setAppCacheEnabled(z2);
                    }
                }
            });
        }
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setBackgroundColor(final int i2) {
        super.setBackgroundColor(i2);
        if (this.f26783l != null) {
            this.f26783l.setBackgroundColor(i2);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.27
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setBackgroundColor(i2);
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setBlockNetworkImage(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setBlockNetworkImage(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.21
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setBlockNetworkImage(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setBuiltInZoomControls(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setBuiltInZoomControls(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.13
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setBuiltInZoomControls(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setCacheMode(final int i2) {
        if (this.f26783l != null) {
            this.f26783l.setCacheMode(i2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.6
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setCacheMode(i2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setDatabaseEnabled(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setDatabaseEnabled(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.19
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setDatabaseEnabled(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setDefaultFontSize(final int i2) {
        if (this.f26783l != null) {
            this.f26783l.setDefaultFontSize(i2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.17
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setDefaultFontSize(i2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setDefaultTextEncodingName(final String str) {
        if (this.f26783l != null) {
            this.f26783l.setDefaultTextEncodingName(str);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.16
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setDefaultTextEncodingName(str);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setDisplayZoomControls(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setDisplayZoomControls(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.5
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setDisplayZoomControls(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setDomStorageEnabled(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setDomStorageEnabled(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.12
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setDomStorageEnabled(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setDownloadListener(final DownloadListener downloadListener) {
        if (this.f26783l != null) {
            this.f26783l.setDownloadListener(downloadListener);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.37
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setDownloadListener(downloadListener);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setJavaScriptCanOpenWindowsAutomatically(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setJavaScriptCanOpenWindowsAutomatically(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.11
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setJavaScriptCanOpenWindowsAutomatically(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setJavaScriptEnabled(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setJavaScriptEnabled(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.4
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setJavaScriptEnabled(z2);
                    }
                }
            });
        }
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setLayerType(final int i2, final Paint paint) {
        if (this.f26783l != null) {
            this.f26783l.setLayerType(i2, paint);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.29
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setLayerType(i2, paint);
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setLayoutAlgorithm(final WebSettings.LayoutAlgorithm layoutAlgorithm) {
        if (this.f26783l != null) {
            this.f26783l.setLayoutAlgorithm(layoutAlgorithm);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.14
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setLayoutAlgorithm(layoutAlgorithm);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setLoadWithOverviewMode(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setLoadWithOverviewMode(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.15
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setLoadWithOverviewMode(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setMediaPlaybackRequiresUserGesture(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setMediaPlaybackRequiresUserGesture(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.26
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setMediaPlaybackRequiresUserGesture(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setMixedContentMode(final int i2) {
        if (this.f26783l != null) {
            this.f26783l.setMixedContentMode(i2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.18
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setMixedContentMode(i2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setNetworkAvailable(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setNetworkAvailable(z2);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        l(new Runnable() { // from class: com.byazt.vz.BizWebView.1
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setNetworkAvailable(z2);
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setOnScrollChangeListener(final View.OnScrollChangeListener onScrollChangeListener) {
        if (this.f26783l != null) {
            this.f26783l.setOnScrollChangeListener(onScrollChangeListener);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.33
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setOnScrollChangeListener(onScrollChangeListener);
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setOverScrollMode(final int i2) {
        super.setOverScrollMode(i2);
        if (this.f26783l != null) {
            this.f26783l.setOverScrollMode(i2);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.30
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setOverScrollMode(i2);
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setSavePassword(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setSavePassword(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.25
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setSavePassword(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setSupportZoom(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setSupportZoom(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.9
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setSupportZoom(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.jx
    public void setTouchEventListener(final jx.hp hpVar) {
        if (this.f26783l != null) {
            this.f26783l.setTouchEventListener(hpVar);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.34
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setTouchEventListener(hpVar);
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setUseWideViewPort(final boolean z2) {
        if (this.f26783l != null) {
            this.f26783l.setUseWideViewPort(z2);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.10
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setUseWideViewPort(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setUserAgentString(final String str) {
        if (this.f26783l != null) {
            this.f26783l.setUserAgentString(str);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.35
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setUserAgentString(str);
                    }
                }
            });
        }
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setVisibility(final int i2) {
        super.setVisibility(i2);
        if (this.f26783l != null) {
            this.f26783l.setVisibility(i2);
            return;
        }
        AtomicInteger atomicInteger = this.hp;
        if (atomicInteger == null || atomicInteger.get() >= 3) {
            return;
        }
        post(new Runnable() { // from class: com.byazt.vz.BizWebView.31
            @Override // java.lang.Runnable
            public void run() {
                if (BizWebView.this.f26783l != null) {
                    BizWebView.this.f26783l.setVisibility(i2);
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setWebChromeClient(final WebChromeClient webChromeClient) {
        if (this.f26783l != null) {
            this.f26783l.setWebChromeClient(webChromeClient);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setWebChromeClient(webChromeClient);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ikh.j
    public void setWebViewClient(final WebViewClient webViewClient) {
        if (this.f26783l != null) {
            this.f26783l.setWebViewClient(webViewClient);
        } else if (this.hp.get() < 3) {
            l(new Runnable() { // from class: com.byazt.vz.BizWebView.36
                @Override // java.lang.Runnable
                public void run() {
                    if (BizWebView.this.f26783l != null) {
                        BizWebView.this.f26783l.setWebViewClient(webViewClient);
                    }
                }
            });
        }
    }
}
