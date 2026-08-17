package com.meishu.sdk.core.webview;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.meishu.sdk.core.AdSdk;
import java.lang.reflect.Constructor;

/* loaded from: classes4.dex */
public class d implements DownloadListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f32110a;

    /* renamed from: b, reason: collision with root package name */
    public a f32111b;

    public interface a {
        void onDownloadStart();
    }

    public d(Context context) {
        this.f32110a = context;
    }

    public static d a(Context context) {
        try {
            if (AdSdk.adConfig() != null && AdSdk.adConfig().webViewDownloadListener() != null) {
                Constructor<? extends d> declaredConstructor = AdSdk.adConfig().webViewDownloadListener().getDeclaredConstructor(Context.class);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(context);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return new d(context);
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        try {
            this.f32110a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            a aVar = this.f32111b;
            if (aVar != null) {
                aVar.onDownloadStart();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
