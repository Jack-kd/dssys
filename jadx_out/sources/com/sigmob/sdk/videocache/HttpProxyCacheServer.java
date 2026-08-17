package com.sigmob.sdk.videocache;

import android.content.Context;
import android.net.Uri;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class HttpProxyCacheServer {

    /* renamed from: a, reason: collision with root package name */
    private static final String f38861a = "127.0.0.1";

    /* renamed from: b, reason: collision with root package name */
    private final Object f38862b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f38863c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, h> f38864d;

    /* renamed from: e, reason: collision with root package name */
    private final ServerSocket f38865e;

    /* renamed from: f, reason: collision with root package name */
    private final int f38866f;

    /* renamed from: g, reason: collision with root package name */
    private final Thread f38867g;

    /* renamed from: h, reason: collision with root package name */
    private final e f38868h;

    /* renamed from: i, reason: collision with root package name */
    private final m f38869i;

    /* renamed from: j, reason: collision with root package name */
    private InetAddress f38870j;

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        private static final long f38871a = 536870912;

        /* renamed from: b, reason: collision with root package name */
        private File f38872b;

        /* renamed from: e, reason: collision with root package name */
        private com.sigmob.sdk.videocache.sourcestorage.c f38875e;

        /* renamed from: d, reason: collision with root package name */
        private com.sigmob.sdk.videocache.file.a f38874d = new com.sigmob.sdk.videocache.file.h(f38871a);

        /* renamed from: c, reason: collision with root package name */
        private com.sigmob.sdk.videocache.file.c f38873c = new com.sigmob.sdk.videocache.file.f();

        /* renamed from: f, reason: collision with root package name */
        private com.sigmob.sdk.videocache.headers.b f38876f = new com.sigmob.sdk.videocache.headers.a();

        public Builder(Context context) {
            this.f38875e = com.sigmob.sdk.videocache.sourcestorage.d.a(context);
            this.f38872b = v.a(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e a() {
            return new e(this.f38872b, this.f38873c, this.f38874d, this.f38875e, this.f38876f);
        }

        public HttpProxyCacheServer build() {
            return new HttpProxyCacheServer(a());
        }

        public Builder cacheDirectory(File file) {
            this.f38872b = (File) n.a(file);
            return this;
        }

        public Builder diskUsage(com.sigmob.sdk.videocache.file.a aVar) {
            this.f38874d = (com.sigmob.sdk.videocache.file.a) n.a(aVar);
            return this;
        }

        public Builder fileNameGenerator(com.sigmob.sdk.videocache.file.c cVar) {
            this.f38873c = (com.sigmob.sdk.videocache.file.c) n.a(cVar);
            return this;
        }

        public Builder headerInjector(com.sigmob.sdk.videocache.headers.b bVar) {
            this.f38876f = (com.sigmob.sdk.videocache.headers.b) n.a(bVar);
            return this;
        }

        public Builder maxCacheFilesCount(int i2) {
            this.f38874d = new com.sigmob.sdk.videocache.file.g(i2);
            return this;
        }

        public Builder maxCacheSize(long j2) {
            this.f38874d = new com.sigmob.sdk.videocache.file.h(j2);
            return this;
        }
    }

    public final class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final Socket f38878b;

        public a(Socket socket) {
            this.f38878b = socket;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            HttpProxyCacheServer.this.a(this.f38878b);
        }
    }

    public final class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final CountDownLatch f38880b;

        public b(CountDownLatch countDownLatch) {
            this.f38880b = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            this.f38880b.countDown();
            HttpProxyCacheServer.this.c();
        }
    }

    public HttpProxyCacheServer(Context context) {
        this(new Builder(context).a());
    }

    private String a(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", f38861a, Integer.valueOf(this.f38866f), q.b(str));
    }

    private h b(String str) throws p {
        h hVar;
        synchronized (this.f38862b) {
            try {
                hVar = this.f38864d.get(str);
                if (hVar == null) {
                    hVar = new h(str, this.f38868h);
                    this.f38864d.put(str, hVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() throws IOException {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.f38863c.submit(new a(this.f38865e.accept()));
            } catch (IOException e2) {
                a(new p("Error during waiting connection", e2));
                return;
            }
        }
    }

    private int d() {
        int iB;
        synchronized (this.f38862b) {
            try {
                Iterator<h> it = this.f38864d.values().iterator();
                iB = 0;
                while (it.hasNext()) {
                    iB += it.next().b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iB;
    }

    private void e(Socket socket) throws IOException {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException unused) {
        }
    }

    public File getCacheFile(String str) {
        e eVar = this.f38868h;
        return new File(eVar.f38885a, eVar.f38886b.a(str));
    }

    public String getProxyUrl(String str) {
        return getProxyUrl(StringUtil.getUrl(str), true);
    }

    public boolean isCached(String str) {
        n.a(str, "Url can't be null!");
        return getCacheFile(str).exists();
    }

    public void registerCacheListener(d dVar, String str) {
        n.a(dVar, str);
        synchronized (this.f38862b) {
            try {
                b(str).a(dVar);
            } catch (p e2) {
                SigmobLog.w("Error registering cache listener", e2);
            }
        }
    }

    public void shutdown() throws IOException {
        SigmobLog.i("Shutdown proxy server");
        b();
        this.f38868h.f38888d.a();
        this.f38867g.interrupt();
        try {
            if (this.f38865e.isClosed()) {
                return;
            }
            this.f38865e.close();
        } catch (IOException e2) {
            a(new p("Error shutting down proxy server", e2));
        }
    }

    public void stopCacheAndShutdown(String str) {
        synchronized (this.f38862b) {
            try {
                h hVar = this.f38864d.get(str);
                if (hVar != null) {
                    hVar.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterCacheListener(d dVar) {
        n.a(dVar);
        synchronized (this.f38862b) {
            try {
                Iterator<h> it = this.f38864d.values().iterator();
                while (it.hasNext()) {
                    it.next().b(dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private HttpProxyCacheServer(e eVar) throws InterruptedException {
        this.f38862b = new Object();
        this.f38863c = ThreadPoolFactory.getFixIOExecutor();
        this.f38864d = new ConcurrentHashMap();
        this.f38868h = (e) n.a(eVar);
        try {
            this.f38870j = InetAddress.getByName(f38861a);
            ServerSocket serverSocket = new ServerSocket(0, 8, this.f38870j);
            this.f38865e = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f38866f = localPort;
            j.a(f38861a, localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            SigmobLog.d("Thread create ,current thread num :" + Thread.activeCount());
            Thread thread = new Thread(new b(countDownLatch));
            this.f38867g = thread;
            thread.start();
            countDownLatch.await();
            this.f38869i = new m(f38861a, localPort);
        } catch (IOException | InterruptedException e2) {
            this.f38863c.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e2);
        }
    }

    private void b() {
        synchronized (this.f38862b) {
            try {
                Iterator<h> it = this.f38864d.values().iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                this.f38864d.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c(Socket socket) throws IOException {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
            SigmobLog.d("Releasing input stream… Socket is closed by client.");
        } catch (IOException unused2) {
        }
    }

    private void d(Socket socket) throws IOException {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException unused) {
        }
    }

    public String getProxyUrl(String str, boolean z2) {
        if (!z2 || !isCached(str)) {
            return a() ? a(str) : str;
        }
        File cacheFile = getCacheFile(str);
        a(cacheFile);
        return Uri.fromFile(cacheFile).toString();
    }

    public void unregisterCacheListener(d dVar, String str) {
        n.a(dVar, str);
        synchronized (this.f38862b) {
            try {
                b(str).b(dVar);
            } catch (p e2) {
                SigmobLog.w("Error registering cache listener", e2);
            }
        }
    }

    private void b(Socket socket) throws IOException {
        c(socket);
        d(socket);
        e(socket);
    }

    private void a(File file) {
        try {
            this.f38868h.f38887c.a(file);
        } catch (IOException e2) {
            SigmobLog.e("Error touching file " + file, e2);
        }
    }

    private void a(Throwable th) {
        SigmobLog.e("HttpProxyCacheServer error", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Socket socket) throws IOException {
        StringBuilder sb;
        try {
            try {
                f fVarA = f.a(socket.getInputStream());
                SigmobLog.d("Request to cache proxy:" + fVarA);
                String strC = q.c(fVarA.f38892a);
                if (this.f38869i.a(strC)) {
                    this.f38869i.a(socket);
                } else {
                    b(strC).a(fVarA, socket);
                }
                b(socket);
                SigmobLog.d("Opened connections: " + d());
            } catch (p e2) {
                e = e2;
                a(new p("Error processing request", e));
                b(socket);
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(d());
                SigmobLog.d(sb.toString());
            } catch (SocketException unused) {
                SigmobLog.d("Closing socket… Socket is closed by client.");
                b(socket);
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(d());
                SigmobLog.d(sb.toString());
            } catch (IOException e3) {
                e = e3;
                a(new p("Error processing request", e));
                b(socket);
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(d());
                SigmobLog.d(sb.toString());
            }
        } catch (Throwable th) {
            b(socket);
            SigmobLog.d("Opened connections: " + d());
            throw th;
        }
    }

    private boolean a() {
        return this.f38869i.a(1, 70);
    }
}
