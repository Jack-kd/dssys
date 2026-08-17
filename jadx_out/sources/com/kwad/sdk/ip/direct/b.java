package com.kwad.sdk.ip.direct;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.kwad.sdk.utils.by;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public final class b {
    private static Handler bgW = new Handler(Looper.getMainLooper());
    static int bhg = 80;
    static int port = 80;

    public static class a extends Thread {
        LinkedList bhi = new LinkedList();
        volatile boolean bhj = false;
        Selector bhh = Selector.open();

        public a() {
            setName("Connector");
        }

        private void Rw() {
            synchronized (this.bhi) {
                while (this.bhi.size() > 0) {
                    try {
                        C0626b c0626b = (C0626b) this.bhi.removeFirst();
                        try {
                            c0626b.bhn.register(this.bhh, 8, c0626b);
                        } catch (Throwable th) {
                            c0626b.bhn.close();
                            c0626b.bho = th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        private void Rx() {
            Iterator<SelectionKey> it = this.bhh.selectedKeys().iterator();
            while (it.hasNext()) {
                SelectionKey next = it.next();
                it.remove();
                C0626b c0626b = (C0626b) next.attachment();
                SocketChannel socketChannel = (SocketChannel) next.channel();
                try {
                    if (socketChannel.finishConnect()) {
                        next.cancel();
                        c0626b.bhs = SystemClock.elapsedRealtime();
                        socketChannel.close();
                    }
                } catch (Throwable th) {
                    by.c(socketChannel);
                    c0626b.bho = th;
                }
            }
        }

        public final void a(C0626b c0626b) {
            final SocketChannel socketChannelOpen;
            Handler handler;
            Runnable runnable;
            try {
                try {
                    socketChannelOpen = SocketChannel.open();
                } catch (Throwable th) {
                    th = th;
                    socketChannelOpen = null;
                }
                try {
                    socketChannelOpen.configureBlocking(false);
                    boolean zConnect = socketChannelOpen.connect(c0626b.bhm);
                    c0626b.bhn = socketChannelOpen;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    c0626b.bhr = jElapsedRealtime;
                    if (zConnect) {
                        c0626b.bhs = jElapsedRealtime;
                        by.c(socketChannelOpen);
                    } else {
                        synchronized (this.bhi) {
                            this.bhi.add(c0626b);
                        }
                        Selector selector = this.bhh;
                        if (selector != null) {
                            try {
                                selector.wakeup();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    handler = b.bgW;
                    runnable = new Runnable() { // from class: com.kwad.sdk.ip.direct.b.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            by.c(socketChannelOpen);
                        }
                    };
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        by.c(socketChannelOpen);
                        c0626b.bho = th;
                        handler = b.bgW;
                        runnable = new Runnable() { // from class: com.kwad.sdk.ip.direct.b.a.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                by.c(socketChannelOpen);
                            }
                        };
                        handler.postDelayed(runnable, c0626b.bhq);
                    } catch (Throwable th3) {
                        try {
                            b.bgW.postDelayed(new Runnable() { // from class: com.kwad.sdk.ip.direct.b.a.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    by.c(socketChannelOpen);
                                }
                            }, c0626b.bhq);
                        } catch (Throwable unused2) {
                        }
                        throw th3;
                    }
                }
                handler.postDelayed(runnable, c0626b.bhq);
            } catch (Throwable unused3) {
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            while (true) {
                try {
                    if (this.bhh.select() > 0) {
                        Rx();
                    }
                    Rw();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (this.bhj) {
                    Selector selector = this.bhh;
                    if (selector != null) {
                        try {
                            selector.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    return;
                }
                continue;
            }
        }

        public final void shutdown() {
            this.bhj = true;
            Selector selector = this.bhh;
            if (selector != null) {
                try {
                    selector.wakeup();
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* renamed from: com.kwad.sdk.ip.direct.b$b, reason: collision with other inner class name */
    public static class C0626b {
        InetSocketAddress bhm;
        SocketChannel bhn;
        Throwable bho;
        private float bhp;
        long bhq;
        long bhr;
        long bhs = 0;
        boolean bht = false;
        private boolean success;

        public C0626b(String str) {
            try {
                this.bhm = new InetSocketAddress(InetAddress.getByName(str), b.port);
            } catch (Throwable th) {
                this.bho = th;
            }
        }

        public final void Ry() {
            String string;
            if (this.bhs != 0) {
                string = Long.toString(this.bhs - this.bhr) + "ms";
                this.bhp = this.bhs - this.bhr;
                this.success = true;
            } else {
                Throwable th = this.bho;
                if (th != null) {
                    string = th.toString();
                    this.success = false;
                } else {
                    this.success = false;
                    string = "Timed out";
                }
            }
            com.kwad.sdk.core.d.c.d("IpDirect_Ping", this.bhm + " : " + string);
            this.bht = true;
        }
    }

    public static c f(String str, long j2) {
        a aVar;
        long j3 = j2 / 5;
        com.kwad.sdk.core.d.c.d("IpDirect_Ping", "ping:" + str);
        c cVar = new c(str);
        try {
            aVar = new a();
        } catch (Throwable th) {
            th.printStackTrace();
            aVar = null;
        }
        if (aVar == null) {
            return cVar;
        }
        try {
            aVar.start();
            LinkedList linkedList = new LinkedList();
            for (int i2 = 0; i2 < cVar.Rz(); i2++) {
                C0626b c0626b = new C0626b(str);
                c0626b.bhq = j2 + j3;
                linkedList.add(c0626b);
                try {
                    aVar.a(c0626b);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            try {
                Thread.sleep(j2 + j3);
                try {
                    aVar.shutdown();
                    aVar.join();
                    Iterator it = linkedList.iterator();
                    boolean z2 = true;
                    float f2 = 0.0f;
                    while (it.hasNext()) {
                        C0626b c0626b2 = (C0626b) it.next();
                        c0626b2.Ry();
                        z2 &= c0626b2.success;
                        cVar.cb(z2);
                        f2 += c0626b2.bhp;
                    }
                    com.kwad.sdk.core.d.c.d("IpDirect_Ping", "sum:" + f2 + "*size:" + linkedList.size());
                    cVar.r(f2 / ((float) linkedList.size()));
                    return cVar;
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    return cVar;
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
                return cVar;
            }
        } catch (Throwable th5) {
            th5.printStackTrace();
            return cVar;
        }
    }
}
