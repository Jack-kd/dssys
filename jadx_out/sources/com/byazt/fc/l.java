package com.byazt.fc;

import androidx.core.view.PointerIconCompat;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TEXT, 34})
/* loaded from: classes2.dex */
public class l {
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject hp(android.net.Network r7, java.lang.String r8, java.lang.String r9) throws java.io.IOException {
        /*
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            if (r7 != 0) goto L12
            java.net.URL r7 = new java.net.URL     // Catch: java.lang.Throwable -> La2
            r7.<init>(r8)     // Catch: java.lang.Throwable -> La2
            java.net.URLConnection r7 = r7.openConnection()     // Catch: java.lang.Throwable -> La2
            javax.net.ssl.HttpsURLConnection r7 = (javax.net.ssl.HttpsURLConnection) r7     // Catch: java.lang.Throwable -> La2
            goto L1d
        L12:
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> La2
            r1.<init>(r8)     // Catch: java.lang.Throwable -> La2
            java.net.URLConnection r7 = r7.openConnection(r1)     // Catch: java.lang.Throwable -> La2
            javax.net.ssl.HttpsURLConnection r7 = (javax.net.ssl.HttpsURLConnection) r7     // Catch: java.lang.Throwable -> La2
        L1d:
            if (r7 != 0) goto L2b
            if (r7 == 0) goto L24
            r7.disconnect()
        L24:
            com.byazt.dnb.w.hp(r0)
            com.byazt.dnb.w.hp(r0)
            return r0
        L2b:
            r8 = 10000(0x2710, float:1.4013E-41)
            r7.setConnectTimeout(r8)     // Catch: java.lang.Throwable -> L9f
            r7.setReadTimeout(r8)     // Catch: java.lang.Throwable -> L9f
            r8 = 1
            r7.setDoInput(r8)     // Catch: java.lang.Throwable -> L9f
            r1 = 0
            r7.setDefaultUseCaches(r1)     // Catch: java.lang.Throwable -> L9f
            boolean r2 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Throwable -> L9f
            if (r2 != 0) goto L5a
            java.lang.String r2 = "POST"
            r7.setRequestMethod(r2)     // Catch: java.lang.Throwable -> L9f
            r7.setDoOutput(r8)     // Catch: java.lang.Throwable -> L9f
            java.io.OutputStream r8 = r7.getOutputStream()     // Catch: java.lang.Throwable -> L9f
            byte[] r9 = r9.getBytes()     // Catch: java.lang.Throwable -> L58
            r8.write(r9)     // Catch: java.lang.Throwable -> L58
            r8.flush()     // Catch: java.lang.Throwable -> L58
            goto L60
        L58:
            r9 = r0
            goto La5
        L5a:
            java.lang.String r8 = "GET"
            r7.setRequestMethod(r8)     // Catch: java.lang.Throwable -> L9f
            r8 = r0
        L60:
            r7.connect()     // Catch: java.lang.Throwable -> L58
            int r9 = r7.getResponseCode()     // Catch: java.lang.Throwable -> L58
            r2 = 200(0xc8, float:2.8E-43)
            if (r9 != r2) goto L94
            java.io.InputStream r9 = r7.getInputStream()     // Catch: java.lang.Throwable -> L58
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> La5
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
            r3.<init>()     // Catch: java.lang.Throwable -> La5
        L78:
            int r4 = r9.read(r2)     // Catch: java.lang.Throwable -> La5
            if (r4 <= 0) goto L89
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> La5
            java.nio.charset.Charset r6 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> La5
            r5.<init>(r2, r1, r4, r6)     // Catch: java.lang.Throwable -> La5
            r3.append(r5)     // Catch: java.lang.Throwable -> La5
            goto L78
        L89:
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> La5
            r1.<init>(r2)     // Catch: java.lang.Throwable -> La5
            r0 = r9
            goto L95
        L94:
            r1 = r0
        L95:
            r7.disconnect()
            com.byazt.dnb.w.hp(r8)
            com.byazt.dnb.w.hp(r0)
            return r1
        L9f:
            r8 = r0
        La0:
            r9 = r8
            goto La5
        La2:
            r7 = r0
            r8 = r7
            goto La0
        La5:
            if (r7 == 0) goto Laa
            r7.disconnect()
        Laa:
            com.byazt.dnb.w.hp(r8)
            com.byazt.dnb.w.hp(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fc.l.hp(android.net.Network, java.lang.String, java.lang.String):org.json.JSONObject");
    }
}
