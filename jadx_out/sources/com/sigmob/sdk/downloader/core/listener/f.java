package com.sigmob.sdk.downloader.core.listener;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class f implements com.sigmob.sdk.downloader.c {

    /* renamed from: a, reason: collision with root package name */
    final com.sigmob.sdk.downloader.c[] f37631a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private List<com.sigmob.sdk.downloader.c> f37632a = new ArrayList();

        public a a(com.sigmob.sdk.downloader.c cVar) {
            if (cVar != null && !this.f37632a.contains(cVar)) {
                this.f37632a.add(cVar);
            }
            return this;
        }

        public boolean b(com.sigmob.sdk.downloader.c cVar) {
            return this.f37632a.remove(cVar);
        }

        public f a() {
            List<com.sigmob.sdk.downloader.c> list = this.f37632a;
            return new f((com.sigmob.sdk.downloader.c[]) list.toArray(new com.sigmob.sdk.downloader.c[list.size()]));
        }
    }

    public f(com.sigmob.sdk.downloader.c[] cVarArr) {
        this.f37631a = cVarArr;
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, int i3, Map<String, List<String>> map) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.a(fVar, i2, i3, map);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a_(com.sigmob.sdk.downloader.f fVar) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.a_(fVar);
        }
    }

    public int b(com.sigmob.sdk.downloader.c cVar) {
        int i2 = 0;
        while (true) {
            com.sigmob.sdk.downloader.c[] cVarArr = this.f37631a;
            if (i2 >= cVarArr.length) {
                return -1;
            }
            if (cVarArr[i2] == cVar) {
                return i2;
            }
            i2++;
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void c(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.c(fVar, i2, j2);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.a(fVar, i2, j2);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.b(fVar, i2, j2);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, Map<String, List<String>> map) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.a(fVar, i2, map);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f fVar, int i2, Map<String, List<String>> map) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.b(fVar, i2, map);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        for (com.sigmob.sdk.downloader.c cVar2 : this.f37631a) {
            cVar2.a(fVar, cVar);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
        for (com.sigmob.sdk.downloader.c cVar2 : this.f37631a) {
            cVar2.a(fVar, cVar, bVar);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.a(fVar, aVar, exc);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, Map<String, List<String>> map) {
        for (com.sigmob.sdk.downloader.c cVar : this.f37631a) {
            cVar.a(fVar, map);
        }
    }

    public boolean a(com.sigmob.sdk.downloader.c cVar) {
        for (com.sigmob.sdk.downloader.c cVar2 : this.f37631a) {
            if (cVar2 == cVar) {
                return true;
            }
        }
        return false;
    }
}
