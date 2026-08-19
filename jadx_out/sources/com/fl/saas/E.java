package com.fl.saas;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes3.dex */
public class E {

    /* renamed from: s, reason: collision with root package name */
    public static String f29866s = "YDActionStartDownloadCheckUrl";

    /* renamed from: t, reason: collision with root package name */
    public static String f29867t = "YDActionPauseDownloadCheckUrl";

    /* renamed from: u, reason: collision with root package name */
    public static String f29868u = "YDActionCancelDownloadCheckUrl";

    /* renamed from: v, reason: collision with root package name */
    public static String f29869v = "YDActionErrorDownloadCheckUrl";

    /* renamed from: w, reason: collision with root package name */
    public static String f29870w = "YDActionCancelLastDownloadCheckUrl";

    /* renamed from: x, reason: collision with root package name */
    public static String f29871x = "YDActionUpdateProgress";

    /* renamed from: y, reason: collision with root package name */
    public static String f29872y = "YDActionDownloadSuccess";

    /* renamed from: z, reason: collision with root package name */
    private static F f29873z = new F();

    /* renamed from: a, reason: collision with root package name */
    private String f29874a;

    /* renamed from: d, reason: collision with root package name */
    private long f29877d;

    /* renamed from: e, reason: collision with root package name */
    private File f29878e;

    /* renamed from: f, reason: collision with root package name */
    private String f29879f;

    /* renamed from: g, reason: collision with root package name */
    private File f29880g;

    /* renamed from: h, reason: collision with root package name */
    private RandomAccessFile f29881h;

    /* renamed from: i, reason: collision with root package name */
    private e f29882i;

    /* renamed from: j, reason: collision with root package name */
    private Context f29883j;

    /* renamed from: k, reason: collision with root package name */
    private C1188j f29884k;

    /* renamed from: m, reason: collision with root package name */
    private d f29886m;

    /* renamed from: n, reason: collision with root package name */
    private C1227w f29887n;

    /* renamed from: o, reason: collision with root package name */
    private c f29888o;

    /* renamed from: q, reason: collision with root package name */
    private Handler f29890q;

    /* renamed from: b, reason: collision with root package name */
    private boolean f29875b = false;

    /* renamed from: c, reason: collision with root package name */
    private long f29876c = 0;

    /* renamed from: l, reason: collision with root package name */
    private boolean f29885l = false;

    /* renamed from: p, reason: collision with root package name */
    private final AtomicInteger f29889p = new AtomicInteger();

