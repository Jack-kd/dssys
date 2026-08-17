package com.ubix.ssp.ad.e.b0.h;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ubix.ssp.ad.e.a0.u;
import java.io.File;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
final class g {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f46715a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    private final String f46716b;

    /* renamed from: c, reason: collision with root package name */
    private volatile e f46717c;

    /* renamed from: d, reason: collision with root package name */
    private final List<b> f46718d;

    /* renamed from: e, reason: collision with root package name */
    private final b f46719e;

    /* renamed from: f, reason: collision with root package name */
    private final c f46720f;

    public static final class a extends Handler implements b {

        /* renamed from: a, reason: collision with root package name */
        private final String f46721a;

        /* renamed from: b, reason: collision with root package name */
        private final List<b> f46722b;

        public a(String str, List<b> list) {
            super(Looper.getMainLooper());
            this.f46721a = str;
            this.f46722b = list;
        }

        @Override // com.ubix.ssp.ad.e.b0.h.b
        public void a(File file, String str, int i2) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = file;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator<b> it = this.f46722b.iterator();
            while (it.hasNext()) {
                it.next().a((File) message.obj, this.f46721a, message.arg1);
            }
        }
    }

    public g(String str, c cVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f46718d = copyOnWriteArrayList;
        this.f46716b = (String) l.a(str);
        this.f46720f = (c) l.a(cVar);
        this.f46719e = new a(str, copyOnWriteArrayList);
    }

    private synchronized void a() {
        if (this.f46715a.decrementAndGet() <= 0) {
            this.f46717c.g();
            this.f46717c = null;
        }
    }

    private e b() {
        String str = this.f46716b;
        c cVar = this.f46720f;
        e eVar = new e(new h(str, cVar.f46687d, cVar.f46688e), new com.ubix.ssp.ad.e.b0.h.s.b(this.f46720f.a(this.f46716b), this.f46720f.f46686c));
        eVar.a(this.f46719e);
        return eVar;
    }

    private synchronized void c() {
        try {
            this.f46717c = this.f46717c == null ? b() : this.f46717c;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(b bVar) {
        this.f46718d.add(bVar);
        u.b("add onCacheAvailable" + this.f46718d);
    }

    public void b(b bVar) {
        this.f46718d.remove(bVar);
    }

    public void a(d dVar, Socket socket) {
        c();
        try {
            this.f46715a.incrementAndGet();
            this.f46717c.a(dVar, socket);
        } finally {
            a();
        }
    }
}
