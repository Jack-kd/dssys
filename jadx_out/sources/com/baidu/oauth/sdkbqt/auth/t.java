package com.baidu.oauth.sdkbqt.auth;

/* loaded from: classes2.dex */
public class t implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11835b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f11836c;

    public t(i iVar, String str) {
        this.f11836c = iVar;
        this.f11835b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f11836c.f11799g) {
            return;
        }
        super/*android.webkit.WebView*/.loadUrl(this.f11835b);
    }
}
