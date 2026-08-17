package com.smartdigimkt.s2;

import android.content.Intent;
import android.text.TextUtils;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TextView;
import com.smartdigimkt.r2.y;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class m extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43131a;

    public m(WebLandPageActivity webLandPageActivity) {
        this.f43131a = webLandPageActivity;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        y.a(this.f43131a, str, callback);
        super.onGeolocationPermissionsShowPrompt(str, callback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i2) {
        WebLandPageActivity webLandPageActivity = this.f43131a;
        if (webLandPageActivity.f44035a != null) {
            if (!webLandPageActivity.f44041g.isRunning()) {
                this.f43131a.f44035a.setProgress(((i2 * 30) / 100) + 70);
            }
            if (i2 == 100) {
                if (this.f43131a.f44041g.isRunning()) {
                    this.f43131a.f44041g.cancel();
                    this.f43131a.f44035a.setProgress(100);
                }
                com.smartdigimkt.b4.e.a().a(200L, (Runnable) new l(this));
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        TextView textView;
        super.onReceivedTitle(webView, str);
        if (TextUtils.isEmpty(str) || (textView = this.f43131a.f44039e) == null || textView.getText().toString().length() != 0) {
            return;
        }
        this.f43131a.f44039e.setText(str);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        try {
            this.f43131a.f44060z = valueCallback;
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*", "audio/*"});
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("image/* video/* audio/*");
            this.f43131a.startActivityForResult(Intent.createChooser(intent, "File Chooser"), 512);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
