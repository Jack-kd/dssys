package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes2.dex */
public class cs {

    /* renamed from: a, reason: collision with root package name */
    private static volatile cs f11407a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f11408b;

    private cs() {
    }

    public static cs a() {
        if (f11407a == null) {
            synchronized (cs.class) {
                try {
                    if (f11407a == null) {
                        f11407a = new cs();
                    }
                } finally {
                }
            }
        }
        return f11407a;
    }

    public boolean b() {
        return this.f11408b;
    }

    public String c(String str) {
        return a(str).booleanValue() ? str.replaceFirst("(?i)http", "https") : str;
    }

    public Boolean d(String str) {
        return Boolean.valueOf(a(str, "sms:").booleanValue() || a(str, "smsto:").booleanValue() || a(str, "mms:").booleanValue());
    }

    public String e(String str) {
        try {
            String path = new URI(str).getPath();
            return path.substring(path.lastIndexOf(47) + 1, path.length());
        } catch (URISyntaxException unused) {
            return "";
        }
    }

    public boolean f(String str) {
        return TextUtils.isEmpty(str) || !str.contains("/thefatherofsalmon.com");
    }

    public String g(String str) {
        if (str == null) {
            return null;
        }
        return (a(str).booleanValue() || b(str).booleanValue()) ? str.split("\\?")[0] : str;
    }

    public String h(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = (a(str).booleanValue() || b(str).booleanValue()) ? str.split("\\?") : null;
        if (strArrSplit == null || strArrSplit.length < 2) {
            return null;
        }
        return strArrSplit[1];
    }

    public void i(String str) {
        new an(str).b();
    }

    public Boolean b(String str) {
        return a(str, "https:");
    }

    public void a(boolean z2) {
        this.f11408b = z2;
    }

    public Boolean a(String str) {
        return a(str, "http:");
    }

    private Boolean a(String str, String str2) {
        boolean z2 = false;
        if (str != null && str.trim().toLowerCase(Locale.getDefault()).indexOf(str2) == 0) {
            z2 = true;
        }
        return Boolean.valueOf(z2);
    }

    public HttpURLConnection a(URL url) throws IOException {
        if (url.getProtocol().toLowerCase().equals("https")) {
            return (HttpsURLConnection) url.openConnection();
        }
        return (HttpURLConnection) url.openConnection();
    }

    public String a(String str, HashMap<String, String> map) {
        StringBuilder sb = new StringBuilder(str);
        if (map != null && !map.isEmpty()) {
            sb.append("?");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    sb.append(entry.getKey());
                    sb.append("=");
                    sb.append(entry.getValue());
                    sb.append("&");
                } catch (Exception e2) {
                    bv.a().c(e2);
                }
            }
            return sb.toString().substring(0, r3.length() - 1);
        }
        return sb.toString();
    }

    public void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.getInputStream().close();
            } catch (Throwable unused) {
            }
            try {
                httpURLConnection.getOutputStream().close();
            } catch (Throwable unused2) {
            }
            try {
                httpURLConnection.disconnect();
            } catch (Throwable unused3) {
            }
        }
    }
}
