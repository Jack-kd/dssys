package com.beizi.fusion;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class tp {

    /* renamed from: a, reason: collision with root package name */
    private String f16397a;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static tp f16398a = new tp();
    }

    public static class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final lq f16399a;

        @Override // java.lang.Runnable
        public void run() {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            this.f16399a.sendMessage(messageObtain);
        }

        private d(Context context) {
            this.f16399a = new c(context);
        }
    }

    public static tp a() {
        return b.f16398a;
    }

    public String b(Context context) {
        if (!TextUtils.isEmpty(this.f16397a)) {
            return this.f16397a;
        }
        String strA = t5.a(context, t5.a("v2"), "UA_CIP", "");
        return !TextUtils.isEmpty(strA) ? g3.b(strA) : "";
    }

    private tp() {
        if (b.f16398a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public void a(String str) {
        this.f16397a = str;
    }

    public static class c extends lq {
        public c(Context context) {
            super(context);
        }

        private WebView a(Context context) {
            WebView webView = new WebView(context);
            WebView.setWebContentsDebuggingEnabled(false);
            webView.getSettings().setSavePassword(false);
            return webView;
        }

        @Override // com.beizi.fusion.lq
        public void a(Message message) {
            Context contextA;
            if (message == null || message.what != 1 || (contextA = a()) == null || n6.a(t5.a(contextA, t5.a("v2"), "UA_LAST", 0L), 2)) {
                return;
            }
            String userAgentString = a(contextA).getSettings().getUserAgentString();
            if (TextUtils.isEmpty(userAgentString)) {
                return;
            }
            t5.b(contextA, t5.a("v2"), "UA_CIP", g3.c(userAgentString));
            t5.b(contextA, t5.a("v2"), "UA_LAST", System.currentTimeMillis());
        }
    }

    public void a(Context context) {
        hb hbVar = (hb) fn.a().b(context);
        if (hbVar != null) {
            hbVar.a(new d(context), 5L, TimeUnit.SECONDS);
        }
    }
}
