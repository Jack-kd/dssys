package com.smartdigimkt.y1;

import android.app.Activity;
import android.content.Intent;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.smartdigimkt.r2.y;
import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;

/* loaded from: classes5.dex */
public final class s extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandpagePlayerView f45189a;

    public s(WebLandpagePlayerView webLandpagePlayerView) {
        this.f45189a = webLandpagePlayerView;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        y.a(this.f45189a.getContext(), str, callback);
        super.onGeolocationPermissionsShowPrompt(str, callback);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        try {
            this.f45189a.f43725K = valueCallback;
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*", "audio/*"});
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("image/* video/* audio/*");
            if (!(this.f45189a.getContext() instanceof Activity)) {
                return true;
            }
            ((Activity) this.f45189a.getContext()).startActivityForResult(Intent.createChooser(intent, "File Chooser"), 512);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
