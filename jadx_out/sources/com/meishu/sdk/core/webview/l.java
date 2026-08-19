package com.meishu.sdk.core.webview;

import android.webkit.WebView;
import java.lang.ref.SoftReference;

/* loaded from: classes4.dex */
public class l extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SoftReference f32129a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f32130b;

    public l(m mVar, SoftReference softReference) {
        this.f32130b = mVar;
        this.f32129a = softReference;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            this.f32130b.a((WebView) this.f32129a.get());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
