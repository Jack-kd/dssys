package com.sigmob.sdk.downloader.core.listener.assist;

import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.listener.assist.e.a;
import com.sigmob.sdk.downloader.f;

/* loaded from: classes4.dex */
public class e<T extends a> implements d {

    /* renamed from: a, reason: collision with root package name */
    volatile T f37625a;

    /* renamed from: b, reason: collision with root package name */
    final SparseArray<T> f37626b = new SparseArray<>();

    /* renamed from: c, reason: collision with root package name */
    private Boolean f37627c;

    /* renamed from: d, reason: collision with root package name */
    private final b<T> f37628d;

    public interface a {
        void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar);

        int b();
    }

    public interface b<T extends a> {
        T b(int i2);
    }

    public e(b<T> bVar) {
        this.f37628d = bVar;
    }

    public T a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        T t2 = (T) this.f37628d.b(fVar.c());
        synchronized (this) {
            try {
                if (this.f37625a == null) {
                    this.f37625a = t2;
                } else {
                    this.f37626b.put(fVar.c(), t2);
                }
                if (cVar != null) {
                    t2.a(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t2;
    }

    public T b(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        T t2;
        int iC = fVar.c();
        synchronized (this) {
            try {
                t2 = (this.f37625a == null || this.f37625a.b() != iC) ? null : this.f37625a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (t2 == null) {
            t2 = this.f37626b.get(iC);
        }
        return (t2 == null && a()) ? (T) a(fVar, cVar) : t2;
    }

    public T c(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        T t2;
        int iC = fVar.c();
        synchronized (this) {
            try {
                if (this.f37625a == null || this.f37625a.b() != iC) {
                    t2 = this.f37626b.get(iC);
                    this.f37626b.remove(iC);
                } else {
                    t2 = this.f37625a;
                    this.f37625a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (t2 != null) {
            return t2;
        }
        T t3 = (T) this.f37628d.b(iC);
        if (cVar != null) {
            t3.a(cVar);
        }
        return t3;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean z2) {
        this.f37627c = Boolean.valueOf(z2);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean z2) {
        if (this.f37627c == null) {
            this.f37627c = Boolean.valueOf(z2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        Boolean bool = this.f37627c;
        return bool != null && bool.booleanValue();
    }
}
