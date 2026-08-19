package com.ubix.ssp.ad.e.b0.h;

import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import com.ubix.ssp.ad.e.a0.u;
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
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes5.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final Object f46697a;

    /* renamed from: b, reason: collision with root package name */
    private final ExecutorService f46698b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, g> f46699c;

    /* renamed from: d, reason: collision with root package name */
    private final ServerSocket f46700d;

    /* renamed from: e, reason: collision with root package name */
    private final int f46701e;

    /* renamed from: f, reason: collision with root package name */
    private final Thread f46702f;

    /* renamed from: g, reason: collision with root package name */
    private final com.ubix.ssp.ad.e.b0.h.c f46703g;

    /* renamed from: h, reason: collision with root package name */
    private final k f46704h;

    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.ProxyCacheServerThread");
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private File f46706a;

        /* renamed from: d, reason: collision with root package name */
        private com.ubix.ssp.ad.e.b0.h.u.c f46709d;

        /* renamed from: c, reason: collision with root package name */
        private com.ubix.ssp.ad.e.b0.h.s.a f46708c = new com.ubix.ssp.ad.e.b0.h.s.g(536870912);

        /* renamed from: b, reason: collision with root package name */
        private com.ubix.ssp.ad.e.b0.h.s.c f46707b = new com.ubix.ssp.ad.e.b0.h.s.f();

        /* renamed from: e, reason: collision with root package name */
        private com.ubix.ssp.ad.e.b0.h.t.b f46710e = new com.ubix.ssp.ad.e.b0.h.t.a();

        public b(Context context) {
            this.f46709d = com.ubix.ssp.ad.e.b0.h.u.d.a(context);
            this.f46706a = r.a(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.ubix.ssp.ad.e.b0.h.c b() {
            return new com.ubix.ssp.ad.e.b0.h.c(this.f46706a, this.f46707b, this.f46708c, this.f46709d, this.f46710e);
        }

        public b a(com.ubix.ssp.ad.e.b0.h.s.c cVar) {
            this.f46707b = (com.ubix.ssp.ad.e.b0.h.s.c) l.a(cVar);
            return this;
        }

        public b a(File file) {
            this.f46706a = (File) l.a(file);
            return this;
        }

        public f a() {
            return new f(b(), null);
        }
    }

    public final class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Socket f46711a;

        public c(Socket socket) {
            this.f46711a = socket;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            f.this.d(this.f46711a);
        }
    }

    public final class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final CountDownLatch f46713a;

        public d(CountDownLatch countDownLatch) {
            this.f46713a = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            this.f46713a.countDown();
            f.this.c();
        }
    }

    public f(Context context) {
        this(new b(context).b());
    }

    private String a(String str) {
        return String.format(Locale.US, new String(com.ubix.ssp.ad.e.a0.n.a().a("aHR0cDovLyVzOiVkLyVz")), "127.0.0.1", Integer.valueOf(this.f46701e), o.c(str));
    }

    private File b(String str) {
        com.ubix.ssp.ad.e.b0.h.c cVar = this.f46703g;
        return new File(cVar.f46684a, cVar.f46685b.a(str));
    }

    private g c(String str) {
        g gVar;
        synchronized (this.f46697a) {
            try {
                gVar = this.f46699c.get(str);
                if (gVar == null) {
                    gVar = new g(str, this.f46703g);
                    this.f46699c.put(str, gVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    private void e(Socket socket) throws IOException {
        b(socket);
        c(socket);
        a(socket);
    }

    public String d(String str) {
        return a(str, true);
    }

    private f(com.ubix.ssp.ad.e.b0.h.c cVar) throws InterruptedException {
        this.f46697a = new Object();
        this.f46698b = Executors.newFixedThreadPool(8, new a());
        this.f46699c = new ConcurrentHashMap();
        this.f46703g = (com.ubix.ssp.ad.e.b0.h.c) l.a(cVar);
        try {
            if (TrafficStats.getThreadStatsTag() == -1) {
                TrafficStats.setThreadStatsTag(1);
            }
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.f46700d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f46701e = localPort;
            i.a("127.0.0.1", localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new d(countDownLatch));
            this.f46702f = thread;
            thread.start();
            countDownLatch.await();
            this.f46704h = new k("127.0.0.1", localPort);
        } catch (IOException e2) {
            e = e2;
            this.f46698b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e);
        } catch (InterruptedException e3) {
            e = e3;
            this.f46698b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e);
        }
    }

    private void b(Socket socket) throws IOException {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
        } catch (IOException e2) {
            a(new n("Error closing socket input stream", e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() throws IOException {
        try {
            if (TrafficStats.getThreadStatsTag() == -1) {
                TrafficStats.setThreadStatsTag(1);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("waitForRequest ");
            sb.append(!Thread.currentThread().isInterrupted());
            u.b(sb.toString());
            while (!Thread.currentThread().isInterrupted()) {
                this.f46698b.submit(new c(this.f46700d.accept()));
            }
        } catch (IOException e2) {
            a(new n("Error during waiting connection", e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Socket socket) throws IOException {
        try {
            try {
                com.ubix.ssp.ad.e.b0.h.d dVarA = com.ubix.ssp.ad.e.b0.h.d.a(socket.getInputStream());
                String strB = o.b(dVarA.f46691c);
                if (this.f46704h.a(strB)) {
                    this.f46704h.a(socket);
                } else {
                    c(strB).a(dVarA, socket);
                }
            } catch (n e2) {
                e = e2;
                a(new n("Error processing request", e));
            } catch (SocketException e3) {
                e3.printStackTrace();
            } catch (IOException e4) {
                e = e4;
                a(new n("Error processing request", e));
            } catch (RuntimeException e5) {
                e = e5;
                a(new n("Error processing request", e));
            }
            e(socket);
        } catch (Throwable th) {
            e(socket);
            throw th;
        }
    }

    public String a(String str, boolean z2) {
        if (!z2 || !e(str)) {
            return b() ? a(str) : str;
        }
        File fileB = b(str);
        a(fileB);
        return Uri.fromFile(fileB).toString();
    }

    public boolean e(String str) {
        l.a(str, "Url can't be null!");
        return b(str).exists();
    }

    public /* synthetic */ f(com.ubix.ssp.ad.e.b0.h.c cVar, a aVar) {
        this(cVar);
    }

    private boolean b() {
        return this.f46704h.a(3, 70);
    }

    private void c(Socket socket) throws IOException {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException unused) {
        }
    }

    public ExecutorService a() {
        return this.f46698b;
    }

    public void a(com.ubix.ssp.ad.e.b0.h.b bVar) {
        l.a(bVar);
        synchronized (this.f46697a) {
            try {
                Iterator<g> it = this.f46699c.values().iterator();
                while (it.hasNext()) {
                    it.next().b(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(com.ubix.ssp.ad.e.b0.h.b bVar, String str) {
        l.a(bVar, str);
        synchronized (this.f46697a) {
            try {
                c(str).a(bVar);
            } catch (n unused) {
            }
        }
    }

    private void a(File file) {
        try {
            this.f46703g.f46686c.a(file);
        } catch (IOException unused) {
        }
    }

    private void a(Throwable th) {
    }

    private void a(Socket socket) throws IOException {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e2) {
            a(new n("Error closing socket", e2));
        }
    }
}