    /* renamed from: r, reason: collision with root package name */
    private boolean f29891r = true;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 != 1001) {
                if (i2 == 1002) {
                    File file = (File) message.obj;
                    if (E.this.f29886m != null) {
                        E.this.f29886m.onSuccess(file);
                        return;
                    }
                    return;
                }
                return;
            }
            int i3 = message.arg1;
            String str = (String) message.obj;
            if (E.this.f29886m != null) {
                E.this.f29886m.onProgress(i3);
            }
            if (E.this.f29887n != null) {
                E.this.f29887n.a(i3, str);
            }
        }
    }

    public class b implements X509TrustManager {
        public b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public class c extends BroadcastReceiver {
        public c() {
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0073  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r2, android.content.Intent r3) {
            /*
                r1 = this;
                if (r3 == 0) goto L81
                java.lang.String r2 = r3.getAction()
                java.lang.String r0 = "downLoadUrl"
                java.lang.String r3 = r3.getStringExtra(r0)
                boolean r0 = android.text.TextUtils.isEmpty(r2)
                if (r0 != 0) goto L81
                java.lang.String r0 = com.fl.saas.E.f29866s
                boolean r0 = r0.equals(r2)
                if (r0 == 0) goto L2c
                com.fl.saas.E r2 = com.fl.saas.E.this
                java.lang.String r2 = com.fl.saas.E.c(r2)
                boolean r2 = r2.equals(r3)
                if (r2 == 0) goto L81
                com.fl.saas.E r2 = com.fl.saas.E.this
                r2.f()
                return
            L2c:
                java.lang.String r0 = com.fl.saas.E.f29867t
                boolean r0 = r0.equals(r2)
                if (r0 == 0) goto L46
                com.fl.saas.E r2 = com.fl.saas.E.this
                java.lang.String r2 = com.fl.saas.E.c(r2)
                boolean r2 = r2.equals(r3)
                if (r2 == 0) goto L81
                com.fl.saas.E r2 = com.fl.saas.E.this
                r2.e()
                return
            L46:
                java.lang.String r0 = com.fl.saas.E.f29868u
                boolean r0 = r0.equals(r2)
                if (r0 == 0) goto L63
                com.fl.saas.E r2 = com.fl.saas.E.this
                java.lang.String r2 = com.fl.saas.E.c(r2)
                boolean r2 = r2.equals(r3)
                if (r2 == 0) goto L81
                com.fl.saas.E r2 = com.fl.saas.E.this
                com.fl.saas.E$d r2 = com.fl.saas.E.a(r2)
                if (r2 == 0) goto L7c
                goto L73
            L63:
                java.lang.String r3 = com.fl.saas.E.f29870w
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L81
                com.fl.saas.E r2 = com.fl.saas.E.this
                com.fl.saas.E$d r2 = com.fl.saas.E.a(r2)
                if (r2 == 0) goto L7c
            L73:
                com.fl.saas.E r2 = com.fl.saas.E.this
                com.fl.saas.E$d r2 = com.fl.saas.E.a(r2)
                r2.onCancel()
            L7c:
                com.fl.saas.E r2 = com.fl.saas.E.this
                r2.b()
            L81:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.E.c.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public interface d {
        void onCancel();

        void onError();

        void onProgress(int i2);

        void onSuccess(File file);
    }

    public class e extends Thread {
        public e() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws IOException {
            E.this.c();
        }
    }

    public E(Context context, C1188j c1188j, d dVar) {
        String strSubstring;
        this.f29883j = context;
        this.f29884k = c1188j;
        this.f29886m = dVar;
        this.f29874a = !TextUtils.isEmpty(c1188j.f30563z0) ? c1188j.f30563z0 : c1188j.f30557x0;
        if (!TextUtils.isEmpty(c1188j.f30408A0)) {
            StringBuilder sb = new StringBuilder();
            sb.append((c1188j.f30408A0 + c1188j.f30420E0).replace(com.anythink.core.common.d.i.f2495E, ""));
            sb.append(".apk");
            strSubstring = sb.toString();
        } else if (this.f29874a.endsWith(".apk")) {
            String str = this.f29874a;
            strSubstring = str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1, this.f29874a.length());
        } else {
            strSubstring = "temp.apk";
        }
        this.f29879f = strSubstring;
        this.f29890q = new a(Looper.getMainLooper());
    }

    private void d() {
        this.f29875b = false;
        Message messageObtainMessage = this.f29890q.obtainMessage();
        messageObtainMessage.what = 1002;
        messageObtainMessage.obj = this.f29880g;
        this.f29890q.sendMessage(messageObtainMessage);
        C1188j c1188j = this.f29884k;
        if (c1188j != null) {
            F f2 = f29873z;
            if (f2 != null) {
                f2.a(c1188j);
            }
            C1218t.a().a(this.f29884k, 5);
        }
        AbstractC1194l.a(this.f29883j, this.f29880g, this.f29884k);
        if (!this.f29885l && f29873z != null && DeviceUtil.enableCollectAppInstallStatus) {
            f29873z.a(this.f29883j.getApplicationContext());
            this.f29885l = true;
        }
        b();
    }

    public void e() {
        if (this.f29875b) {
            this.f29875b = false;
            if (this.f29882i != null) {
                C1172d1.a().c(this.f29882i);
                this.f29882i = null;
            }
            C1227w c1227w = this.f29887n;
            if (c1227w != null) {
                c1227w.a(false);
            }
        }
    }

    public void f() {
        if (this.f29875b) {
            return;
        }
        this.f29875b = true;
        this.f29891r = true;
        if (this.f29882i == null) {
            this.f29882i = new e();
        }
        C1172d1.a().b(this.f29882i);
    }

    public SSLContext a() throws NoSuchAlgorithmException, KeyManagementException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, new TrustManager[]{new b()}, new SecureRandom());
            return sSLContext;
        } catch (KeyManagementException | NoSuchAlgorithmException e2) {
            LogcatUtil.debug(e2);
            return null;
        }
    }

    public void b() {
        try {
            if (this.f29875b) {
                this.f29875b = false;
                if (this.f29882i != null) {
                    C1172d1.a().c(this.f29882i);
                    this.f29882i = null;
                }
            }
            C1227w c1227w = this.f29887n;
            if (c1227w != null) {
                c1227w.a();
                this.f29887n = null;
            }
            c cVar = this.f29888o;
            if (cVar != null) {
                this.f29883j.unregisterReceiver(cVar);
                this.f29888o = null;
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01bc A[Catch: all -> 0x0151, TRY_LEAVE, TryCatch #0 {all -> 0x0151, blocks: (B:55:0x0127, B:56:0x012d, B:58:0x0134, B:60:0x0138, B:62:0x014c, B:67:0x0158, B:69:0x0165, B:71:0x01b4, B:73:0x01bc), top: B:113:0x0127 }] */
    /* JADX WARN: Type inference failed for: r1v11, types: [long] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r1v29, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.E.c():void");
    }

    public HttpURLConnection a(Uri uri, long j2) throws NoSuchAlgorithmException, IOException, KeyManagementException {
        HttpURLConnection httpURLConnection;
        if (uri != null && TextUtils.isEmpty(uri.toString())) {
            if (C1166c.c().a(uri.toString())) {
                throw new G(0, "url is fail");
            }
        }
        URL url = new URL(uri.toString());
        if ("https".equals(uri.getScheme())) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
            SSLContext sSLContextA = a();
            httpURLConnection = httpsURLConnection;
            if (sSLContextA != null) {
                httpsURLConnection.setSSLSocketFactory(sSLContextA.getSocketFactory());
                httpURLConnection = httpsURLConnection;
            }
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        }
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        if (j2 > 0) {
            httpURLConnection.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
        }
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode != 307) {
            switch (responseCode) {
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return httpURLConnection;
            }
        }
        if (this.f29889p.decrementAndGet() < 0) {
            throw new G(responseCode, "redirects too many times");
        }
        String headerField = httpURLConnection.getHeaderField("Location");
        httpURLConnection.disconnect();
        if (TextUtils.isEmpty(headerField) || C1166c.c().b(headerField)) {
            throw new G(responseCode, "redirects too many times");
        }
        return a(Uri.parse(headerField), j2);
    }
}
