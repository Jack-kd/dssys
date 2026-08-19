package com.beizi.fusion;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.beizi.fusion.model.RequestInfo;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class uf {

    /* renamed from: b, reason: collision with root package name */
    private static uf f16451b;

    /* renamed from: a, reason: collision with root package name */
    private String f16452a;

    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final t4 f16453a;

        /* renamed from: b, reason: collision with root package name */
        private int f16454b;

        public class a extends t4 {

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Context f16455b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context, Context context2) {
                super(context);
                this.f16455b = context2;
            }

            @Override // com.beizi.fusion.t4
            public void a(Message message) {
                Context contextA;
                if (message == null) {
                    return;
                }
                try {
                    if (message.what == b.this.f16454b && (contextA = a()) != null) {
                        if (System.currentTimeMillis() - go.a(this.f16455b, "updateUserAgentTime") < com.baidu.mobads.sdk.internal.bn.f11192e) {
                            return;
                        }
                        WebView webView = new WebView(contextA);
                        WebView.setWebContentsDebuggingEnabled(false);
                        webView.getSettings().setSavePassword(false);
                        String userAgentString = webView.getSettings().getUserAgentString();
                        RequestInfo.getInstance(contextA).updateUserAgent(userAgentString);
                        t3.e(userAgentString);
                        go.a(contextA, "userAgent", userAgentString);
                        go.a(contextA, "updateUserAgentTime", Long.valueOf(System.currentTimeMillis()));
                    }
                } catch (Exception unused) {
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16453a == null) {
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = this.f16454b;
            this.f16453a.sendMessage(messageObtain);
        }

        private b(Context context) {
            this.f16454b = 100100;
            this.f16453a = new a(context, context);
        }
    }

    public static synchronized uf a() {
        try {
            if (f16451b == null) {
                synchronized (uf.class) {
                    f16451b = new uf();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f16451b;
    }

    public String b(Context context) {
        if (TextUtils.isEmpty(this.f16452a)) {
            this.f16452a = go.b(context, "userAgent");
        }
        try {
            if (TextUtils.isEmpty(this.f16452a)) {
                this.f16452a = WebSettings.getDefaultUserAgent(context);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this.f16452a;
    }

    public void a(Context context) {
        if (TextUtils.isEmpty(this.f16452a)) {
            Executors.newSingleThreadScheduledExecutor().schedule(new b(context), 15000L, TimeUnit.MILLISECONDS);
        }
    }

    public void a(String str) {
        this.f16452a = str;
    }
}
