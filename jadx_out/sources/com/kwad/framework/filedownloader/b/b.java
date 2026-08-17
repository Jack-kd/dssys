package com.kwad.framework.filedownloader.b;

import android.util.SparseArray;
import com.kwad.framework.filedownloader.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class b implements com.kwad.framework.filedownloader.b.a {
    final SparseArray<com.kwad.framework.filedownloader.d.c> aAv = new SparseArray<>();
    final SparseArray<List<com.kwad.framework.filedownloader.d.a>> aAw = new SparseArray<>();

    public class a implements a.InterfaceC0581a {
        public a() {
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0581a
        public final void BS() {
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0581a
        public final void a(int i2, com.kwad.framework.filedownloader.d.c cVar) {
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0581a
        public final void c(com.kwad.framework.filedownloader.d.c cVar) {
        }

        @Override // java.lang.Iterable
        public final Iterator<com.kwad.framework.filedownloader.d.c> iterator() {
            return b.this.new C0582b();
        }
    }

    /* renamed from: com.kwad.framework.filedownloader.b.b$b, reason: collision with other inner class name */
    public class C0582b implements Iterator<com.kwad.framework.filedownloader.d.c> {
        public C0582b() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final /* bridge */ /* synthetic */ com.kwad.framework.filedownloader.d.c next() {
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final a.InterfaceC0581a BR() {
        return new a();
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, long j2, String str, String str2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(int i2, long j2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void c(int i2, long j2) {
        cF(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cB(int i2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.d.c cC(int i2) {
        com.kwad.framework.filedownloader.d.c cVar;
        synchronized (this.aAv) {
            cVar = this.aAv.get(i2);
        }
        return cVar;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final List<com.kwad.framework.filedownloader.d.a> cD(int i2) {
        List<com.kwad.framework.filedownloader.d.a> list;
        try {
            ArrayList arrayList = new ArrayList();
            synchronized (this.aAw) {
                list = this.aAw.get(i2);
            }
            if (list != null) {
                arrayList.addAll(list);
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cE(int i2) {
        try {
            synchronized (this.aAw) {
                this.aAw.remove(i2);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final boolean cF(int i2) {
        synchronized (this.aAv) {
            this.aAv.remove(i2);
        }
        return true;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cG(int i2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void clear() {
        synchronized (this.aAv) {
            this.aAv.clear();
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void d(int i2, long j2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void w(int i2, int i3) {
    }

    private void d(com.kwad.framework.filedownloader.d.c cVar) {
        synchronized (this.aAv) {
            this.aAv.put(cVar.getId(), cVar);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, String str, long j2, long j3, int i3) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(com.kwad.framework.filedownloader.d.c cVar) {
        if (cVar == null) {
            com.kwad.framework.filedownloader.f.d.d(this, "update but model == null!", new Object[0]);
            return;
        }
        if (cC(cVar.getId()) == null) {
            d(cVar);
            return;
        }
        synchronized (this.aAv) {
            this.aAv.remove(cVar.getId());
            this.aAv.put(cVar.getId(), cVar);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, Throwable th) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, Throwable th, long j2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(com.kwad.framework.filedownloader.d.a aVar) {
        List<com.kwad.framework.filedownloader.d.a> arrayList;
        try {
            int id = aVar.getId();
            synchronized (this.aAw) {
                try {
                    arrayList = this.aAw.get(id);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        this.aAw.put(id, arrayList);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            arrayList.add(aVar);
        } catch (Exception unused) {
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, int i3, long j2) {
        List<com.kwad.framework.filedownloader.d.a> list;
        synchronized (this.aAw) {
            list = this.aAw.get(i2);
        }
        if (list == null) {
            return;
        }
        for (com.kwad.framework.filedownloader.d.a aVar : list) {
            if (aVar.getIndex() == i3) {
                aVar.ad(j2);
                return;
            }
        }
    }
}
