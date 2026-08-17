package com.kwad.sdk.core.network.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.network.e;
import com.kwad.sdk.core.network.p;
import com.kwad.sdk.export.proxy.AdHttpBodyBuilder;
import com.kwad.sdk.export.proxy.AdHttpFormDataBuilder;
import com.kwad.sdk.export.proxy.AdHttpResponseListener;
import com.kwad.sdk.utils.by;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.ConnectionSpec;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class c {
    private static final Pattern aUb = Pattern.compile("Unexpected response code for CONNECT: ([0-9]+)", 2);
    public static String aUc = "UTF-8";
    private static OkHttpClient aUd = null;
    public static OkHttpClient aUe = Mn();

    public static OkHttpClient Mm() {
        if (!com.kwad.framework.a.a.pe.booleanValue()) {
            return aUe;
        }
        if (aUd == null) {
            aUd = aUe.newBuilder().build();
        }
        return aUd;
    }

    private static OkHttpClient Mn() {
        if (aUe == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            OkHttpClient.Builder builderConnectionSpecs = builder.connectTimeout(3000L, timeUnit).readTimeout(6000L, timeUnit).connectionSpecs(Arrays.asList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT));
            try {
                builderConnectionSpecs.dns(new d());
            } catch (Throwable th) {
                com.kwad.sdk.core.d.c.printStackTrace(th);
            }
            aUe = builderConnectionSpecs.build();
        }
        return aUe;
    }

    public static com.kwad.sdk.core.network.c a(String str, @Nullable Map<String, String> map, boolean z2, boolean z3) {
        com.kwad.sdk.core.network.c cVar = new com.kwad.sdk.core.network.c();
        try {
            Request.Builder builderUrl = new Request.Builder().url(str);
            if (z3) {
                a(builderUrl);
            }
            a(builderUrl, map);
            Response responseExecute = Mm().newCall(builderUrl.build()).execute();
            int iCode = responseExecute.code();
            cVar.code = iCode;
            cVar.aSW = iCode;
            cVar.aSY = z2 ? a(responseExecute) : "";
            return cVar;
        } catch (Exception e2) {
            a(cVar, e2);
            return cVar;
        }
    }

    private static void b(Request.Builder builder, Map<String, String> map) {
        FormBody formBodyBuild;
        if (map == null || map.isEmpty()) {
            formBodyBuild = null;
        } else {
            FormBody.Builder builder2 = new FormBody.Builder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry != null) {
                    try {
                        builder2.addEncoded(entry.getKey(), encode(entry.getValue()));
                    } catch (Exception unused) {
                    }
                }
            }
            formBodyBuild = builder2.build();
        }
        if (builder == null || formBodyBuild == null) {
            return;
        }
        builder.post(formBodyBuild);
    }

    public static com.kwad.sdk.core.network.c doGet(String str, @Nullable Map<String, String> map) {
        return a(str, map, true, true);
    }

    public static com.kwad.sdk.core.network.c doPost(String str, Map<String, String> map, JSONObject jSONObject) {
        com.kwad.sdk.core.network.c cVar = new com.kwad.sdk.core.network.c();
        try {
            Request.Builder builderUrl = new Request.Builder().url(str);
            a(builderUrl);
            a(builderUrl, map);
            a(builderUrl, jSONObject);
            Response responseExecute = Mm().newCall(builderUrl.build()).execute();
            int iCode = responseExecute.code();
            cVar.code = iCode;
            cVar.aSW = iCode;
            cVar.aSY = a(responseExecute);
            return cVar;
        } catch (Exception e2) {
            a(cVar, e2);
            return cVar;
        }
    }

    public static boolean downloadUrlToStream(String str, OutputStream outputStream, long j2, boolean z2, @Nullable AdHttpResponseListener adHttpResponseListener) throws Throwable {
        com.kwad.sdk.core.network.c cVar = new com.kwad.sdk.core.network.c();
        Request.Builder builderUrl = new Request.Builder().url(str);
        HashMap map = new HashMap();
        map.put("Accept-Language", "zh-CN");
        if (z2) {
            map.put("Connection", "keep-alive");
        } else {
            map.put("Connection", "close");
        }
        map.put("Charset", "UTF-8");
        a(builderUrl);
        a(builderUrl, map);
        Response responseExecute = Mm().newCall(builderUrl.build()).execute();
        int iCode = responseExecute.code();
        cVar.code = iCode;
        cVar.aSW = iCode;
        if (responseExecute.code() != 200) {
            throw new FileNotFoundException(str);
        }
        a(responseExecute, outputStream, j2, adHttpResponseListener);
        return true;
    }

    private static String encode(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return "";
        }
    }

    private static long b(Response response) {
        try {
            return Long.parseLong(response.header("content-length"));
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private static void a(Request.Builder builder) {
        builder.addHeader("User-Agent", p.getUserAgent());
        builder.addHeader("BrowserUa", p.Mi());
        builder.addHeader("SystemUa", p.Mh());
    }

    public static com.kwad.sdk.core.network.c doPost(String str, Map<String, String> map, Map<String, String> map2) {
        com.kwad.sdk.core.network.c cVar = new com.kwad.sdk.core.network.c();
        try {
            Request.Builder builderUrl = new Request.Builder().url(str);
            a(builderUrl);
            a(builderUrl, map);
            b(builderUrl, map2);
            Response responseExecute = Mm().newCall(builderUrl.build()).execute();
            int iCode = responseExecute.code();
            cVar.code = iCode;
            cVar.aSW = iCode;
            cVar.aSY = a(responseExecute);
            return cVar;
        } catch (Exception e2) {
            a(cVar, e2);
            return cVar;
        }
    }

    private static void a(@NonNull com.kwad.sdk.core.network.c cVar, Exception exc) {
        String message;
        cVar.aSX = exc;
        if (cVar.aSW == -1 && (exc instanceof IOException) && (message = exc.getMessage()) != null) {
            Matcher matcher = aUb.matcher(message);
            if (matcher.find()) {
                try {
                    cVar.aSW = Integer.parseInt(matcher.group(1));
                } catch (Exception unused) {
                }
            }
        }
        if (exc instanceof SocketTimeoutException) {
            e eVar = e.aSZ;
            cVar.code = eVar.errorCode;
            cVar.aSY = eVar.msg;
        } else {
            cVar.code = e.aTa.errorCode;
            cVar.aSY = e.aTa.msg + ServiceReference.DELIMITER + by.y(exc);
        }
        if (com.kwad.framework.a.a.pe.booleanValue()) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(exc);
        }
    }

    public static com.kwad.sdk.core.network.c doPost(String str, Map<String, String> map, AdHttpBodyBuilder adHttpBodyBuilder) {
        com.kwad.sdk.core.network.c cVar = new com.kwad.sdk.core.network.c();
        try {
            final MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            if (adHttpBodyBuilder != null) {
                adHttpBodyBuilder.buildFormData(new AdHttpFormDataBuilder() { // from class: com.kwad.sdk.core.network.a.c.1
                    @Override // com.kwad.sdk.export.proxy.AdHttpFormDataBuilder
                    public final void addFormDataPart(String str2, String str3) {
                        type.addFormDataPart(str2, str3);
                    }

                    @Override // com.kwad.sdk.export.proxy.AdHttpFormDataBuilder
                    public final void addFormDataPart(String str2, String str3, String str4, byte[] bArr) {
                        type.addFormDataPart(str2, str3, RequestBody.create(MediaType.parse(str4), bArr));
                    }
                });
            }
            Request.Builder builderPost = new Request.Builder().url(str).post(type.build());
            a(builderPost, map);
            Response responseExecute = Mm().newCall(builderPost.build()).execute();
            int iCode = responseExecute.code();
            cVar.code = iCode;
            cVar.aSW = iCode;
            cVar.aSY = a(responseExecute);
            return cVar;
        } catch (Exception e2) {
            a(cVar, e2);
            return cVar;
        }
    }

    private static void a(Request.Builder builder, @Nullable Map<String, String> map) {
        if (builder == null || map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry != null) {
                try {
                    builder.removeHeader(entry.getKey());
                    builder.addHeader(entry.getKey(), entry.getValue());
                } catch (Exception unused) {
                }
            }
        }
    }

    private static void a(Request.Builder builder, JSONObject jSONObject) {
        builder.post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), jSONObject.toString()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004f A[Catch: all -> 0x0053, LOOP:1: B:35:0x0049->B:21:0x004f, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:19:0x0049, B:21:0x004f), top: B:35:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.Closeable, java.io.InputStreamReader, java.io.Reader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(okhttp3.Response r6) throws java.lang.Throwable {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            okhttp3.ResponseBody r2 = r6.body()     // Catch: java.lang.Throwable -> L6d
            java.io.InputStream r2 = r2.byteStream()     // Catch: java.lang.Throwable -> L6d
            java.lang.String r3 = "Content-Encoding"
            java.util.List r6 = r6.headers(r3)     // Catch: java.lang.Throwable -> L35
            if (r6 == 0) goto L39
            java.util.Iterator r6 = r6.iterator()     // Catch: java.lang.Throwable -> L35
        L1a:
            boolean r3 = r6.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r3 == 0) goto L39
            java.lang.Object r3 = r6.next()     // Catch: java.lang.Throwable -> L35
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L35
            java.lang.String r4 = "gzip"
            boolean r3 = r4.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L35
            if (r3 == 0) goto L1a
            java.util.zip.GZIPInputStream r6 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L35
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L35
            r3 = r6
            goto L3b
        L35:
            r6 = move-exception
            r3 = r1
        L37:
            r4 = r3
            goto L71
        L39:
            r3 = r1
            r6 = r2
        L3b:
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L6a
            java.lang.String r5 = com.kwad.sdk.core.network.a.c.aUc     // Catch: java.lang.Throwable -> L6a
            r4.<init>(r6, r5)     // Catch: java.lang.Throwable -> L6a
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L68
            r5 = 8
            r6.<init>(r4, r5)     // Catch: java.lang.Throwable -> L68
        L49:
            java.lang.String r1 = r6.readLine()     // Catch: java.lang.Throwable -> L53
            if (r1 == 0) goto L57
            r0.append(r1)     // Catch: java.lang.Throwable -> L53
            goto L49
        L53:
            r0 = move-exception
            r1 = r6
            r6 = r0
            goto L71
        L57:
            com.kwad.sdk.crash.utils.b.closeQuietly(r6)
            com.kwad.sdk.crash.utils.b.closeQuietly(r4)
            com.kwad.sdk.crash.utils.b.closeQuietly(r3)
            com.kwad.sdk.crash.utils.b.closeQuietly(r2)
            java.lang.String r6 = r0.toString()
            return r6
        L68:
            r6 = move-exception
            goto L71
        L6a:
            r6 = move-exception
            r4 = r1
            goto L71
        L6d:
            r6 = move-exception
            r2 = r1
            r3 = r2
            goto L37
        L71:
            com.kwad.sdk.crash.utils.b.closeQuietly(r1)
            com.kwad.sdk.crash.utils.b.closeQuietly(r4)
            com.kwad.sdk.crash.utils.b.closeQuietly(r3)
            com.kwad.sdk.crash.utils.b.closeQuietly(r2)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.network.a.c.a(okhttp3.Response):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[Catch: all -> 0x0061, LOOP:1: B:20:0x0051->B:59:?, LOOP_START, PHI: r8
      0x0051: PHI (r8v3 long) = (r8v0 long), (r8v4 long) binds: [B:19:0x004f, B:59:?] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0061, blocks: (B:18:0x0048, B:20:0x0051, B:22:0x0057, B:29:0x006a, B:30:0x0070, B:33:0x0078, B:34:0x007c, B:38:0x0087), top: B:47:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.io.BufferedInputStream, java.io.Closeable, java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(okhttp3.Response r14, java.io.OutputStream r15, long r16, com.kwad.sdk.export.proxy.AdHttpResponseListener r18) throws java.lang.Throwable {
        /*
            r1 = r18
            r2 = 0
            com.kwad.sdk.export.proxy.AdHttpResponseHelper.notifyResponseStart(r1)     // Catch: java.lang.Throwable -> L9c
            okhttp3.ResponseBody r3 = r14.body()     // Catch: java.lang.Throwable -> L9c
            java.io.InputStream r3 = r3.byteStream()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r4 = "Content-Encoding"
            java.util.List r4 = r14.headers(r4)     // Catch: java.lang.Throwable -> L39
            long r5 = b(r14)     // Catch: java.lang.Throwable -> L39
            if (r4 == 0) goto L3f
            java.util.Iterator r14 = r4.iterator()     // Catch: java.lang.Throwable -> L39
        L1e:
            boolean r4 = r14.hasNext()     // Catch: java.lang.Throwable -> L39
            if (r4 == 0) goto L3f
            java.lang.Object r4 = r14.next()     // Catch: java.lang.Throwable -> L39
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L39
            java.lang.String r7 = "gzip"
            boolean r4 = r7.equalsIgnoreCase(r4)     // Catch: java.lang.Throwable -> L39
            if (r4 == 0) goto L1e
            java.util.zip.GZIPInputStream r14 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L39
            r14.<init>(r3)     // Catch: java.lang.Throwable -> L39
            r4 = r14
            goto L41
        L39:
            r0 = move-exception
            r14 = r0
            r0 = r2
            r4 = r0
            goto La1
        L3f:
            r4 = r2
            r14 = r3
        L41:
            java.io.BufferedInputStream r7 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L98
            r7.<init>(r14)     // Catch: java.lang.Throwable -> L98
            r14 = 1024(0x400, float:1.435E-42)
            byte[] r14 = new byte[r14]     // Catch: java.lang.Throwable -> L61
            r8 = 0
            int r10 = (r16 > r8 ? 1 : (r16 == r8 ? 0 : -1))
            r11 = -1
            if (r10 <= 0) goto L66
        L51:
            int r0 = r7.read(r14)     // Catch: java.lang.Throwable -> L61
            if (r0 == r11) goto L8a
            long r12 = (long) r0     // Catch: java.lang.Throwable -> L61
            long r8 = r8 + r12
            com.kwad.sdk.export.proxy.AdHttpResponseHelper.notifyResponseProgress(r1, r8, r5)     // Catch: java.lang.Throwable -> L61
            int r0 = (r8 > r16 ? 1 : (r8 == r16 ? 0 : -1))
            if (r0 <= 0) goto L51
            goto L8a
        L61:
            r0 = move-exception
            r14 = r0
            r0 = r2
            r2 = r7
            goto La1
        L66:
            if (r10 >= 0) goto L8a
            if (r15 == 0) goto L70
            java.io.BufferedOutputStream r10 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L61
            r10.<init>(r15)     // Catch: java.lang.Throwable -> L61
            r2 = r10
        L70:
            int r0 = r7.read(r14)     // Catch: java.lang.Throwable -> L61
            if (r0 == r11) goto L85
            if (r2 == 0) goto L7c
            r10 = 0
            r2.write(r14, r10, r0)     // Catch: java.lang.Throwable -> L61
        L7c:
            long r12 = (long) r0     // Catch: java.lang.Throwable -> L61
            long r8 = r8 + r12
            boolean r0 = com.kwad.sdk.export.proxy.AdHttpResponseHelper.notifyResponseProgress(r1, r8, r5)     // Catch: java.lang.Throwable -> L61
            if (r0 != 0) goto L85
            goto L70
        L85:
            if (r2 == 0) goto L8a
            r2.flush()     // Catch: java.lang.Throwable -> L61
        L8a:
            com.kwad.sdk.crash.utils.b.closeQuietly(r7)
            com.kwad.sdk.crash.utils.b.closeQuietly(r2)
            com.kwad.sdk.crash.utils.b.closeQuietly(r4)
            com.kwad.sdk.crash.utils.b.closeQuietly(r3)
            r14 = 1
            return r14
        L98:
            r0 = move-exception
            r14 = r0
            r0 = r2
            goto La1
        L9c:
            r0 = move-exception
            r14 = r0
            r0 = r2
            r3 = r0
            r4 = r3
        La1:
            com.kwad.sdk.crash.utils.b.closeQuietly(r2)
            com.kwad.sdk.crash.utils.b.closeQuietly(r0)
            com.kwad.sdk.crash.utils.b.closeQuietly(r4)
            com.kwad.sdk.crash.utils.b.closeQuietly(r3)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.network.a.c.a(okhttp3.Response, java.io.OutputStream, long, com.kwad.sdk.export.proxy.AdHttpResponseListener):boolean");
    }
}
