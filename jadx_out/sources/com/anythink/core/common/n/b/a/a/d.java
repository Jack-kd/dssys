package com.anythink.core.common.n.b.a.a;

import com.anythink.core.common.n.b.aa;
import com.anythink.core.common.n.c.n;
import com.anythink.core.common.n.c.v;
import com.anythink.core.common.n.c.w;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class d implements Closeable, Flushable {

    /* renamed from: a, reason: collision with root package name */
    static final String f6063a = "journal";

    /* renamed from: b, reason: collision with root package name */
    static final String f6064b = "journal.tmp";

    /* renamed from: c, reason: collision with root package name */
    static final String f6065c = "journal.bkp";

    /* renamed from: d, reason: collision with root package name */
    static final String f6066d = "libcore.io.DiskLruCache";

    /* renamed from: e, reason: collision with root package name */
    static final String f6067e = "1";

    /* renamed from: f, reason: collision with root package name */
    static final long f6068f = -1;

    /* renamed from: g, reason: collision with root package name */
    static final Pattern f6069g = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: s, reason: collision with root package name */
    static final /* synthetic */ boolean f6070s = true;

    /* renamed from: t, reason: collision with root package name */
    private static final String f6071t = "CLEAN";

    /* renamed from: u, reason: collision with root package name */
    private static final String f6072u = "DIRTY";

    /* renamed from: v, reason: collision with root package name */
    private static final String f6073v = "REMOVE";

    /* renamed from: w, reason: collision with root package name */
    private static final String f6074w = "READ";

    /* renamed from: B, reason: collision with root package name */
    private long f6076B;

    /* renamed from: E, reason: collision with root package name */
    private final Executor f6079E;

    /* renamed from: h, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.f.a f6081h;

    /* renamed from: i, reason: collision with root package name */
    final File f6082i;

    /* renamed from: k, reason: collision with root package name */
    com.anythink.core.common.n.c.d f6084k;

    /* renamed from: m, reason: collision with root package name */
    int f6086m;

    /* renamed from: n, reason: collision with root package name */
    boolean f6087n;

    /* renamed from: o, reason: collision with root package name */
    boolean f6088o;

    /* renamed from: p, reason: collision with root package name */
    boolean f6089p;

    /* renamed from: q, reason: collision with root package name */
    boolean f6090q;

    /* renamed from: r, reason: collision with root package name */
    boolean f6091r;

    /* renamed from: x, reason: collision with root package name */
    private final File f6092x;

    /* renamed from: y, reason: collision with root package name */
    private final File f6093y;

    /* renamed from: z, reason: collision with root package name */
    private final File f6094z;

    /* renamed from: C, reason: collision with root package name */
    private long f6077C = 0;

    /* renamed from: l, reason: collision with root package name */
    final LinkedHashMap<String, b> f6085l = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: D, reason: collision with root package name */
    private long f6078D = 0;

    /* renamed from: F, reason: collision with root package name */
    private final Runnable f6080F = new Runnable() { // from class: com.anythink.core.common.n.b.a.a.d.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (d.this) {
                d dVar = d.this;
                if ((!dVar.f6088o) || dVar.f6089p) {
                    return;
                }
                try {
                    dVar.h();
                } catch (IOException unused) {
                    d.this.f6090q = true;
                }
                try {
                    if (d.this.f()) {
                        d.this.b();
                        d.this.f6086m = 0;
                    }
                } catch (IOException unused2) {
                    d dVar2 = d.this;
                    dVar2.f6091r = true;
                    dVar2.f6084k = n.a(n.a());
                }
            }
        }
    };

    /* renamed from: A, reason: collision with root package name */
    private final int f6075A = 201105;

    /* renamed from: j, reason: collision with root package name */
    final int f6083j = 2;

    public final class c implements Closeable {

        /* renamed from: b, reason: collision with root package name */
        private final String f6116b;

        /* renamed from: c, reason: collision with root package name */
        private final long f6117c;

        /* renamed from: d, reason: collision with root package name */
        private final w[] f6118d;

        /* renamed from: e, reason: collision with root package name */
        private final long[] f6119e;

        public c(String str, long j2, w[] wVarArr, long[] jArr) {
            this.f6116b = str;
            this.f6117c = j2;
            this.f6118d = wVarArr;
            this.f6119e = jArr;
        }

        private String b() {
            return this.f6116b;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (w wVar : this.f6118d) {
                com.anythink.core.common.n.b.a.c.a(wVar);
            }
        }

        private long b(int i2) {
            return this.f6119e[i2];
        }

        public final a a() {
            return d.this.a(this.f6116b, this.f6117c);
        }

        public final w a(int i2) {
            return this.f6118d[i2];
        }
    }

    private d(com.anythink.core.common.n.b.a.f.a aVar, File file, long j2, Executor executor) {
        this.f6081h = aVar;
        this.f6082i = file;
        this.f6092x = new File(file, f6063a);
        this.f6093y = new File(file, f6064b);
        this.f6094z = new File(file, f6065c);
        this.f6076B = j2;
        this.f6079E = executor;
    }

    private void d(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i2 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i2);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i2);
            if (iIndexOf == 6 && str.startsWith(f6073v)) {
                this.f6085l.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iIndexOf2);
        }
        b bVar = this.f6085l.get(strSubstring);
        if (bVar == null) {
            bVar = new b(strSubstring);
            this.f6085l.put(strSubstring, bVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith(f6071t)) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            bVar.f6111e = true;
            bVar.f6112f = null;
            bVar.a(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith(f6072u)) {
            bVar.f6112f = new a(bVar);
        } else if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith(f6074w)) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    private void l() {
        String strW;
        String strSubstring;
        com.anythink.core.common.n.c.e eVarA = n.a(this.f6081h.a(this.f6092x));
        try {
            String strW2 = eVarA.w();
            String strW3 = eVarA.w();
            String strW4 = eVarA.w();
            String strW5 = eVarA.w();
            String strW6 = eVarA.w();
            if (!f6066d.equals(strW2) || !"1".equals(strW3) || !Integer.toString(this.f6075A).equals(strW4) || !Integer.toString(this.f6083j).equals(strW5) || !"".equals(strW6)) {
                throw new IOException("unexpected journal header: [" + strW2 + ", " + strW3 + ", " + strW5 + ", " + strW6 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    strW = eVarA.w();
                    int iIndexOf = strW.indexOf(32);
                    if (iIndexOf == -1) {
                        throw new IOException("unexpected journal line: ".concat(strW));
                    }
                    int i3 = iIndexOf + 1;
                    int iIndexOf2 = strW.indexOf(32, i3);
                    if (iIndexOf2 == -1) {
                        strSubstring = strW.substring(i3);
                        if (iIndexOf == 6 && strW.startsWith(f6073v)) {
                            this.f6085l.remove(strSubstring);
                        }
                        i2++;
                    } else {
                        strSubstring = strW.substring(i3, iIndexOf2);
                    }
                    b bVar = this.f6085l.get(strSubstring);
                    if (bVar == null) {
                        bVar = new b(strSubstring);
                        this.f6085l.put(strSubstring, bVar);
                    }
                    if (iIndexOf2 != -1 && iIndexOf == 5 && strW.startsWith(f6071t)) {
                        String[] strArrSplit = strW.substring(iIndexOf2 + 1).split(" ");
                        bVar.f6111e = true;
                        bVar.f6112f = null;
                        bVar.a(strArrSplit);
                    } else if (iIndexOf2 == -1 && iIndexOf == 5 && strW.startsWith(f6072u)) {
                        bVar.f6112f = new a(bVar);
                    } else if (iIndexOf2 != -1 || iIndexOf != 4 || !strW.startsWith(f6074w)) {
                        break;
                    }
                    i2++;
                } catch (EOFException unused) {
                    this.f6086m = i2 - this.f6085l.size();
                    if (eVarA.g()) {
                        this.f6084k = m();
                    } else {
                        b();
                    }
                    eVarA.close();
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(strW));
        } catch (Throwable th) {
            try {
                eVarA.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private com.anythink.core.common.n.c.d m() {
        return n.a(new e(this.f6081h.c(this.f6092x)) { // from class: com.anythink.core.common.n.b.a.a.d.2

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f6096a = true;

            @Override // com.anythink.core.common.n.b.a.a.e
            public final void b() {
                if (!f6096a && !Thread.holdsLock(d.this)) {
                    throw new AssertionError();
                }
                d.this.f6087n = true;
            }
        });
    }

    private void n() {
        this.f6081h.d(this.f6093y);
        Iterator<b> it = this.f6085l.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i2 = 0;
            if (next.f6112f == null) {
                while (i2 < this.f6083j) {
                    this.f6077C += next.f6108b[i2];
                    i2++;
                }
            } else {
                next.f6112f = null;
                while (i2 < this.f6083j) {
                    this.f6081h.d(next.f6109c[i2]);
                    this.f6081h.d(next.f6110d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    private synchronized void o() {
        if (g()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void a() {
        try {
            if (!f6070s && !Thread.holdsLock(this)) {
                throw new AssertionError();
            }
            if (this.f6088o) {
                return;
            }
            if (this.f6081h.e(this.f6094z)) {
                if (this.f6081h.e(this.f6092x)) {
                    this.f6081h.d(this.f6094z);
                } else {
                    this.f6081h.a(this.f6094z, this.f6092x);
                }
            }
            if (this.f6081h.e(this.f6092x)) {
                try {
                    l();
                    n();
                    this.f6088o = true;
                    return;
                } catch (IOException e2) {
                    com.anythink.core.common.n.b.a.g.c.e().a(5, "DiskLruCache " + this.f6082i + " is corrupt: " + e2.getMessage() + ", removing", e2);
                    try {
                        i();
                        this.f6089p = false;
                    } catch (Throwable th) {
                        this.f6089p = false;
                        throw th;
                    }
                }
            }
            b();
            this.f6088o = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void b() {
        try {
            com.anythink.core.common.n.c.d dVar = this.f6084k;
            if (dVar != null) {
                dVar.close();
            }
            com.anythink.core.common.n.c.d dVarA = n.a(this.f6081h.b(this.f6093y));
            try {
                dVarA.b(f6066d).l(10);
                dVarA.b("1").l(10);
                dVarA.o(this.f6075A).l(10);
                dVarA.o(this.f6083j).l(10);
                dVarA.l(10);
                for (b bVar : this.f6085l.values()) {
                    if (bVar.f6112f != null) {
                        dVarA.b(f6072u).l(32);
                        dVarA.b(bVar.f6107a);
                        dVarA.l(10);
                    } else {
                        dVarA.b(f6071t).l(32);
                        dVarA.b(bVar.f6107a);
                        bVar.a(dVarA);
                        dVarA.l(10);
                    }
                }
                dVarA.close();
                if (this.f6081h.e(this.f6092x)) {
                    this.f6081h.a(this.f6092x, this.f6094z);
                }
                this.f6081h.a(this.f6093y, this.f6092x);
                this.f6081h.d(this.f6094z);
                this.f6084k = m();
                this.f6087n = false;
                this.f6091r = false;
            } finally {
                try {
                    dVarA.close();
                } catch (Throwable th) {
                    th.addSuppressed(th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final File c() {
        return this.f6082i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f6088o && !this.f6089p) {
                for (b bVar : (b[]) this.f6085l.values().toArray(new b[this.f6085l.size()])) {
                    a aVar = bVar.f6112f;
                    if (aVar != null) {
                        aVar.c();
                    }
                }
                h();
                this.f6084k.close();
                this.f6084k = null;
                this.f6089p = true;
                return;
            }
            this.f6089p = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long e() {
        a();
        return this.f6077C;
    }

    public final boolean f() {
        int i2 = this.f6086m;
        return i2 >= 2000 && i2 >= this.f6085l.size();
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.f6088o) {
            o();
            h();
            this.f6084k.flush();
        }
    }

    public final synchronized boolean g() {
        return this.f6089p;
    }

    public final void h() {
        while (this.f6077C > this.f6076B) {
            a(this.f6085l.values().iterator().next());
        }
        this.f6090q = false;
    }

    public final void i() {
        close();
        this.f6081h.g(this.f6082i);
    }

    public final synchronized void j() {
        try {
            a();
            for (b bVar : (b[]) this.f6085l.values().toArray(new b[this.f6085l.size()])) {
                a(bVar);
            }
            this.f6090q = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Iterator<c> k() {
        a();
        return new Iterator<c>() { // from class: com.anythink.core.common.n.b.a.a.d.3

            /* renamed from: a, reason: collision with root package name */
            final Iterator<b> f6098a;

            /* renamed from: b, reason: collision with root package name */
            c f6099b;

            /* renamed from: c, reason: collision with root package name */
            c f6100c;

            {
                this.f6098a = new ArrayList(d.this.f6085l.values()).iterator();
            }

            private c a() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                c cVar = this.f6099b;
                this.f6100c = cVar;
                this.f6099b = null;
                return cVar;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                c cVarA;
                if (this.f6099b != null) {
                    return true;
                }
                synchronized (d.this) {
                    try {
                        if (d.this.f6089p) {
                            return false;
                        }
                        while (this.f6098a.hasNext()) {
                            b next = this.f6098a.next();
                            if (next.f6111e && (cVarA = next.a()) != null) {
                                this.f6099b = cVarA;
                                return true;
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // java.util.Iterator
            public final /* synthetic */ c next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                c cVar = this.f6099b;
                this.f6100c = cVar;
                this.f6099b = null;
                return cVar;
            }

            @Override // java.util.Iterator
            public final void remove() {
                c cVar = this.f6100c;
                if (cVar == null) {
                    throw new IllegalStateException("remove() before next()");
                }
                try {
                    d.this.c(cVar.f6116b);
                } catch (IOException unused) {
                } finally {
                    this.f6100c = null;
                }
            }
        };
    }

    public final synchronized boolean c(String str) {
        a();
        o();
        e(str);
        b bVar = this.f6085l.get(str);
        if (bVar == null) {
            return false;
        }
        a(bVar);
        if (this.f6077C <= this.f6076B) {
            this.f6090q = false;
        }
        return true;
    }

    private static void e(String str) {
        if (f6069g.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public final class a {

        /* renamed from: a, reason: collision with root package name */
        final b f6102a;

        /* renamed from: b, reason: collision with root package name */
        final boolean[] f6103b;

        /* renamed from: d, reason: collision with root package name */
        private boolean f6105d;

        public a(b bVar) {
            this.f6102a = bVar;
            this.f6103b = bVar.f6111e ? null : new boolean[d.this.f6083j];
        }

        private w b(int i2) {
            synchronized (d.this) {
                if (this.f6105d) {
                    throw new IllegalStateException();
                }
                b bVar = this.f6102a;
                if (!bVar.f6111e || bVar.f6112f != this) {
                    return null;
                }
                try {
                    return d.this.f6081h.a(bVar.f6109c[i2]);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        private void d() {
            synchronized (d.this) {
                if (!this.f6105d && this.f6102a.f6112f == this) {
                    try {
                        d.this.a(this, false);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public final void a() {
            if (this.f6102a.f6112f != this) {
                return;
            }
            int i2 = 0;
            while (true) {
                d dVar = d.this;
                if (i2 >= dVar.f6083j) {
                    this.f6102a.f6112f = null;
                    return;
                } else {
                    try {
                        dVar.f6081h.d(this.f6102a.f6110d[i2]);
                    } catch (IOException unused) {
                    }
                    i2++;
                }
            }
        }

        public final void c() {
            synchronized (d.this) {
                try {
                    if (this.f6105d) {
                        throw new IllegalStateException();
                    }
                    if (this.f6102a.f6112f == this) {
                        d.this.a(this, false);
                    }
                    this.f6105d = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final v a(int i2) {
            synchronized (d.this) {
                try {
                    if (!this.f6105d) {
                        b bVar = this.f6102a;
                        if (bVar.f6112f != this) {
                            return n.a();
                        }
                        if (!bVar.f6111e) {
                            this.f6103b[i2] = true;
                        }
                        try {
                            return new e(d.this.f6081h.b(bVar.f6110d[i2])) { // from class: com.anythink.core.common.n.b.a.a.d.a.1
                                @Override // com.anythink.core.common.n.b.a.a.e
                                public final void b() {
                                    synchronized (d.this) {
                                        a.this.a();
                                    }
                                }
                            };
                        } catch (FileNotFoundException unused) {
                            return n.a();
                        }
                    }
                    throw new IllegalStateException();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b() {
            synchronized (d.this) {
                try {
                    if (!this.f6105d) {
                        if (this.f6102a.f6112f == this) {
                            d.this.a(this, true);
                        }
                        this.f6105d = true;
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final class b {

        /* renamed from: a, reason: collision with root package name */
        final String f6107a;

        /* renamed from: b, reason: collision with root package name */
        final long[] f6108b;

        /* renamed from: c, reason: collision with root package name */
        final File[] f6109c;

        /* renamed from: d, reason: collision with root package name */
        final File[] f6110d;

        /* renamed from: e, reason: collision with root package name */
        boolean f6111e;

        /* renamed from: f, reason: collision with root package name */
        a f6112f;

        /* renamed from: g, reason: collision with root package name */
        long f6113g;

        public b(String str) {
            this.f6107a = str;
            int i2 = d.this.f6083j;
            this.f6108b = new long[i2];
            this.f6109c = new File[i2];
            this.f6110d = new File[i2];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i3 = 0; i3 < d.this.f6083j; i3++) {
                sb.append(i3);
                this.f6109c[i3] = new File(d.this.f6082i, sb.toString());
                sb.append(".tmp");
                this.f6110d[i3] = new File(d.this.f6082i, sb.toString());
                sb.setLength(length);
            }
        }

        private static IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final void a(String[] strArr) throws IOException {
            if (strArr.length != d.this.f6083j) {
                throw b(strArr);
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                try {
                    this.f6108b[i2] = Long.parseLong(strArr[i2]);
                } catch (NumberFormatException unused) {
                    throw b(strArr);
                }
            }
        }

        public final void a(com.anythink.core.common.n.c.d dVar) {
            for (long j2 : this.f6108b) {
                dVar.l(32).o(j2);
            }
        }

        public final c a() throws IOException {
            w wVar;
            if (Thread.holdsLock(d.this)) {
                w[] wVarArr = new w[d.this.f6083j];
                long[] jArr = (long[]) this.f6108b.clone();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    try {
                        d dVar = d.this;
                        if (i3 < dVar.f6083j) {
                            wVarArr[i3] = dVar.f6081h.a(this.f6109c[i3]);
                            i3++;
                        } else {
                            return dVar.new c(this.f6107a, this.f6113g, wVarArr, jArr);
                        }
                    } catch (FileNotFoundException unused) {
                        while (true) {
                            d dVar2 = d.this;
                            if (i2 < dVar2.f6083j && (wVar = wVarArr[i2]) != null) {
                                com.anythink.core.common.n.b.a.c.a(wVar);
                                i2++;
                            } else {
                                try {
                                    dVar2.a(this);
                                    return null;
                                } catch (IOException unused2) {
                                    return null;
                                }
                            }
                        }
                    }
                }
            } else {
                throw new AssertionError();
            }
        }
    }

    public final synchronized long d() {
        return this.f6076B;
    }

    public static d a(com.anythink.core.common.n.b.a.f.a aVar, File file, long j2) {
        if (j2 > 0) {
            return new d(aVar, file, j2, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.anythink.core.common.n.b.a.c.a(aa.f6658a + " DiskLruCache", true)));
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final synchronized c a(String str) {
        a();
        o();
        e(str);
        b bVar = this.f6085l.get(str);
        if (bVar != null && bVar.f6111e) {
            c cVarA = bVar.a();
            if (cVarA == null) {
                return null;
            }
            this.f6086m++;
            this.f6084k.b(f6074w).l(32).b(str).l(10);
            if (f()) {
                this.f6079E.execute(this.f6080F);
            }
            return cVarA;
        }
        return null;
    }

    public final a b(String str) {
        return a(str, -1L);
    }

    public final synchronized a a(String str, long j2) {
        a();
        o();
        e(str);
        b bVar = this.f6085l.get(str);
        if (j2 != -1 && (bVar == null || bVar.f6113g != j2)) {
            return null;
        }
        if (bVar != null && bVar.f6112f != null) {
            return null;
        }
        if (!this.f6090q && !this.f6091r) {
            this.f6084k.b(f6072u).l(32).b(str).l(10);
            this.f6084k.flush();
            if (this.f6087n) {
                return null;
            }
            if (bVar == null) {
                bVar = new b(str);
                this.f6085l.put(str, bVar);
            }
            a aVar = new a(bVar);
            bVar.f6112f = aVar;
            return aVar;
        }
        this.f6079E.execute(this.f6080F);
        return null;
    }

    private synchronized void a(long j2) {
        this.f6076B = j2;
        if (this.f6088o) {
            this.f6079E.execute(this.f6080F);
        }
    }

    public final synchronized void a(a aVar, boolean z2) {
        b bVar = aVar.f6102a;
        if (bVar.f6112f == aVar) {
            if (z2 && !bVar.f6111e) {
                for (int i2 = 0; i2 < this.f6083j; i2++) {
                    if (aVar.f6103b[i2]) {
                        if (!this.f6081h.e(bVar.f6110d[i2])) {
                            aVar.c();
                            return;
                        }
                    } else {
                        aVar.c();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                    }
                }
            }
            for (int i3 = 0; i3 < this.f6083j; i3++) {
                File file = bVar.f6110d[i3];
                if (z2) {
                    if (this.f6081h.e(file)) {
                        File file2 = bVar.f6109c[i3];
                        this.f6081h.a(file, file2);
                        long j2 = bVar.f6108b[i3];
                        long jF = this.f6081h.f(file2);
                        bVar.f6108b[i3] = jF;
                        this.f6077C = (this.f6077C - j2) + jF;
                    }
                } else {
                    this.f6081h.d(file);
                }
            }
            this.f6086m++;
            bVar.f6112f = null;
            if (bVar.f6111e | z2) {
                bVar.f6111e = true;
                this.f6084k.b(f6071t).l(32);
                this.f6084k.b(bVar.f6107a);
                bVar.a(this.f6084k);
                this.f6084k.l(10);
                if (z2) {
                    long j3 = this.f6078D;
                    this.f6078D = 1 + j3;
                    bVar.f6113g = j3;
                }
            } else {
                this.f6085l.remove(bVar.f6107a);
                this.f6084k.b(f6073v).l(32);
                this.f6084k.b(bVar.f6107a);
                this.f6084k.l(10);
            }
            this.f6084k.flush();
            if (this.f6077C > this.f6076B || f()) {
                this.f6079E.execute(this.f6080F);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final boolean a(b bVar) {
        a aVar = bVar.f6112f;
        if (aVar != null) {
            aVar.a();
        }
        for (int i2 = 0; i2 < this.f6083j; i2++) {
            this.f6081h.d(bVar.f6109c[i2]);
            long j2 = this.f6077C;
            long[] jArr = bVar.f6108b;
            this.f6077C = j2 - jArr[i2];
            jArr[i2] = 0;
        }
        this.f6086m++;
        this.f6084k.b(f6073v).l(32).b(bVar.f6107a).l(10);
        this.f6085l.remove(bVar.f6107a);
        if (f()) {
            this.f6079E.execute(this.f6080F);
        }
        return true;
    }
}
