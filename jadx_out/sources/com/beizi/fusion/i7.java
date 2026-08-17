package com.beizi.fusion;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.io.File;

/* loaded from: classes2.dex */
public abstract class i7 {

    public interface a {
        void a(b bVar);

        void a(d dVar);

        void destroy();
    }

    public interface b {
        void a(int i2);

        void a(long j2, long j3);

        void a(File file);

        boolean b(File file);
    }

    public static final class c implements a, Runnable {

        /* renamed from: a, reason: collision with root package name */
        private HandlerThread f14423a;

        /* renamed from: b, reason: collision with root package name */
        private b f14424b;

        /* renamed from: c, reason: collision with root package name */
        private Handler f14425c;

        /* renamed from: d, reason: collision with root package name */
        private Handler f14426d = new Handler(Looper.getMainLooper());

        /* renamed from: e, reason: collision with root package name */
        private d f14427e;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f14428a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ long f14429b;

            public a(long j2, long j3) {
                this.f14428a = j2;
                this.f14429b = j3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f14424b != null) {
                    c.this.f14424b.a(this.f14428a, this.f14429b);
                }
            }
        }

        public class b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ File f14431a;

            public b(File file) {
                this.f14431a = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f14424b != null) {
                    c.this.f14424b.a(this.f14431a);
                }
            }
        }

        /* renamed from: com.beizi.fusion.i7$c$c, reason: collision with other inner class name */
        public class RunnableC0163c implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f14433a;

            public RunnableC0163c(int i2) {
                this.f14433a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f14424b != null) {
                    c.this.f14424b.a(this.f14433a);
                }
            }
        }

        public c() {
            HandlerThread handlerThread = new HandlerThread("download");
            this.f14423a = handlerThread;
            handlerThread.start();
            this.f14425c = new Handler(this.f14423a.getLooper());
        }

        private void b(File file) {
            this.f14426d.post(new b(file));
        }

        @Override // com.beizi.fusion.i7.a
        public void destroy() {
            HandlerThread handlerThread = this.f14423a;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.f14425c = null;
            this.f14423a = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0195 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:121:0x018c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:144:0x019a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:161:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x019f  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 419
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.i7.c.run():void");
        }

        @Override // com.beizi.fusion.i7.a
        public void a(b bVar) {
            this.f14424b = bVar;
        }

        @Override // com.beizi.fusion.i7.a
        public void a(d dVar) {
            if (!dVar.f14440f) {
                d dVar2 = this.f14427e;
                if (dVar2 != null && !dVar.equals(dVar2)) {
                    this.f14427e.f14441g = true;
                }
                this.f14427e = dVar;
                dVar.a();
                Handler handler = this.f14425c;
                if (handler != null) {
                    handler.post(this);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Invalid request,it's downloading");
        }

        private void a(long j2, long j3) {
            this.f14426d.post(new a(j2, j3));
        }

        private boolean a(File file) {
            b bVar = this.f14424b;
            return bVar != null && bVar.b(file);
        }

        private void a(int i2) {
            this.f14426d.post(new RunnableC0163c(i2));
        }
    }

    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        private String f14435a;

        /* renamed from: b, reason: collision with root package name */
        private String f14436b;

        /* renamed from: c, reason: collision with root package name */
        private String f14437c;

        /* renamed from: d, reason: collision with root package name */
        private volatile long f14438d;

        /* renamed from: e, reason: collision with root package name */
        private volatile long f14439e;

        /* renamed from: f, reason: collision with root package name */
        public volatile boolean f14440f;

        /* renamed from: g, reason: collision with root package name */
        public volatile boolean f14441g;

        /* renamed from: h, reason: collision with root package name */
        public volatile boolean f14442h;

        public d(String str, String str2, String str3) {
            this.f14435a = str;
            this.f14436b = str2;
            this.f14437c = str3;
            a();
        }

        public static /* synthetic */ long b(d dVar, long j2) {
            long j3 = dVar.f14439e + j2;
            dVar.f14439e = j3;
            return j3;
        }

        public void a() {
            this.f14438d = 0L;
            this.f14439e = 0L;
            this.f14441g = false;
            this.f14442h = false;
            this.f14440f = false;
        }
    }

    public static a a() {
        return new c();
    }
}
