package com.fl.saas;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import com.byazt.kc.AbsServerManager;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class F extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private Context f29906a;

    /* renamed from: b, reason: collision with root package name */
    private C1188j f29907b;

    public void a(String str) {
        try {
            C1188j c1188j = this.f29907b;
            if (c1188j != null && c1188j.f30408A0.equals(str)) {
                C1218t.a().a(this.f29907b, 7);
            }
            a();
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null || intent.getAction() == null || !intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
            return;
        }
        try {
            Uri data = intent.getData();
            String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : null;
            if (schemeSpecificPart != null) {
                if (schemeSpecificPart.contains(":")) {
                    schemeSpecificPart = schemeSpecificPart.subSequence(schemeSpecificPart.indexOf(":") + 1, schemeSpecificPart.length()).toString();
                }
                a(schemeSpecificPart);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Context context) {
        try {
            this.f29906a = context;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.setPriority(Integer.MAX_VALUE);
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
            context.registerReceiver(this, intentFilter);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void a(C1188j c1188j) {
        this.f29907b = c1188j;
    }

    public void a() {
        Context context = this.f29906a;
        if (context != null) {
            try {
                context.unregisterReceiver(this);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }
}
