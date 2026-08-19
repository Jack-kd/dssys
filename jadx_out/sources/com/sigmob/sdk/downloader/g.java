package com.sigmob.sdk.downloader;

import android.annotation.SuppressLint;
import android.content.Context;
import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.file.a;
import com.sigmob.sdk.downloader.core.file.b;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile g f37701a;

    /* renamed from: b, reason: collision with root package name */
    d f37702b;

    /* renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.b f37703c;

    /* renamed from: d, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.a f37704d;

    /* renamed from: e, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.g f37705e;

    /* renamed from: f, reason: collision with root package name */
    private final a.b f37706f;

    /* renamed from: g, reason: collision with root package name */
    private final a.InterfaceC0772a f37707g;

    /* renamed from: h, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.e f37708h;

    /* renamed from: i, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.download.g f37709i;

    /* renamed from: j, reason: collision with root package name */
    private final Context f37710j;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.dispatcher.b f37711a;

        /* renamed from: b, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.dispatcher.a f37712b;

        /* renamed from: c, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.breakpoint.j f37713c;

        /* renamed from: d, reason: collision with root package name */
        private a.b f37714d;

        /* renamed from: e, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.file.e f37715e;

        /* renamed from: f, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.download.g f37716f;

        /* renamed from: g, reason: collision with root package name */
        private a.InterfaceC0772a f37717g;

        /* renamed from: h, reason: collision with root package name */
        private d f37718h;

        /* renamed from: i, reason: collision with root package name */
        private final Context f37719i;

        public a(Context context) {
            this.f37719i = context.getApplicationContext();
        }

        public a a(com.sigmob.sdk.downloader.core.breakpoint.j jVar) {
            this.f37713c = jVar;
            return this;
        }

        public a a(a.b bVar) {
            this.f37714d = bVar;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.dispatcher.a aVar) {
            this.f37712b = aVar;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.dispatcher.b bVar) {
            this.f37711a = bVar;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.download.g gVar) {
            this.f37716f = gVar;
            return this;
        }

        public a a(a.InterfaceC0772a interfaceC0772a) {
            this.f37717g = interfaceC0772a;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.file.e eVar) {
            this.f37715e = eVar;
            return this;
        }

        public a a(d dVar) {
            this.f37718h = dVar;
            return this;
        }

        public g a() {
            if (this.f37711a == null) {
                this.f37711a = new com.sigmob.sdk.downloader.core.dispatcher.b();
            }
            if (this.f37712b == null) {
                this.f37712b = new com.sigmob.sdk.downloader.core.dispatcher.a();
            }
            if (this.f37713c == null) {
                this.f37713c = com.sigmob.sdk.downloader.core.c.a(this.f37719i);
            }
            if (this.f37714d == null) {
                this.f37714d = com.sigmob.sdk.downloader.core.c.c();
            }
            if (this.f37717g == null) {
                this.f37717g = new b.a();
            }
            if (this.f37715e == null) {
                this.f37715e = new com.sigmob.sdk.downloader.core.file.e();
            }
            if (this.f37716f == null) {
                this.f37716f = new com.sigmob.sdk.downloader.core.download.g();
            }
            g gVar = new g(this.f37719i, this.f37711a, this.f37712b, this.f37713c, this.f37714d, this.f37717g, this.f37715e, this.f37716f);
            gVar.a(this.f37718h);
            com.sigmob.sdk.downloader.core.c.b("FileDownload", "downloadStore[" + this.f37713c + "] connectionFactory[" + this.f37714d);
            return gVar;
        }
    }

    public g(Context context, com.sigmob.sdk.downloader.core.dispatcher.b bVar, com.sigmob.sdk.downloader.core.dispatcher.a aVar, com.sigmob.sdk.downloader.core.breakpoint.j jVar, a.b bVar2, a.InterfaceC0772a interfaceC0772a, com.sigmob.sdk.downloader.core.file.e eVar, com.sigmob.sdk.downloader.core.download.g gVar) {
        this.f37710j = context;
        this.f37703c = bVar;
        this.f37704d = aVar;
        this.f37705e = jVar;
        this.f37706f = bVar2;
        this.f37707g = interfaceC0772a;
        this.f37708h = eVar;
        this.f37709i = gVar;
        bVar.a(com.sigmob.sdk.downloader.core.c.a(jVar));
    }

    public static g j() {
        if (f37701a == null) {
            synchronized (g.class) {
                try {
                    if (f37701a == null) {
                        if (com.sigmob.sdk.b.e() == null) {
                            throw new IllegalStateException("context == null");
                        }
                        f37701a = new a(com.sigmob.sdk.b.e()).a();
                    }
                } finally {
                }
            }
        }
        return f37701a;
    }

    public com.sigmob.sdk.downloader.core.dispatcher.b a() {
        return this.f37703c;
    }

    public com.sigmob.sdk.downloader.core.dispatcher.a b() {
        return this.f37704d;
    }

    public com.sigmob.sdk.downloader.core.breakpoint.g c() {
        return this.f37705e;
    }

    public a.b d() {
        return this.f37706f;
    }

    public a.InterfaceC0772a e() {
        return this.f37707g;
    }

    public com.sigmob.sdk.downloader.core.file.e f() {
        return this.f37708h;
    }

    public com.sigmob.sdk.downloader.core.download.g g() {
        return this.f37709i;
    }

    public Context h() {
        return this.f37710j;
    }

    public d i() {
        return this.f37702b;
    }

    public void a(d dVar) {
        this.f37702b = dVar;
    }

    public static void a(g gVar) {
        if (f37701a != null) {
            throw new IllegalArgumentException("FileDownload must be null.");
        }
        synchronized (g.class) {
            try {
                if (f37701a != null) {
                    throw new IllegalArgumentException("FileDownload must be null.");
                }
                f37701a = gVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
