package com.fl.saas;

import android.content.Context;
import android.net.Uri;
import com.fl.saas.adx.util.LogcatUtil;
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

/* loaded from: classes3.dex */
public class V {

    /* renamed from: a, reason: collision with root package name */
    private final Object f30069a;

    /* renamed from: b, reason: collision with root package name */
    private final ExecutorService f30070b;

    /* renamed from: c, reason: collision with root package name */
    private final Map f30071c;

    /* renamed from: d, reason: collision with root package name */
    private final ServerSocket f30072d;

    /* renamed from: e, reason: collision with root package name */
    private final int f30073e;

    /* renamed from: f, reason: collision with root package name */
    private final Thread f30074f;

    /* renamed from: g, reason: collision with root package name */
    private final C1233y f30075g;

    /* renamed from: h, reason: collision with root package name */
    private final C1219t0 f30076h;

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private File f30077a;

        /* renamed from: d, reason: collision with root package name */
        private X0 f30080d;

        /* renamed from: c, reason: collision with root package name */
        private D f30079c = new C1175e1(536870912);

        /* renamed from: b, reason: collision with root package name */
        private N f30078b = new C1186i0();

        /* renamed from: e, reason: collision with root package name */
        private Q f30081e = new H();

        public b(Context context) {
            this.f30080d = Y0.a(context);
            this.f30077a = Z0.b(context);
        }

        private C1233y b() {
            return new C1233y(this.f30077a, this.f30078b, this.f30079c, this.f30080d, this.f30081e);
        }

        public V a() {
            return new V(b());
        }

        public b a(File file) {
            this.f30077a = (File) AbstractC1228w0.a(file);
            return this;
        }

        public b a(Q q2) {
            this.f30081e = (Q) AbstractC1228w0.a(q2);
            return this;
        }

        public b a(long j2) {
            this.f30079c = new C1175e1(j2);
            return this;
        }
    }

    public final class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Socket f30082a;

        public c(Socket socket) {
            this.f30082a = socket;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            V.this.d(this.f30082a);
        }
    }

    public final class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final CountDownLatch f30084a;

        public d(CountDownLatch countDownLatch) {
            this.f30084a = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            this.f30084a.countDown();
            V.this.c();
        }
    }

    private V(C1233y c1233y) throws InterruptedException {
        this.f30069a = new Object();
        this.f30070b = Executors.newFixedThreadPool(8);
        this.f30071c = new ConcurrentHashMap();
        this.f30075g = (C1233y) AbstractC1228w0.a(c1233y);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.f30072d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f30073e = localPort;
            Z.a("127.0.0.1", localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new d(countDownLatch));
            this.f30074f = thread;
            thread.start();
            countDownLatch.await();
            this.f30076h = new C1219t0("127.0.0.1", localPort);
            LogcatUtil.d("Proxy cache server started. Is it alive? " + b());
        } catch (IOException | InterruptedException e2) {
            this.f30070b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e2);
        }
    }

    private void b(Socket socket) throws IOException {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
            LogcatUtil.d("Releasing input stream… Socket is closed by client.");
        } catch (IOException e2) {
            a(new C1237z0("Error closing socket input stream", e2));
        }
    }

    private void c(Socket socket) throws IOException {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException e2) {
            LogcatUtil.debug(e2);
        }
    }

    private void e(Socket socket) throws IOException {
        b(socket);
        c(socket);
        a(socket);
    }

    public boolean d(String str) {
        AbstractC1228w0.a(str, "Url can't be null!");
        return b(str).exists();
    }

    private File b(String str) {
        C1233y c1233y = this.f30075g;
        return new File(c1233y.f30705a, c1233y.f30706b.a(str));
    }

    private W c(String str) {
        W w2;
        synchronized (this.f30069a) {
            try {
                w2 = (W) this.f30071c.get(str);
                if (w2 == null) {
                    w2 = new W(str, this.f30075g);
                    this.f30071c.put(str, w2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return w2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Socket socket) throws IOException {
        StringBuilder sb;
        try {
            try {
                P pA = P.a(socket.getInputStream());
                LogcatUtil.d("Request to cache proxy:" + pA);
                String strB = A0.b(pA.f30014a);
                if (this.f30076h.a(strB)) {
                    this.f30076h.a(socket);
                } else {
                    c(strB).a(pA, socket);
                }
                e(socket);
                LogcatUtil.d("Opened connections: " + a());
            } catch (C1237z0 e2) {
                e = e2;
                a(new C1237z0("Error processing request", e));
                e(socket);
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(a());
                LogcatUtil.d(sb.toString());
            } catch (SocketException unused) {
                LogcatUtil.d("Closing socket… Socket is closed by client.");
                e(socket);
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(a());
                LogcatUtil.d(sb.toString());
            } catch (IOException e3) {
                e = e3;
                a(new C1237z0("Error processing request", e));
                e(socket);
                sb = new StringBuilder();
                sb.append("Opened connections: ");
                sb.append(a());
                LogcatUtil.d(sb.toString());
            }
        } catch (Throwable th) {
            e(socket);
            LogcatUtil.d("Opened connections: " + a());
            throw th;
        }
    }

    private String a(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", "127.0.0.1", Integer.valueOf(this.f30073e), A0.c(str));
    }

    private boolean b() {
        return this.f30076h.a(3, 70);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() throws IOException {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Socket socketAccept = this.f30072d.accept();
                LogcatUtil.d("Accept new socket " + socketAccept);
                this.f30070b.submit(new c(socketAccept));
            } catch (IOException e2) {
                a(new C1237z0("Error during waiting connection", e2));
                return;
            }
        }
    }

    private void a(Socket socket) throws IOException {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e2) {
            a(new C1237z0("Error closing socket", e2));
        }
    }

    private int a() {
        int iB;
        synchronized (this.f30069a) {
            try {
                Iterator it = this.f30071c.values().iterator();
                iB = 0;
                while (it.hasNext()) {
                    iB += ((W) it.next()).b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iB;
    }

    public String a(String str, boolean z2) {
        if (!z2 || !d(str)) {
            return b() ? a(str) : str;
        }
        File fileB = b(str);
        a(fileB);
        return Uri.fromFile(fileB).toString();
    }

    private void a(Throwable th) {
        LogcatUtil.debug(th);
    }

    private void a(File file) {
        try {
            this.f30075g.f30707c.a(file);
        } catch (IOException e2) {
            LogcatUtil.debug(e2);
        }
    }
}
