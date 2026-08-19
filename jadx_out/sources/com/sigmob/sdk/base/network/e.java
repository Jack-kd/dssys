package com.sigmob.sdk.base.network;

import android.os.Handler;
import android.os.Looper;
import com.anythink.core.common.m.AbstractC1114b;
import com.umeng.analytics.pro.ca;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36475a = "e";

    /* renamed from: g, reason: collision with root package name */
    private static final int f36476g = 4096;

    /* renamed from: b, reason: collision with root package name */
    private final Object f36477b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private final Handler f36478c = new Handler(Looper.getMainLooper());

    /* renamed from: d, reason: collision with root package name */
    private final ExecutorService f36479d = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f36480e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f36481f;

    public interface a {
        void a(long j2, long j3, String str);

        void a(File file, String str);

        void a(Exception exc, String str);

        void b(long j2, long j3, String str);

        void c(long j2, long j3, String str);
    }

    public interface b {
        void a(Exception exc);

        void a(String str);
    }

    private int a(long j2, long j3) {
        if (j2 <= 0) {
            return -1;
        }
        return (int) ((j3 * 100) / j2);
    }

    private static long b(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getContentLengthLong();
    }

    private long a(HttpURLConnection httpURLConnection) {
        try {
            if (Long.parseLong(httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37366e)) <= 0) {
                return b(httpURLConnection);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return b(httpURLConnection);
    }

    public void b() {
        this.f36481f = true;
    }

    public void c() {
        this.f36478c.removeCallbacksAndMessages(null);
        ExecutorService executorService = this.f36479d;
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
    }

    private String a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "";
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb.toString();
            }
            sb.append(line);
            sb.append('\n');
        }
    }

    public void a() {
        this.f36480e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, Exception exc, File file) {
        aVar.a(exc, file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void b(java.lang.String r10, final com.sigmob.sdk.base.network.e.b r11) throws java.lang.Throwable {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.net.URLConnection r10 = r2.openConnection()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.net.HttpURLConnection r10 = (java.net.HttpURLConnection) r10     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r1 = "GET"
            r10.setRequestMethod(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r1 = 10000(0x2710, float:1.4013E-41)
            r10.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r1 = 15000(0x3a98, float:2.102E-41)
            r10.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r1 = r0
        L1d:
            r2 = 3
            if (r1 >= r2) goto L7e
            int r3 = r10.getResponseCode()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r4 = r10.getResponseMessage()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r5 = com.sigmob.sdk.base.network.e.f36475a     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r6.<init>()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r7 = "GET response code = "
            r6.append(r7)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r6.append(r3)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r7 = ", response message = "
            r6.append(r7)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r6.append(r4)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            com.sigmob.sdk.base.utils.k.c(r5, r4, r6)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r4 = 200(0xc8, float:2.8E-43)
            if (r3 != r4) goto L6e
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.io.InputStream r4 = r10.getInputStream()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r4 = r9.a(r3)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r3.close()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            if (r11 == 0) goto L7e
            android.os.Handler r3 = r9.f36478c     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            com.sigmob.sdk.base.network.m r5 = new com.sigmob.sdk.base.network.m     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r5.<init>()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r3.post(r5)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            goto L7e
        L69:
            r11 = move-exception
            r1 = r10
            goto Lc0
        L6c:
            r1 = move-exception
            goto L92
        L6e:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r3 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r5 = (double) r1     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            double r3 = java.lang.Math.pow(r3, r5)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r2.sleep(r3)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            int r1 = r1 + 1
            goto L1d
        L7e:
            if (r1 == r2) goto L84
            r10.disconnect()
            return
        L84:
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            java.lang.String r2 = "Failed to connect after retries."
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            throw r1     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
        L8c:
            r11 = move-exception
            goto Lc0
        L8e:
            r10 = move-exception
            r8 = r1
            r1 = r10
            r10 = r8
        L92:
            java.lang.String r2 = com.sigmob.sdk.base.network.e.f36475a     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69
            r3.<init>()     // Catch: java.lang.Throwable -> L69
            java.lang.String r4 = "Error during GET request error = "
            r3.append(r4)     // Catch: java.lang.Throwable -> L69
            java.lang.String r4 = r1.getMessage()     // Catch: java.lang.Throwable -> L69
            r3.append(r4)     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L69
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L69
            com.sigmob.sdk.base.utils.k.f(r2, r3, r0)     // Catch: java.lang.Throwable -> L69
            if (r11 == 0) goto Lba
            android.os.Handler r0 = r9.f36478c     // Catch: java.lang.Throwable -> L69
            com.sigmob.sdk.base.network.n r2 = new com.sigmob.sdk.base.network.n     // Catch: java.lang.Throwable -> L69
            r2.<init>()     // Catch: java.lang.Throwable -> L69
            r0.post(r2)     // Catch: java.lang.Throwable -> L69
        Lba:
            if (r10 == 0) goto Lbf
            r10.disconnect()
        Lbf:
            return
        Lc0:
            if (r1 == 0) goto Lc5
            r1.disconnect()
        Lc5:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.network.e.b(java.lang.String, com.sigmob.sdk.base.network.e$b):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026f A[Catch: Exception -> 0x026b, TRY_LEAVE, TryCatch #2 {Exception -> 0x026b, blocks: (B:123:0x0267, B:127:0x026f), top: B:146:0x0267 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0286 A[Catch: Exception -> 0x0282, TRY_LEAVE, TryCatch #15 {Exception -> 0x0282, blocks: (B:134:0x027e, B:138:0x0286), top: B:159:0x027e }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0258 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0267 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x027e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void b(java.lang.String r17, java.lang.String r18, com.sigmob.sdk.base.network.e.a r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.network.e.b(java.lang.String, java.lang.String, com.sigmob.sdk.base.network.e$a):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, String str2, final b bVar) throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setConnectTimeout(ca.f49002b);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty(AbstractC1114b.f5589g, "application/json; charset=UTF-8");
            OutputStream outputStream = httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, Charset.forName("UTF-8")));
            if (str2 == null) {
                str2 = "";
            }
            bufferedWriter.write(str2);
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
            int responseCode = httpURLConnection.getResponseCode();
            String responseMessage = httpURLConnection.getResponseMessage();
            com.sigmob.sdk.base.utils.k.c(f36475a, "POST response code = " + responseCode + ", response message = " + responseMessage, new Object[0]);
            if (responseCode != 200) {
                throw new IOException("Unexpected HTTP response code = " + responseCode + ", response message = " + responseMessage);
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            final String strA = a(bufferedInputStream);
            bufferedInputStream.close();
            if (bVar != null) {
                this.f36478c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.a(strA);
                    }
                });
            }
            httpURLConnection.disconnect();
        } catch (Exception e3) {
            e = e3;
            httpURLConnection2 = httpURLConnection;
            com.sigmob.sdk.base.utils.k.f(f36475a, "Error during POST request error = " + e.getMessage(), new Object[0]);
            if (bVar != null) {
                this.f36478c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.a(e);
                    }
                });
            }
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    public void a(final String str, final b bVar) {
        this.f36479d.submit(new Runnable() { // from class: com.sigmob.sdk.base.network.q
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f36514b.b(str, bVar);
            }
        });
    }

    public void a(final String str, final String str2, final a aVar) {
        this.f36480e = false;
        this.f36481f = false;
        this.f36479d.submit(new Runnable() { // from class: com.sigmob.sdk.base.network.o
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f36506b.b(str2, str, aVar);
            }
        });
    }

    public void a(final String str, final String str2, final b bVar) {
        this.f36479d.submit(new Runnable() { // from class: com.sigmob.sdk.base.network.p
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f36510b.b(str, str2, bVar);
            }
        });
    }
}
