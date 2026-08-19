package com.anythink.core.common.res;

import com.anythink.core.common.d.i;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    static final String f7320a = "journal";

    /* renamed from: b, reason: collision with root package name */
    static final String f7321b = "journal.tmp";

    /* renamed from: c, reason: collision with root package name */
    static final String f7322c = "libcore.io.DiskLruCache";

    /* renamed from: d, reason: collision with root package name */
    static final String f7323d = "1";

    /* renamed from: e, reason: collision with root package name */
    static final long f7324e = -1;

    /* renamed from: f, reason: collision with root package name */
    private static final String f7325f = "CLEAN";

    /* renamed from: g, reason: collision with root package name */
    private static final String f7326g = "DIRTY";

    /* renamed from: h, reason: collision with root package name */
    private static final String f7327h = "REMOVE";

    /* renamed from: i, reason: collision with root package name */
    private static final String f7328i = "READ";

    /* renamed from: j, reason: collision with root package name */
    private static final Charset f7329j = Charset.forName("UTF-8");

    /* renamed from: k, reason: collision with root package name */
    private static final int f7330k = 8192;

    /* renamed from: l, reason: collision with root package name */
    private final File f7331l;

    /* renamed from: m, reason: collision with root package name */
    private final File f7332m;

    /* renamed from: n, reason: collision with root package name */
    private final File f7333n;

    /* renamed from: p, reason: collision with root package name */
    private final long f7335p;

    /* renamed from: s, reason: collision with root package name */
    private Writer f7338s;

    /* renamed from: u, reason: collision with root package name */
    private int f7340u;

    /* renamed from: r, reason: collision with root package name */
    private long f7337r = 0;

    /* renamed from: t, reason: collision with root package name */
    private final LinkedHashMap<String, b> f7339t = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: v, reason: collision with root package name */
    private long f7341v = 0;

    /* renamed from: w, reason: collision with root package name */
    private final ExecutorService f7342w = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: x, reason: collision with root package name */
    private final Callable<Void> f7343x = new Callable<Void>() { // from class: com.anythink.core.common.res.a.1
        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            synchronized (a.this) {
                try {
                    if (a.this.f7338s == null) {
                        return null;
                    }
                    a.this.l();
                    if (a.this.h()) {
                        a.this.d();
                        a.e(a.this);
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    /* renamed from: o, reason: collision with root package name */
    private final int f7334o = 1;

    /* renamed from: q, reason: collision with root package name */
    private final int f7336q = 1;

    /* renamed from: com.anythink.core.common.res.a$a, reason: collision with other inner class name */
    public final class C0073a {

        /* renamed from: b, reason: collision with root package name */
        private final b f7351b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f7352c;

        /* renamed from: com.anythink.core.common.res.a$a$a, reason: collision with other inner class name */
        public class C0074a extends FilterOutputStream {
            public /* synthetic */ C0074a(C0073a c0073a, OutputStream outputStream, byte b3) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0073a.b(C0073a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() throws IOException {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0073a.b(C0073a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i2) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(i2);
                } catch (IOException unused) {
                    C0073a.b(C0073a.this);
                }
            }

            private C0074a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i2, int i3) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i2, i3);
                } catch (IOException unused) {
                    C0073a.b(C0073a.this);
                }
            }
        }

        public /* synthetic */ C0073a(a aVar, b bVar, byte b3) {
            this(bVar);
        }

        public static /* synthetic */ boolean b(C0073a c0073a) {
            c0073a.f7352c = true;
            return true;
        }

        private String c(int i2) {
            InputStream inputStreamB = b(i2);
            if (inputStreamB != null) {
                return a.a(inputStreamB);
            }
            return null;
        }

        private C0073a(b bVar) {
            this.f7351b = bVar;
        }

        private InputStream b(int i2) {
            synchronized (a.this) {
                try {
                    if (this.f7351b.f7380e != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f7351b.f7379d) {
                        return null;
                    }
                    return new FileInputStream(this.f7351b.a(i2));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final OutputStream a(int i2) {
            C0074a c0074a;
            synchronized (a.this) {
                try {
                    if (this.f7351b.f7380e != this) {
                        throw new IllegalStateException();
                    }
                    c0074a = new C0074a(this, new FileOutputStream(this.f7351b.b(i2)), (byte) 0);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c0074a;
        }

        private void a(int i2, String str) throws Throwable {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(a(i2), a.f7329j);
                try {
                    outputStreamWriter2.write(str);
                    a.a(outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    a.a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public final void b() {
            a.this.a(this, false);
        }

        public final void a() {
            if (this.f7352c) {
                a.this.a(this, false);
                a.this.c(this.f7351b.f7377b);
            } else {
                a.this.a(this, true);
            }
        }
    }

    public final class b {

        /* renamed from: b, reason: collision with root package name */
        private final String f7377b;

        /* renamed from: c, reason: collision with root package name */
        private final long[] f7378c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f7379d;

        /* renamed from: e, reason: collision with root package name */
        private C0073a f7380e;

        /* renamed from: f, reason: collision with root package name */
        private long f7381f;

        public /* synthetic */ b(a aVar, String str, byte b3) {
            this(str);
        }

        private b(String str) {
            this.f7377b = str;
            this.f7378c = new long[a.this.f7336q];
        }

        private static IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public static /* synthetic */ boolean a(b bVar) {
            bVar.f7379d = true;
            return true;
        }

        public final File b(int i2) {
            return new File(a.this.f7331l, this.f7377b + i.f2495E + i2 + ".tmp");
        }

        public final String a() {
            StringBuilder sb = new StringBuilder();
            for (long j2 : this.f7378c) {
                sb.append(' ');
                sb.append(j2);
            }
            return sb.toString();
        }

        private void a(String[] strArr) throws IOException {
            if (strArr.length == a.this.f7336q) {
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    try {
                        this.f7378c[i2] = Long.parseLong(strArr[i2]);
                    } catch (NumberFormatException unused) {
                        throw b(strArr);
                    }
                }
                return;
            }
            throw b(strArr);
        }

        public final File a(int i2) {
            return new File(a.this.f7331l, this.f7377b + i.f2495E + i2);
        }

        public static /* synthetic */ void a(b bVar, String[] strArr) throws IOException {
            if (strArr.length == a.this.f7336q) {
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    try {
                        bVar.f7378c[i2] = Long.parseLong(strArr[i2]);
                    } catch (NumberFormatException unused) {
                        throw b(strArr);
                    }
                }
                return;
            }
            throw b(strArr);
        }
    }

    public final class c implements Closeable {

        /* renamed from: b, reason: collision with root package name */
        private final String f7383b;

        /* renamed from: c, reason: collision with root package name */
        private final long f7384c;

        /* renamed from: d, reason: collision with root package name */
        private final InputStream[] f7385d;

        public /* synthetic */ c(a aVar, String str, long j2, InputStream[] inputStreamArr, byte b3) {
            this(str, j2, inputStreamArr);
        }

        private C0073a b() {
            return a.this.a(this.f7383b, this.f7384c);
        }

        public final InputStream a() {
            return this.f7385d[0];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            for (InputStream inputStream : this.f7385d) {
                a.a((Closeable) inputStream);
            }
        }

        private c(String str, long j2, InputStream[] inputStreamArr) {
            this.f7383b = str;
            this.f7384c = j2;
            this.f7385d = inputStreamArr;
        }

        private String a(int i2) {
            return a.a(this.f7385d[i2]);
        }
    }

    private a(File file, long j2) {
        this.f7331l = file;
        this.f7332m = new File(file, f7320a);
        this.f7333n = new File(file, f7321b);
        this.f7335p = j2;
    }

    public static /* synthetic */ int e(a aVar) {
        aVar.f7340u = 0;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        int i2 = this.f7340u;
        return i2 >= 2000 && i2 >= this.f7339t.size();
    }

    private boolean i() {
        return this.f7338s == null;
    }

    private void j() {
        if (this.f7338s == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private synchronized void k() {
        j();
        l();
        this.f7338s.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        while (this.f7337r > this.f7335p) {
            c(this.f7339t.entrySet().iterator().next().getKey());
        }
    }

    private void m() throws IOException {
        close();
        a(this.f7331l);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f7338s == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f7339t.values());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                b bVar = (b) obj;
                if (bVar.f7380e != null) {
                    bVar.f7380e.b();
                }
            }
            l();
            this.f7338s.close();
            this.f7338s = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static String b(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int i2 = inputStream.read();
            if (i2 == -1) {
                throw new EOFException();
            }
            if (i2 == 10) {
                int length = sb.length();
                if (length > 0) {
                    int i3 = length - 1;
                    if (sb.charAt(i3) == '\r') {
                        sb.setLength(i3);
                    }
                }
                return sb.toString();
            }
            sb.append((char) i2);
        }
    }

    private void c() throws IOException {
        b(this.f7333n);
        Iterator<b> it = this.f7339t.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i2 = 0;
            if (next.f7380e == null) {
                while (i2 < this.f7336q) {
                    this.f7337r += next.f7378c[i2];
                    i2++;
                }
            } else {
                next.f7380e = null;
                while (i2 < this.f7336q) {
                    b(next.a(i2));
                    b(next.b(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    private void d(String str) throws IOException {
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length < 2) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        String str2 = strArrSplit[1];
        byte b3 = 0;
        if (strArrSplit[0].equals(f7327h) && strArrSplit.length == 2) {
            this.f7339t.remove(str2);
            return;
        }
        b bVar = this.f7339t.get(str2);
        if (bVar == null) {
            bVar = new b(this, str2, b3);
            this.f7339t.put(str2, bVar);
        }
        if (!strArrSplit[0].equals(f7325f) || strArrSplit.length != this.f7336q + 2) {
            if (strArrSplit[0].equals(f7326g) && strArrSplit.length == 2) {
                bVar.f7380e = new C0073a(this, bVar, b3);
                return;
            } else {
                if (!strArrSplit[0].equals(f7328i) || strArrSplit.length != 2) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        b.a(bVar);
        bVar.f7380e = null;
        int length = strArrSplit.length;
        int length2 = strArrSplit.length;
        if (2 > length) {
            throw new IllegalArgumentException();
        }
        if (2 > length2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = length - 2;
        int iMin = Math.min(i2, length2 - 2);
        Object[] objArr = (Object[]) Array.newInstance(strArrSplit.getClass().getComponentType(), i2);
        System.arraycopy(strArrSplit, 2, objArr, 0, iMin);
        b.a(bVar, (String[]) objArr);
    }

    private File e() {
        return this.f7331l;
    }

    private long f() {
        return this.f7335p;
    }

    private synchronized long g() {
        return this.f7337r;
    }

    private static void e(String str) {
        if (str.contains(" ") || str.contains("\n") || str.contains("\r")) {
            throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + str + "\"");
        }
    }

    private static <T> T[] a(T[] tArr, int i2) {
        int length = tArr.length;
        if (2 > i2) {
            throw new IllegalArgumentException();
        }
        if (2 <= length) {
            int i3 = i2 - 2;
            int iMin = Math.min(i3, length - 2);
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i3));
            System.arraycopy(tArr, 2, tArr2, 0, iMin);
            return tArr2;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    private void b() throws IOException {
        String strB;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.f7332m), 8192);
        try {
            String strB2 = b(bufferedInputStream);
            String strB3 = b(bufferedInputStream);
            String strB4 = b(bufferedInputStream);
            String strB5 = b(bufferedInputStream);
            String strB6 = b(bufferedInputStream);
            if (!f7322c.equals(strB2) || !"1".equals(strB3) || !Integer.toString(this.f7334o).equals(strB4) || !Integer.toString(this.f7336q).equals(strB5) || !"".equals(strB6)) {
                throw new IOException("unexpected journal header: [" + strB2 + ", " + strB3 + ", " + strB5 + ", " + strB6 + "]");
            }
            while (true) {
                try {
                    strB = b(bufferedInputStream);
                    String[] strArrSplit = strB.split(" ");
                    if (strArrSplit.length >= 2) {
                        String str = strArrSplit[1];
                        byte b3 = 0;
                        if (strArrSplit[0].equals(f7327h) && strArrSplit.length == 2) {
                            this.f7339t.remove(str);
                        } else {
                            b bVar = this.f7339t.get(str);
                            if (bVar == null) {
                                bVar = new b(this, str, b3);
                                this.f7339t.put(str, bVar);
                            }
                            if (strArrSplit[0].equals(f7325f) && strArrSplit.length == this.f7336q + 2) {
                                b.a(bVar);
                                bVar.f7380e = null;
                                int length = strArrSplit.length;
                                int length2 = strArrSplit.length;
                                if (2 > length) {
                                    throw new IllegalArgumentException();
                                }
                                if (2 <= length2) {
                                    int i2 = length - 2;
                                    int iMin = Math.min(i2, length2 - 2);
                                    Object[] objArr = (Object[]) Array.newInstance(strArrSplit.getClass().getComponentType(), i2);
                                    System.arraycopy(strArrSplit, 2, objArr, 0, iMin);
                                    b.a(bVar, (String[]) objArr);
                                } else {
                                    throw new ArrayIndexOutOfBoundsException();
                                }
                            } else if (strArrSplit[0].equals(f7326g) && strArrSplit.length == 2) {
                                bVar.f7380e = new C0073a(this, bVar, b3);
                            } else if (!strArrSplit[0].equals(f7328i) || strArrSplit.length != 2) {
                                break;
                            }
                        }
                    } else {
                        throw new IOException("unexpected journal line: ".concat(strB));
                    }
                } catch (EOFException unused) {
                    a((Closeable) bufferedInputStream);
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(strB));
        } catch (Throwable th) {
            a((Closeable) bufferedInputStream);
            throw th;
        }
    }

    private static String a(Reader reader) throws IOException {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int i2 = reader.read(cArr);
                if (i2 != -1) {
                    stringWriter.write(cArr, 0, i2);
                } else {
                    String string = stringWriter.toString();
                    reader.close();
                    return string;
                }
            }
        } catch (Throwable th) {
            reader.close();
            throw th;
        }
    }

    public final synchronized boolean c(String str) {
        try {
            j();
            e(str);
            b bVar = this.f7339t.get(str);
            if (bVar != null && bVar.f7380e == null) {
                for (int i2 = 0; i2 < this.f7336q; i2++) {
                    File fileA = bVar.a(i2);
                    if (fileA.delete()) {
                        this.f7337r -= bVar.f7378c[i2];
                        bVar.f7378c[i2] = 0;
                    } else {
                        throw new IOException("failed to delete ".concat(String.valueOf(fileA)));
                    }
                }
                this.f7340u++;
                this.f7338s.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f7339t.remove(str);
                if (h()) {
                    this.f7342w.submit(this.f7343x);
                }
                return true;
            }
            return false;
        } finally {
        }
    }

    public static void a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    private static void a(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
                }
            }
            return;
        }
        throw new IllegalArgumentException("not a directory: ".concat(String.valueOf(file)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        try {
            Writer writer = this.f7338s;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.f7333n), 8192);
            bufferedWriter.write(f7322c);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f7334o));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f7336q));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (b bVar : this.f7339t.values()) {
                if (bVar.f7380e != null) {
                    bufferedWriter.write("DIRTY " + bVar.f7377b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + bVar.f7377b + bVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            this.f7333n.renameTo(this.f7332m);
            this.f7338s = new BufferedWriter(new FileWriter(this.f7332m, true), 8192);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static a a(File file, long j2) throws IOException {
        if (j2 > 0) {
            a aVar = new a(file, j2);
            if (aVar.f7332m.exists()) {
                try {
                    aVar.b();
                    aVar.c();
                    aVar.f7338s = new BufferedWriter(new FileWriter(aVar.f7332m, true), 8192);
                    return aVar;
                } catch (IOException unused) {
                    aVar.close();
                    a(aVar.f7331l);
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, j2);
            aVar2.d();
            return aVar2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private static String c(InputStream inputStream) {
        return a((Reader) new InputStreamReader(inputStream, f7329j));
    }

    public final synchronized c a(String str) throws Throwable {
        Throwable th;
        try {
            try {
                j();
                e(str);
                b bVar = this.f7339t.get(str);
                if (bVar == null) {
                    return null;
                }
                if (!bVar.f7379d) {
                    return null;
                }
                InputStream[] inputStreamArr = new InputStream[this.f7336q];
                for (int i2 = 0; i2 < this.f7336q; i2++) {
                    try {
                        try {
                            inputStreamArr[i2] = new FileInputStream(bVar.a(i2));
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (FileNotFoundException unused) {
                        return null;
                    }
                }
                this.f7340u++;
                this.f7338s.append((CharSequence) ("READ " + str + '\n'));
                if (h()) {
                    this.f7342w.submit(this.f7343x);
                }
                this.f7338s.flush();
                return new c(this, str, bVar.f7381f, inputStreamArr, (byte) 0);
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    private static void b(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public final C0073a b(String str) {
        return a(str, -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized C0073a a(String str, long j2) {
        j();
        e(str);
        b bVar = this.f7339t.get(str);
        if (j2 != -1 && (bVar == null || bVar.f7381f != j2)) {
            return null;
        }
        byte b3 = 0;
        if (bVar != null) {
            if (bVar.f7380e != null) {
                return null;
            }
        } else {
            bVar = new b(this, str, b3);
            this.f7339t.put(str, bVar);
        }
        C0073a c0073a = new C0073a(this, bVar, b3);
        bVar.f7380e = c0073a;
        this.f7338s.write("DIRTY " + str + '\n');
        this.f7338s.flush();
        return c0073a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(C0073a c0073a, boolean z2) {
        try {
            b bVar = c0073a.f7351b;
            if (bVar.f7380e == c0073a) {
                if (z2 && !bVar.f7379d) {
                    for (int i2 = 0; i2 < this.f7336q; i2++) {
                        if (!bVar.b(i2).exists()) {
                            c0073a.b();
                            throw new IllegalStateException("edit didn't create file ".concat(String.valueOf(i2)));
                        }
                    }
                }
                for (int i3 = 0; i3 < this.f7336q; i3++) {
                    File fileB = bVar.b(i3);
                    if (z2) {
                        if (fileB.exists()) {
                            File fileA = bVar.a(i3);
                            fileB.renameTo(fileA);
                            long j2 = bVar.f7378c[i3];
                            long length = fileA.length();
                            bVar.f7378c[i3] = length;
                            this.f7337r = (this.f7337r - j2) + length;
                        }
                    } else {
                        b(fileB);
                    }
                }
                this.f7340u++;
                bVar.f7380e = null;
                if (!(bVar.f7379d | z2)) {
                    this.f7339t.remove(bVar.f7377b);
                    this.f7338s.write("REMOVE " + bVar.f7377b + '\n');
                } else {
                    b.a(bVar);
                    this.f7338s.write("CLEAN " + bVar.f7377b + bVar.a() + '\n');
                    if (z2) {
                        long j3 = this.f7341v;
                        this.f7341v = 1 + j3;
                        bVar.f7381f = j3;
                    }
                }
                this.f7338s.flush();
                if (this.f7337r > this.f7335p || h()) {
                    this.f7342w.submit(this.f7343x);
                }
            } else {
                throw new IllegalStateException();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static /* synthetic */ String a(InputStream inputStream) {
        return a((Reader) new InputStreamReader(inputStream, f7329j));
    }
}
