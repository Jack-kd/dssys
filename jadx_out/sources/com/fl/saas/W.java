package com.fl.saas;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
final class W {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f30087a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    private final String f30088b;

    /* renamed from: c, reason: collision with root package name */
    private volatile U f30089c;

    /* renamed from: d, reason: collision with root package name */
    private final List f30090d;

    /* renamed from: e, reason: collision with root package name */
    private final InterfaceC1209q f30091e;

    /* renamed from: f, reason: collision with root package name */
    private final C1233y f30092f;

    public static final class a extends Handler implements InterfaceC1209q {

        /* renamed from: a, reason: collision with root package name */
        private final String f30093a;

        /* renamed from: b, reason: collision with root package name */
        private final List f30094b;

        public a(String str, List list) {
            super(Looper.getMainLooper());
            this.f30093a = str;
            this.f30094b = list;
        }

        @Override // com.fl.saas.InterfaceC1209q
        public void a(File file, String str, int i2) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = file;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator it = this.f30094b.iterator();
            while (it.hasNext()) {
                ((InterfaceC1209q) it.next()).a((File) message.obj, this.f30093a, message.arg1);
            }
        }
    }

    public W(String str, C1233y c1233y) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f30090d = copyOnWriteArrayList;
        this.f30088b = (String) AbstractC1228w0.a(str);
        this.f30092f = (C1233y) AbstractC1228w0.a(c1233y);
        this.f30091e = new a(str, copyOnWriteArrayList);
    }

    private synchronized void a() {
        if (this.f30087a.decrementAndGet() <= 0) {
            this.f30089c.g();
            this.f30089c = null;
        }
    }

    private U c() {
        String str = this.f30088b;
        C1233y c1233y = this.f30092f;
        U u2 = new U(new X(str, c1233y.f30708d, c1233y.f30709e), new L(this.f30092f.a(this.f30088b), this.f30092f.f30707c));
        u2.a(this.f30091e);
        return u2;
    }

    private synchronized void d() {
        try {
            this.f30089c = this.f30089c == null ? c() : this.f30089c;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int b() {
        return this.f30087a.get();
    }

    public void a(P p2, Socket socket) {
        d();
        try {
            this.f30087a.incrementAndGet();
            this.f30089c.a(p2, socket);
        } finally {
            a();
        }
    }
}
