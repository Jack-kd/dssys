package com.sigmob.sdk.downloader.core.breakpoint;

import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes4.dex */
public class h implements j {

    /* renamed from: a, reason: collision with root package name */
    public static final int f37335a = 1;

    /* renamed from: b, reason: collision with root package name */
    private final SparseArray<c> f37336b;

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<String, String> f37337c;

    /* renamed from: d, reason: collision with root package name */
    private final k f37338d;

    /* renamed from: e, reason: collision with root package name */
    private final SparseArray<com.sigmob.sdk.downloader.core.a> f37339e;

    /* renamed from: f, reason: collision with root package name */
    private final List<Integer> f37340f;

    /* renamed from: g, reason: collision with root package name */
    private final List<Integer> f37341g;

    public h() {
        this(new SparseArray(), new ArrayList(), new HashMap());
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(int i2) {
        return this.f37336b.get(i2);
    }

    public synchronized int b() {
        int iIntValue;
        int i2 = 0;
        int size = 0;
        int i3 = 0;
        while (true) {
            try {
                iIntValue = 1;
                if (size >= this.f37340f.size()) {
                    size = 0;
                    break;
                }
                Integer num = this.f37340f.get(size);
                if (num == null) {
                    i2 = i3 + 1;
                    break;
                }
                int iIntValue2 = num.intValue();
                if (i3 != 0) {
                    int i4 = i3 + 1;
                    if (iIntValue2 != i4) {
                        i2 = i4;
                        break;
                    }
                    size++;
                    i3 = iIntValue2;
                } else {
                    if (iIntValue2 != 1) {
                        size = 0;
                        i2 = 1;
                        break;
                    }
                    size++;
                    i3 = iIntValue2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 != 0) {
            iIntValue = i2;
        } else if (!this.f37340f.isEmpty()) {
            List<Integer> list = this.f37340f;
            iIntValue = 1 + list.get(list.size() - 1).intValue();
            size = this.f37340f.size();
        }
        this.f37340f.add(size, Integer.valueOf(iIntValue));
        return iIntValue;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean c(int i2) {
        return this.f37341g.contains(Integer.valueOf(i2));
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void d(int i2) {
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public c e(int i2) {
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean f(int i2) {
        if (this.f37341g.contains(Integer.valueOf(i2))) {
            return false;
        }
        synchronized (this.f37341g) {
            try {
                if (this.f37341g.contains(Integer.valueOf(i2))) {
                    return false;
                }
                this.f37341g.add(Integer.valueOf(i2));
                return true;
            } finally {
            }
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean g(int i2) {
        boolean zRemove;
        synchronized (this.f37341g) {
            zRemove = this.f37341g.remove(Integer.valueOf(i2));
        }
        return zRemove;
    }

    public h(SparseArray<c> sparseArray, List<Integer> list, HashMap<String, String> map) {
        this.f37339e = new SparseArray<>();
        this.f37336b = sparseArray;
        this.f37341g = list;
        this.f37337c = map;
        this.f37338d = new k();
        int size = sparseArray.size();
        this.f37340f = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f37340f.add(Integer.valueOf(sparseArray.valueAt(i2).f37289a));
        }
        Collections.sort(this.f37340f);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f fVar) {
        int iC = fVar.c();
        c cVar = new c(iC, fVar.i(), fVar.l(), fVar.d());
        synchronized (this) {
            this.f37336b.put(iC, cVar);
            this.f37339e.remove(iC);
        }
        return cVar;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public synchronized int b(com.sigmob.sdk.downloader.f fVar) {
        Integer numA = this.f37338d.a(fVar);
        if (numA != null) {
            return numA.intValue();
        }
        int size = this.f37336b.size();
        for (int i2 = 0; i2 < size; i2++) {
            c cVarValueAt = this.f37336b.valueAt(i2);
            if (cVarValueAt != null && cVarValueAt.a(fVar)) {
                return cVarValueAt.f37289a;
            }
        }
        int size2 = this.f37339e.size();
        for (int i3 = 0; i3 < size2; i3++) {
            com.sigmob.sdk.downloader.core.a aVarValueAt = this.f37339e.valueAt(i3);
            if (aVarValueAt != null && aVarValueAt.a(fVar)) {
                return aVarValueAt.c();
            }
        }
        int iB = b();
        this.f37339e.put(iB, fVar.d(iB));
        this.f37338d.a(fVar, iB);
        return iB;
    }

    public h(SparseArray<c> sparseArray, List<Integer> list, HashMap<String, String> map, SparseArray<com.sigmob.sdk.downloader.core.a> sparseArray2, List<Integer> list2, k kVar) {
        this.f37339e = sparseArray2;
        this.f37341g = list;
        this.f37336b = sparseArray;
        this.f37337c = map;
        this.f37340f = list2;
        this.f37338d = kVar;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f fVar, c cVar) {
        SparseArray<c> sparseArrayClone;
        synchronized (this) {
            sparseArrayClone = this.f37336b.clone();
        }
        int size = sparseArrayClone.size();
        for (int i2 = 0; i2 < size; i2++) {
            c cVarValueAt = sparseArrayClone.valueAt(i2);
            if (cVarValueAt != cVar && cVarValueAt.a(fVar)) {
                return cVarValueAt;
            }
        }
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public synchronized void b(int i2) {
        try {
            this.f37336b.remove(i2);
            if (this.f37339e.get(i2) == null) {
                this.f37340f.remove(Integer.valueOf(i2));
            }
            this.f37338d.a(i2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public String a(String str) {
        return this.f37337c.get(str);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(int i2, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        if (aVar == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
            b(i2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(c cVar, int i2, long j2) throws IOException {
        c cVar2 = this.f37336b.get(cVar.f37289a);
        if (cVar != cVar2) {
            throw new IOException("Info not on store!");
        }
        cVar2.b(i2).a(j2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a() {
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a(c cVar) {
        String strM = cVar.m();
        if (cVar.d() && strM != null) {
            this.f37337c.put(cVar.l(), strM);
        }
        c cVar2 = this.f37336b.get(cVar.f37289a);
        if (cVar2 == null) {
            return false;
        }
        if (cVar2 == cVar) {
            return true;
        }
        synchronized (this) {
            this.f37336b.put(cVar.f37289a, cVar.p());
        }
        return true;
    }
}
