package com.meishu.sdk.core.webview;

import android.webkit.ValueCallback;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class r extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f32152a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f32153b;

    public class a implements ValueCallback<String> {
        public a(r rVar) {
        }

        @Override // android.webkit.ValueCallback
        public void onReceiveValue(String str) {
            LogUtil.e("WebViewUtil", "onReceiveValue:" + str);
        }
    }

    public r(q qVar, String str) {
        this.f32153b = qVar;
        this.f32152a = str;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            this.f32153b.f32144a.evaluateJavascript(String.format("javascript:window.ADMateJSBridge.updateTempState('%s')", this.f32152a), new a(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
