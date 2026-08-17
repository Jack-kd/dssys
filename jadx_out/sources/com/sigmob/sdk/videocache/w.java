package com.sigmob.sdk.videocache;

import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    private static w f38972a;

    /* renamed from: b, reason: collision with root package name */
    private final ExecutorService f38973b = Executors.newFixedThreadPool(8);

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, WeakReference<a>> f38974c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private Context f38975d;

    public static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final String f38976a;

        /* renamed from: b, reason: collision with root package name */
        private final AtomicBoolean f38977b = new AtomicBoolean(false);

        public a(String str) {
            this.f38976a = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:68:? A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(java.lang.String r5) throws java.lang.Throwable {
            /*
                r4 = this;
                r0 = 0
                java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L65
                r1.<init>(r5)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L65
                java.net.URLConnection r5 = r1.openConnection()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L65
                java.net.HttpURLConnection r5 = (java.net.HttpURLConnection) r5     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L65
                r1 = 5000(0x1388, float:7.006E-42)
                r5.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                r5.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                r5.connect()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                r1 = 1024(0x400, float:1.435E-42)
                byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                java.io.InputStream r0 = r5.getInputStream()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
            L1f:
                int r2 = r0.read(r1)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                r3 = -1
                if (r2 == r3) goto L42
                java.util.concurrent.atomic.AtomicBoolean r2 = r4.f38977b     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                boolean r2 = r2.get()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                if (r2 == 0) goto L1f
                java.lang.String r1 = "cancelPreLoadVideo，取消网络请求，成功（正在下载数据），url = %s"
                java.lang.String r2 = r4.f38976a     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                java.lang.Object[] r2 = new java.lang.Object[]{r2}     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                com.czhj.sdk.logger.SigmobLog.d(r1)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                goto L42
            L3e:
                r1 = move-exception
                goto L88
            L40:
                r1 = move-exception
                goto L67
            L42:
                java.lang.String r1 = "preloadVideo，网络文件，成功，url = %s"
                java.lang.String r2 = r4.f38976a     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                java.lang.Object[] r2 = new java.lang.Object[]{r2}     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                com.czhj.sdk.logger.SigmobLog.i(r1)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L40
                r0.close()     // Catch: java.lang.Exception -> L55
                goto L59
            L55:
                r0 = move-exception
                r0.printStackTrace()
            L59:
                r5.disconnect()     // Catch: java.lang.Exception -> L5d
                goto L87
            L5d:
                r5 = move-exception
                r5.printStackTrace()
                goto L87
            L62:
                r1 = move-exception
                r5 = r0
                goto L88
            L65:
                r1 = move-exception
                r5 = r0
            L67:
                java.lang.String r2 = "preloadVideo，网络文件，失败，msg = %s，url = %s"
                java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L3e
                java.lang.String r3 = r4.f38976a     // Catch: java.lang.Throwable -> L3e
                java.lang.Object[] r1 = new java.lang.Object[]{r1, r3}     // Catch: java.lang.Throwable -> L3e
                java.lang.String r1 = java.lang.String.format(r2, r1)     // Catch: java.lang.Throwable -> L3e
                com.czhj.sdk.logger.SigmobLog.e(r1)     // Catch: java.lang.Throwable -> L3e
                if (r0 == 0) goto L84
                r0.close()     // Catch: java.lang.Exception -> L80
                goto L84
            L80:
                r0 = move-exception
                r0.printStackTrace()
            L84:
                if (r5 == 0) goto L87
                goto L59
            L87:
                return
            L88:
                if (r0 == 0) goto L92
                r0.close()     // Catch: java.lang.Exception -> L8e
                goto L92
            L8e:
                r0 = move-exception
                r0.printStackTrace()
            L92:
                if (r5 == 0) goto L9c
                r5.disconnect()     // Catch: java.lang.Exception -> L98
                goto L9c
            L98:
                r5 = move-exception
                r5.printStackTrace()
            L9c:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videocache.w.a.a(java.lang.String):void");
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            if (this.f38977b.get()) {
                SigmobLog.i(String.format("cancelPreLoadVideo，取消网络请求，成功（未下载数据），url = %s", this.f38976a));
            } else {
                a(this.f38976a);
            }
        }

        public void a(boolean z2) {
            this.f38977b.set(z2);
        }
    }

    private w(Context context) {
        this.f38975d = context;
    }

    public static synchronized w a(Context context) {
        try {
            if (f38972a == null && context != null) {
                f38972a = new w(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f38972a;
    }

    public void b(String str) {
        WeakReference<a> weakReference;
        a aVar;
        SigmobLog.d(String.format("cancelPreLoadVideo，ulr = %s", str));
        if (TextUtils.isEmpty(str) || (weakReference = this.f38974c.get(str)) == null || (aVar = weakReference.get()) == null) {
            return;
        }
        SigmobLog.d(String.format("cancelPreLoadVideo，取消网络请求，ulr = %s", str));
        aVar.a(true);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String url = StringUtil.getUrl(str);
        if (!url.startsWith("http")) {
            SigmobLog.d(String.format("preloadVideo，本地文件：ulr = %s", url));
            return;
        }
        SigmobLog.d(String.format("preloadVideo，网络文件，开始下载：ulr = %s", url));
        a aVar = new a(url);
        this.f38974c.put(url, new WeakReference<>(aVar));
        this.f38973b.execute(aVar);
    }
}
