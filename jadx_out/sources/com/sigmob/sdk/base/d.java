package com.sigmob.sdk.base;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.webkit.WebResourceResponse;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.utils.x;
import java.util.Map;

/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    static e f36068a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final String f36069b = "d";

    static {
        try {
            if (o.a().Z()) {
                f36068a = new f();
            }
        } catch (Throwable unused) {
        }
        if (f36068a == null) {
            f36068a = new e();
        }
    }

    public static WebResourceResponse a(Uri uri) {
        return null;
    }

    public static WebResourceResponse a(String str, String str2, Map<String, String> map) {
        e eVar;
        if (x.a(str)) {
            return null;
        }
        if ((URLUtil.isHttpUrl(str) || URLUtil.isHttpsUrl(str)) && !str2.equals("POST") && (eVar = f36068a) != null) {
            try {
                return eVar.a(str, str2, map);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static boolean a(String str) {
        Uri uri;
        String host;
        String scheme;
        String lastPathSegment;
        try {
            uri = Uri.parse(str);
            host = uri.getHost();
            scheme = uri.getScheme();
            lastPathSegment = uri.getLastPathSegment();
        } catch (Throwable th) {
            SigmobLogger.e(f36069b, "filterUrl: error = " + th.getMessage(), new Object[0]);
        }
        if (host == null || l.a(str) || !scheme.startsWith("http") || host.equals("localhost") || host.equals("127.0.0.1") || !TextUtils.isEmpty(uri.getQueryParameter("no-cache"))) {
            return true;
        }
        if (!lastPathSegment.endsWith(".js")) {
            if (!lastPathSegment.endsWith(".css")) {
                return true;
            }
        }
        return false;
    }
}
