package com.kwad.components.offline.api.core.webview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.widget.j;
import java.util.UUID;

/* loaded from: classes4.dex */
public abstract class BaseKsWebView extends FrameLayout {
    private boolean enableScroll;
    public DeepLinkListener mDeeplinkListener;
    protected String mUniqueId;
    private j mViewRCHelper;
    public WebLoadListener mWebLoadListener;
    protected WebViewStateListener mWebViewStateListener;

    public interface DeepLinkListener {
        void onFailed();

        void onSuccess();
    }

    public interface WebLoadListener {
        void onDownloadStart(String str, String str2, String str3, String str4, long j2);

        void onPageFinished();

        void onPageStart();

        void onReceivedHttpError(int i2, String str, String str2);

        boolean shouldOverrideUrlLoading(WebView webView, String str);
    }

    public interface WebViewStateListener {
        void onFocusChanged(boolean z2, int i2, Rect rect);

        void onScrollChanged(int i2, int i3, int i4, int i5);

        void onSizeChanged(int i2, int i3, int i4, int i5);

        void onVisibilityChanged(View view, int i2);

        void onWindowFocusChanged(boolean z2);
    }

    public BaseKsWebView(@NonNull Context context) {
        super(context);
        this.enableScroll = true;
        init(context, null);
    }

    private float[] getRadius(float f2, float f3, float f4, float f5) {
        return new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        j jVar = new j();
        this.mViewRCHelper = jVar;
        jVar.initAttrs(context, attributeSet);
    }

    public abstract void addJavascriptInterface(Object obj, String str);

    public abstract void callJs(String str);

    public abstract void callJs(String str, String str2);

    public abstract boolean canGoBack();

    public abstract boolean canGoForward();

    public abstract void destroy();

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.mViewRCHelper.beforeDispatchDraw(canvas);
        super.dispatchDraw(canvas);
        this.mViewRCHelper.afterDispatchDraw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.mViewRCHelper.beforeDraw(canvas);
        super.draw(canvas);
        this.mViewRCHelper.afterDraw(canvas);
    }

    public String getUniqueId() {
        if (this.mUniqueId == null) {
            this.mUniqueId = UUID.randomUUID().toString();
        }
        return this.mUniqueId;
    }

    public abstract void goBack();

    public abstract void goForward();

    public abstract void loadUrl(String str);

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        WebViewStateListener webViewStateListener = this.mWebViewStateListener;
        if (webViewStateListener != null) {
            webViewStateListener.onFocusChanged(z2, i2, rect);
        }
    }

    @Override // android.view.View
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        WebViewStateListener webViewStateListener = this.mWebViewStateListener;
        if (webViewStateListener != null) {
            webViewStateListener.onScrollChanged(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.mViewRCHelper.onSizeChanged(i2, i3);
        WebViewStateListener webViewStateListener = this.mWebViewStateListener;
        if (webViewStateListener != null) {
            webViewStateListener.onSizeChanged(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        WebViewStateListener webViewStateListener = this.mWebViewStateListener;
        if (webViewStateListener != null) {
            webViewStateListener.onVisibilityChanged(view, i2);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        WebViewStateListener webViewStateListener = this.mWebViewStateListener;
        if (webViewStateListener != null) {
            webViewStateListener.onWindowFocusChanged(z2);
        }
    }

    @Override // android.view.View
    public abstract void scrollBy(int i2, int i3);

    @Override // android.view.View
    public abstract void scrollTo(int i2, int i3);

    public abstract void setAcceptThirdPartyCookies(boolean z2);

    public abstract void setAdCacheId(int i2, String str);

    public abstract void setAdTemplateString(String str);

    public abstract void setAllowContentAccess(boolean z2);

    public abstract void setAllowFileAccess(boolean z2);

    public abstract void setAllowFileAccessFromFileURLs(boolean z2);

    public abstract void setAllowUniversalAccessFromFileURLs(boolean z2);

    public abstract void setCacheMode(int i2);

    public abstract void setContextUniqId(int i2);

    public abstract void setDebugEnabled(boolean z2);

    public abstract void setDeeplinkEnabled(boolean z2);

    public void setDeeplinkListener(DeepLinkListener deepLinkListener) {
        this.mDeeplinkListener = deepLinkListener;
    }

    public abstract void setEnableScroll(boolean z2);

    public abstract void setEnableWebCache(boolean z2);

    public abstract void setInnerDownloadEnabled(boolean z2);

    public abstract void setJavaScriptEnabled(boolean z2);

    public abstract void setMixedContentMode(int i2);

    public void setRadius(float f2, float f3, float f4, float f5) {
        this.mViewRCHelper.setRadius(getRadius(f2, f3, f4, f5));
        postInvalidate();
    }

    public abstract void setSavePassword(boolean z2);

    public abstract void setTextZoom(int i2);

    public void setWebLoadListener(WebLoadListener webLoadListener) {
        this.mWebLoadListener = webLoadListener;
    }

    public void setWebViewStateListener(WebViewStateListener webViewStateListener) {
        this.mWebViewStateListener = webViewStateListener;
    }

    public BaseKsWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.enableScroll = true;
        init(context, attributeSet);
    }

    public BaseKsWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.enableScroll = true;
        init(context, attributeSet);
    }
}
