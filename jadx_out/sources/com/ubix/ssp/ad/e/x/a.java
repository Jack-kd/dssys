package com.ubix.ssp.ad.e.x;

import android.os.Handler;
import android.os.Looper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes5.dex */
public abstract class a<T> {

    /* renamed from: a, reason: collision with root package name */
    static Handler f47401a = new Handler(Looper.getMainLooper());

    /* renamed from: com.ubix.ssp.ad.e.x.a$a, reason: collision with other inner class name */
    public class RunnableC0831a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.x.d f47402a;

        public RunnableC0831a(com.ubix.ssp.ad.e.x.d dVar) {
            this.f47402a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b(this.f47402a);
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f47404a;

        public b(Object obj) {
            this.f47404a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            a.this.a((a) this.f47404a);
        }
    }

    public static abstract class c extends a<com.ubix.ssp.ad.e.x.d> {
        @Override // com.ubix.ssp.ad.e.x.a
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public com.ubix.ssp.ad.e.x.d c(com.ubix.ssp.ad.e.x.d dVar) {
            return dVar;
        }
    }

    public static abstract class d extends a<String> {
        @Override // com.ubix.ssp.ad.e.x.a
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public String c(com.ubix.ssp.ad.e.x.d dVar) {
            try {
                return a.a(dVar.f47409a);
            } catch (Exception unused) {
                throw new RuntimeException("failure");
            }
        }
    }

    public static abstract class e extends a<com.ubix.ssp.ad.e.y.a.e> {
        @Override // com.ubix.ssp.ad.e.x.a
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public com.ubix.ssp.ad.e.y.a.e c(com.ubix.ssp.ad.e.x.d dVar) {
            try {
                return com.ubix.ssp.ad.e.y.a.e.a(dVar.f47414f);
            } catch (Exception unused) {
                throw new RuntimeException("failure");
            }
        }
    }

    public static abstract class f extends a<com.ubix.ssp.ad.e.y.a.g> {
        @Override // com.ubix.ssp.ad.e.x.a
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public com.ubix.ssp.ad.e.y.a.g c(com.ubix.ssp.ad.e.x.d dVar) {
            try {
                return com.ubix.ssp.ad.e.y.a.g.a(dVar.f47414f);
            } catch (Exception unused) {
                throw new RuntimeException("failure");
            }
        }
    }

    public static String a(InputStream inputStream) throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    inputStream.close();
                    return sb.toString();
                }
                sb.append(line + "\n");
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public abstract void a(T t2);

    public abstract void b(com.ubix.ssp.ad.e.x.d dVar);

    public abstract T c(com.ubix.ssp.ad.e.x.d dVar);

    public void d(com.ubix.ssp.ad.e.x.d dVar) {
        f47401a.post(new b(c(dVar)));
    }

    public void a(com.ubix.ssp.ad.e.x.d dVar) {
        f47401a.post(new RunnableC0831a(dVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(com.ubix.ssp.ad.e.y.a.e eVar) {
        a((a<T>) eVar);
    }
}
