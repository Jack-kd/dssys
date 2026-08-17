package com.sigmob.sdk.downloader;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class m {

    /* renamed from: b, reason: collision with root package name */
    final List<Integer> f37742b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    final c f37743c = new c() { // from class: com.sigmob.sdk.downloader.m.1
        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, int i2, int i3, Map<String, List<String>> map) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(fVar, i2, i3, map);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a_(f fVar) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a_(fVar);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void b(f fVar, int i2, long j2) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.b(fVar, i2, j2);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void c(f fVar, int i2, long j2) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.c(fVar, i2, j2);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, int i2, long j2) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(fVar, i2, j2);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void b(f fVar, int i2, Map<String, List<String>> map) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.b(fVar, i2, map);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, int i2, Map<String, List<String>> map) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(fVar, i2, map);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar2 : cVarArrB) {
                if (cVar2 != null) {
                    cVar2.a(fVar, cVar);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar2 : cVarArrB) {
                if (cVar2 != null) {
                    cVar2.a(fVar, cVar, bVar);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(fVar, aVar, exc);
                }
            }
            if (m.this.f37742b.contains(Integer.valueOf(fVar.c()))) {
                m.this.a(fVar.c());
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, Map<String, List<String>> map) {
            c[] cVarArrB = m.b(fVar, m.this.f37741a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(fVar, map);
                }
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    final SparseArray<ArrayList<c>> f37741a = new SparseArray<>();

    public c a() {
        return this.f37743c;
    }

    public synchronized void b(int i2) {
        if (this.f37742b.contains(Integer.valueOf(i2))) {
            return;
        }
        this.f37742b.add(Integer.valueOf(i2));
    }

    public synchronized void c(int i2) {
        this.f37742b.remove(Integer.valueOf(i2));
    }

    public synchronized void d(f fVar, c cVar) {
        b(fVar, cVar);
        fVar.b(this.f37743c);
    }

    public synchronized void e(f fVar, c cVar) {
        b(fVar, cVar);
        fVar.c(this.f37743c);
    }

    public synchronized void a(int i2) {
        this.f37741a.remove(i2);
    }

    public synchronized void b(f fVar, c cVar) {
        try {
            int iC = fVar.c();
            ArrayList<c> arrayList = this.f37741a.get(iC);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f37741a.put(iC, arrayList);
            }
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
                if (cVar instanceof com.sigmob.sdk.downloader.core.listener.assist.d) {
                    ((com.sigmob.sdk.downloader.core.listener.assist.d) cVar).b(true);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void c(f fVar, c cVar) {
        b(fVar, cVar);
        if (!a(fVar)) {
            fVar.b(this.f37743c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c[] b(f fVar, SparseArray<ArrayList<c>> sparseArray) {
        ArrayList<c> arrayList = sparseArray.get(fVar.c());
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        c[] cVarArr = new c[arrayList.size()];
        arrayList.toArray(cVarArr);
        return cVarArr;
    }

    public synchronized void a(c cVar) {
        try {
            int size = this.f37741a.size();
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                ArrayList<c> arrayListValueAt = this.f37741a.valueAt(i3);
                if (arrayListValueAt != null) {
                    arrayListValueAt.remove(cVar);
                    if (arrayListValueAt.isEmpty()) {
                        arrayList.add(Integer.valueOf(this.f37741a.keyAt(i3)));
                    }
                }
            }
            int size2 = arrayList.size();
            while (i2 < size2) {
                Object obj = arrayList.get(i2);
                i2++;
                this.f37741a.remove(((Integer) obj).intValue());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean a(f fVar) {
        return l.a(fVar);
    }

    public synchronized boolean a(f fVar, c cVar) {
        int iC = fVar.c();
        ArrayList<c> arrayList = this.f37741a.get(iC);
        if (arrayList == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(cVar);
        if (arrayList.isEmpty()) {
            this.f37741a.remove(iC);
        }
        return zRemove;
    }
}
