package com.octopus.ad.internal.d;

import android.content.Context;
import android.net.Uri;
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

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private final Object f34668a;

    /* renamed from: b, reason: collision with root package name */
    private final ExecutorService f34669b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, i> f34670c;

    /* renamed from: d, reason: collision with root package name */
    private final ServerSocket f34671d;

    /* renamed from: e, reason: collision with root package name */
    private final int f34672e;

    /* renamed from: f, reason: collision with root package name */
    private final Thread f34673f;

    /* renamed from: g, reason: collision with root package name */
    private final com.octopus.ad.internal.d.c f34674g;

    /* renamed from: h, reason: collision with root package name */
    private final m f34675h;

    /* renamed from: i, reason: collision with root package name */
    private String f34676i;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private File f34677a;

        /* renamed from: d, reason: collision with root package name */
        private com.octopus.ad.internal.d.b.c f34680d;

        /* renamed from: c, reason: collision with root package name */
        private com.octopus.ad.internal.d.a.a f34679c = new com.octopus.ad.internal.d.a.g(536870912);

        /* renamed from: b, reason: collision with root package name */
        private com.octopus.ad.internal.d.a.c f34678b = new com.octopus.ad.internal.d.a.f();

        /* renamed from: e, reason: collision with root package name */
        private f f34681e = new d();

        public a(Context context) {
            this.f34680d = com.octopus.ad.internal.d.b.d.a(context);
            this.f34677a = t.a(context);
        }

        private com.octopus.ad.internal.d.c b() {
            return new com.octopus.ad.internal.d.c(this.f34677a, this.f34678b, this.f34679c, this.f34680d, this.f34681e);
        }

        public a a(long j2) {
            this.f34679c = new com.octopus.ad.internal.d.a.g(j2);
            return this;
        }

        public h a() {
            return new h(b());
        }
    }

    public final class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final Socket f34683b;

        public b(Socket socket) {
            this.f34683b = socket;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            h.this.a(this.f34683b);
        }
    }

    public final class c implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final CountDownLatch f34685b;

        public c(CountDownLatch countDownLatch) {
            this.f34685b = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            this.f34685b.countDown();
            h.this.b();
        }
    }

    private String c(String str) {
        this.f34676i = str;
        return String.format(Locale.US, "http://%s:%d/%s", "127.0.0.1", Integer.valueOf(this.f34672e), q.b(str));
    }

    private File d(String str) {
        com.octopus.ad.internal.d.c cVar = this.f34674g;
        return new File(cVar.f34655a, cVar.f34656b.a(str));
    }

    private i e(String str) throws p {
        i iVar;
        synchronized (this.f34668a) {
            try {
                iVar = this.f34670c.get(str);
                if (iVar == null) {
                    iVar = new i(str, this.f34674g);
                    this.f34670c.put(str, iVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    public void b(com.octopus.ad.internal.d.b bVar, String str) {
        n.a(bVar, str);
        synchronized (this.f34668a) {
            try {
                e(str).b(bVar);
            } catch (p e2) {
                com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34581q, "Error registering cache listener", e2);
            }
        }
    }

    private h(com.octopus.ad.internal.d.c cVar) throws InterruptedException {
        this.f34668a = new Object();
        this.f34669b = Executors.newFixedThreadPool(8);
        this.f34670c = new ConcurrentHashMap();
        this.f34674g = (com.octopus.ad.internal.d.c) n.a(cVar);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.f34671d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f34672e = localPort;
            k.a("127.0.0.1", localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new c(countDownLatch));
            this.f34673f = thread;
            thread.start();
            countDownLatch.await();
            this.f34675h = new m("127.0.0.1", localPort);
            com.octopus.ad.internal.c.f.c(com.octopus.ad.internal.c.f.f34581q, "Proxy cache server started. Is it alive? " + a());
        } catch (Exception e2) {
            this.f34669b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e2);
        }
    }

    private int c() {
        int iA;
        synchronized (this.f34668a) {
            try {
                Iterator<i> it = this.f34670c.values().iterator();
                iA = 0;
                while (it.hasNext()) {
                    iA += it.next().a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iA;
    }

    public String a(String str) {
        return a(str, true);
    }

    private void d(Socket socket) throws IOException {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (Exception e2) {
            com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34581q, "Failed to close socket on proxy side: {}. It seems client have already closed connection.", e2);
        }
    }

    public String a(String str, boolean z2) {
        if (!z2 || !b(str)) {
            return a() ? c(str) : str;
        }
        File fileD = d(str);
        a(fileD);
        return Uri.fromFile(fileD).toString();
    }

    public boolean b(String str) {
        n.a(str, "Url can't be null!");
        return d(str).exists();
    }

    private void e(Socket socket) throws IOException {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (Exception e2) {
            a(new p("Error closing socket", e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() throws IOException {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Socket socketAccept = this.f34671d.accept();
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34581q, "Accept new socket " + socketAccept);
                this.f34669b.submit(new b(socketAccept));
            } catch (Exception e2) {
                a(new p("Error during waiting connection", e2));
                return;
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
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34581q, "Releasing input stream… Socket is closed by client.");
        } catch (Exception e2) {
            a(new p("Error closing socket input stream", e2));
        }
    }

    public void a(com.octopus.ad.internal.d.b bVar, String str) {
        n.a(bVar, str);
        synchronized (this.f34668a) {
            try {
                e(str).a(bVar);
            } catch (p e2) {
                com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34581q, "Error registering cache listener", e2);
            }
        }
    }

    private void b(Socket socket) throws IOException {
        c(socket);
        d(socket);
        e(socket);
    }

    private boolean a() {
        return this.f34675h.a(3, 70);
    }

    private void a(File file) {
        try {
            this.f34674g.f34657c.a(file);
        } catch (Exception e2) {
            com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34581q, "Error touching file " + file, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Socket socket) throws IOException {
        String str;
        StringBuilder sb;
        try {
            try {
                e eVarA = e.a(socket.getInputStream());
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34581q, "Request to cache proxy:" + eVarA);
                String strC = q.c(eVarA.f34662a);
                if (this.f34675h.a(strC)) {
                    this.f34675h.a(socket);
                } else if (strC.equals(this.f34676i)) {
                    e(strC).a(eVarA, socket);
                }
                b(socket);
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34581q, "Opened connections: " + c());
            } catch (p e2) {
                e = e2;
                a(new p("Error processing request", e));
                b(socket);
                str = com.octopus.ad.internal.c.f.f34581q;
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(c());
                com.octopus.ad.internal.c.f.b(str, sb.toString());
            } catch (SocketException unused) {
                com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34581q, "Closing socket… Socket is closed by client.");
                b(socket);
                str = com.octopus.ad.internal.c.f.f34581q;
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(c());
                com.octopus.ad.internal.c.f.b(str, sb.toString());
            } catch (IOException e3) {
                e = e3;
                a(new p("Error processing request", e));
                b(socket);
                str = com.octopus.ad.internal.c.f.f34581q;
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(c());
                com.octopus.ad.internal.c.f.b(str, sb.toString());
            }
        } catch (Throwable th) {
            b(socket);
            com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34581q, "Opened connections: " + c());
            throw th;
        }
    }

    private void a(Throwable th) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34581q, "HttpProxyCacheServer error", th);
    }
}
