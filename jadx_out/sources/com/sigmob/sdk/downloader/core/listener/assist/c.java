package com.sigmob.sdk.downloader.core.listener.assist;

import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.listener.assist.b;
import com.sigmob.sdk.downloader.core.listener.assist.e;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.k;

/* loaded from: classes4.dex */
public class c implements b.a, e.b<b> {

    /* renamed from: a, reason: collision with root package name */
    private a f37622a;

    public interface a {
        void a(f fVar, int i2, long j2, k kVar);

        void a(f fVar, int i2, com.sigmob.sdk.downloader.core.breakpoint.a aVar, k kVar);

        void a(f fVar, long j2, k kVar);

        void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, boolean z2, b bVar);

        void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, k kVar);
    }

    public static class b extends b.c {

        /* renamed from: d, reason: collision with root package name */
        k f37623d;

        /* renamed from: e, reason: collision with root package name */
        SparseArray<k> f37624e;

        public b(int i2) {
            super(i2);
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.b.c, com.sigmob.sdk.downloader.core.listener.assist.e.a
        public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            super.a(cVar);
            this.f37623d = new k();
            this.f37624e = new SparseArray<>();
            int iG = cVar.g();
            for (int i2 = 0; i2 < iG; i2++) {
                this.f37624e.put(i2, new k());
            }
        }

        public k b(int i2) {
            return this.f37624e.get(i2);
        }

        public k f() {
            return this.f37623d;
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b b(int i2) {
        return new b(i2);
    }

    public void a(a aVar) {
        this.f37622a = aVar;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f fVar, int i2, long j2, b.c cVar) {
        b bVar = (b) cVar;
        bVar.f37624e.get(i2).a(j2);
        bVar.f37623d.a(j2);
        a aVar = this.f37622a;
        if (aVar == null) {
            return true;
        }
        aVar.a(fVar, i2, cVar.f37620c.get(i2).longValue(), bVar.b(i2));
        this.f37622a.a(fVar, cVar.f37619b, bVar.f37623d);
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f fVar, int i2, b.c cVar) {
        b bVar = (b) cVar;
        bVar.f37624e.get(i2).g();
        a aVar = this.f37622a;
        if (aVar == null) {
            return true;
        }
        aVar.a(fVar, i2, cVar.f37618a.b(i2), bVar.b(i2));
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, boolean z2, b.c cVar2) {
        a aVar = this.f37622a;
        if (aVar == null) {
            return true;
        }
        aVar.a(fVar, cVar, z2, (b) cVar2);
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, b.c cVar) {
        k kVar = ((b) cVar).f37623d;
        if (kVar != null) {
            kVar.g();
        } else {
            kVar = new k();
        }
        a aVar2 = this.f37622a;
        if (aVar2 == null) {
            return true;
        }
        aVar2.a(fVar, aVar, exc, kVar);
        return true;
    }
}
