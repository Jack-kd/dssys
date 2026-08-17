package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes4.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private static final String f31182a = "gzip";

    /* renamed from: b, reason: collision with root package name */
    private static final int f31183b = 1024;

    /* renamed from: d, reason: collision with root package name */
    private static volatile l f31184d;

    /* renamed from: e, reason: collision with root package name */
    private static Context f31185e;

    /* renamed from: c, reason: collision with root package name */
    private boolean f31186c = false;

    private l(Context context) {
        f31185e = context;
    }

    public static l a(Context context) {
        if (f31184d == null) {
            synchronized (l.class) {
                try {
                    if (f31184d == null) {
                        f31184d = new l(context);
                    }
                } finally {
                }
            }
        }
        return f31184d;
    }

    public void b(m mVar, j jVar) throws Throwable {
        a(mVar, jVar, "POST");
    }

    public void a(m mVar, j jVar) throws Throwable {
        a(mVar, jVar, "GET");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.net.HttpURLConnection] */
    public HttpURLConnection a(String str, String str2) throws ProtocolException {
        HttpsURLConnection httpsURLConnection;
        try {
            URL url = new URL(str);
            if ("https".equals(url.getProtocol())) {
                HttpsURLConnection httpsURLConnection2 = (HttpsURLConnection) url.openConnection();
                a(httpsURLConnection2);
                httpsURLConnection = httpsURLConnection2;
            } else {
                httpsURLConnection = (HttpURLConnection) url.openConnection();
            }
            try {
                httpsURLConnection.setRequestMethod(str2);
                httpsURLConnection.setAllowUserInteraction(true);
                httpsURLConnection.setInstanceFollowRedirects(true);
                httpsURLConnection.setChunkedStreamingMode(0);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setReadTimeout(5000);
                httpsURLConnection.setRequestProperty("Charset", "UTF-8");
                httpsURLConnection.setRequestProperty(AbstractC1114b.f5589g, "application/json; charset=UTF-8");
                if (str2.equalsIgnoreCase("post")) {
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setUseCaches(false);
                }
                return httpsURLConnection;
            } catch (Exception unused) {
                return httpsURLConnection;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    private synchronized void a(HttpsURLConnection httpsURLConnection) {
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f7 A[Catch: Exception -> 0x00ff, TryCatch #1 {Exception -> 0x00ff, blocks: (B:53:0x00f2, B:55:0x00f7, B:57:0x00fc), top: B:71:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fc A[Catch: Exception -> 0x00ff, TRY_LEAVE, TryCatch #1 {Exception -> 0x00ff, blocks: (B:53:0x00f2, B:55:0x00f7, B:57:0x00fc), top: B:71:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.kuaishou.weapon.p0.m r10, com.kuaishou.weapon.p0.j r11, java.lang.String r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.l.a(com.kuaishou.weapon.p0.m, com.kuaishou.weapon.p0.j, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e4 A[Catch: Exception -> 0x00e7, TRY_LEAVE, TryCatch #5 {Exception -> 0x00e7, blocks: (B:46:0x00df, B:48:0x00e4), top: B:68:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(com.kuaishou.weapon.p0.m r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.l.a(com.kuaishou.weapon.p0.m):java.lang.String");
    }

    public boolean a(String str, File file) {
        HttpURLConnection httpURLConnectionA;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        InputStream inputStreamA = null;
        try {
            httpURLConnectionA = a(str, "GET");
        } catch (Throwable unused) {
            httpURLConnectionA = null;
        }
        try {
            inputStreamA = a(httpURLConnectionA);
            boolean zA = a(inputStreamA, file);
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (Throwable unused2) {
                    return false;
                }
            }
            if (httpURLConnectionA == null) {
                return zA;
            }
            httpURLConnectionA.disconnect();
            return zA;
        } catch (Throwable unused3) {
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (Throwable unused4) {
                    return false;
                }
            }
            if (httpURLConnectionA != null) {
                httpURLConnectionA.disconnect();
            }
            return false;
        }
    }

    private InputStream a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return null;
        }
        try {
            if (f31182a.equalsIgnoreCase(httpURLConnection.getContentEncoding())) {
                this.f31186c = true;
            } else {
                this.f31186c = false;
            }
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return null;
        }
    }

    private boolean a(InputStream inputStream, File file) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        if (this.f31186c) {
            try {
                inputStream = new GZIPInputStream(inputStream);
            } catch (IOException unused) {
            }
        }
        if (inputStream == null) {
            return false;
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 != -1) {
                        bufferedOutputStream.write(bArr, 0, i2);
                        bufferedOutputStream.flush();
                    } else {
                        try {
                            bufferedOutputStream.close();
                            return true;
                        } catch (IOException unused2) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused3) {
                if (bufferedOutputStream != null) {
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                return false;
            }
        } catch (Throwable unused5) {
            bufferedOutputStream = null;
        }
    }

    public String a(Map<String, String> map) {
        String str = "";
        for (Map.Entry<String, String> entry : map.entrySet()) {
            str = str + "&" + entry.getKey() + "=" + entry.getValue();
        }
        return str.substring(1);
    }
}
