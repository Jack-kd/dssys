package com.octopus.ad.internal.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
final class i {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f34686a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    private final String f34687b;

    /* renamed from: c, reason: collision with root package name */
    private volatile g f34688c;

    /* renamed from: d, reason: collision with root package name */
    private final List<b> f34689d;

    /* renamed from: e, reason: collision with root package name */
    private final b f34690e;

    /* renamed from: f, reason: collision with root package name */
    private final c f34691f;

    public static final class a extends Handler implements b {

        /* renamed from: a, reason: collision with root package name */
        private final String f34692a;

        /* renamed from: b, reason: collision with root package name */
        private final List<b> f34693b;

        public a(String str, List<b> list) {
            super(Looper.getMainLooper());
            this.f34692a = str;
            this.f34693b = list;
        }

        @Override // com.octopus.ad.internal.d.b
        public void a(File file, String str, int i2) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = file;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator<b> it = this.f34693b.iterator();
            while (it.hasNext()) {
                it.next().a((File) message.obj, this.f34692a, message.arg1);
            }
        }
    }

    public i(String str, c cVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f34689d = copyOnWriteArrayList;
        this.f34687b = (String) n.a(str);
        this.f34691f = (c) n.a(cVar);
        this.f34690e = new a(str, copyOnWriteArrayList);
    }

    private synchronized void b() throws p {
        try {
            this.f34688c = this.f34688c == null ? d() : this.f34688c;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void c() {
        if (this.f34686a.decrementAndGet() <= 0) {
            this.f34688c.a();
            this.f34688c = null;
        }
    }

    private g d() throws p {
        String str = this.f34687b;
        c cVar = this.f34691f;
        g gVar = new g(new j(str, cVar.f34658d, cVar.f34659e), new com.octopus.ad.internal.d.a.b(this.f34691f.a(this.f34687b), this.f34691f.f34657c));
        gVar.a(this.f34690e);
        return gVar;
    }

    public void a(e eVar, Socket socket) throws IOException, p {
        b();
        try {
            this.f34686a.incrementAndGet();
            this.f34688c.a(eVar, socket);
        } finally {
            c();
        }
    }

    public void b(b bVar) {
        this.f34689d.remove(bVar);
    }

    public void a(b bVar) {
        this.f34689d.add(bVar);
    }

    public int a() {
        return this.f34686a.get();
    }
}
