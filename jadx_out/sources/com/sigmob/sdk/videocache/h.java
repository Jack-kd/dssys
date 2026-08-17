package com.sigmob.sdk.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.czhj.sdk.logger.SigmobLog;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
final class h {

    /* renamed from: a, reason: collision with root package name */
    private static final int f38909a = 1;

    /* renamed from: b, reason: collision with root package name */
    private static final int f38910b = 2;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicInteger f38911c = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    private final String f38912d;

    /* renamed from: e, reason: collision with root package name */
    private volatile g f38913e;

    /* renamed from: f, reason: collision with root package name */
    private final List<d> f38914f;

    /* renamed from: g, reason: collision with root package name */
    private final d f38915g;

    /* renamed from: h, reason: collision with root package name */
    private final e f38916h;

    public static final class a extends Handler implements d {

        /* renamed from: a, reason: collision with root package name */
        private final String f38917a;

        /* renamed from: b, reason: collision with root package name */
        private final List<d> f38918b;

        public a(String str, List<d> list) {
            super(Looper.getMainLooper());
            this.f38917a = str;
            this.f38918b = list;
        }

        @Override // com.sigmob.sdk.videocache.d
        public void a(File file, String str, int i2) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = file;
            messageObtainMessage.what = 1;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            for (d dVar : this.f38918b) {
                int i2 = message.what;
                if (i2 == 1) {
                    dVar.a((File) message.obj, this.f38917a, message.arg1);
                } else if (i2 == 2) {
                    dVar.a(this.f38917a, (Throwable) message.obj);
                }
            }
        }

        @Override // com.sigmob.sdk.videocache.d
        public void a(String str, Throwable th) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.obj = th;
            messageObtainMessage.what = 2;
            sendMessage(messageObtainMessage);
        }
    }

    public h(String str, e eVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f38914f = copyOnWriteArrayList;
        this.f38912d = (String) n.a(str);
        this.f38916h = (e) n.a(eVar);
        this.f38915g = new a(str, copyOnWriteArrayList);
    }

    private synchronized void c() throws p {
        try {
            this.f38913e = this.f38913e == null ? e() : this.f38913e;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void d() {
        if (this.f38911c.decrementAndGet() <= 0) {
            this.f38913e.a();
            this.f38913e = null;
        }
    }

    private g e() throws p {
        String str = this.f38912d;
        e eVar = this.f38916h;
        g gVar = new g(s.a(str, eVar.f38888d, eVar.f38889e), new com.sigmob.sdk.videocache.file.b(this.f38916h.a(this.f38912d), this.f38916h.f38887c));
        gVar.a(this.f38915g);
        return gVar;
    }

    public void a() {
        this.f38914f.clear();
        if (this.f38913e != null) {
            this.f38913e.a((d) null);
            this.f38913e.a();
            this.f38913e = null;
        }
        this.f38911c.set(0);
    }

    public int b() {
        return this.f38911c.get();
    }

    public void a(d dVar) {
        this.f38914f.add(dVar);
    }

    public void b(d dVar) {
        this.f38914f.remove(dVar);
    }

    public void a(f fVar, Socket socket) throws p, IOException {
        c();
        try {
            this.f38911c.incrementAndGet();
            this.f38913e.a(fVar, socket);
        } catch (Throwable th) {
            try {
                SigmobLog.e("processRequest error:", th);
            } finally {
                d();
            }
        }
    }
}
