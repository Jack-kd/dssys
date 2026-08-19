package com.smartdigimkt.t3;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class f implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f44286a;

    /* renamed from: b, reason: collision with root package name */
    public final File f44287b;

    /* renamed from: c, reason: collision with root package name */
    public final File f44288c;

    /* renamed from: e, reason: collision with root package name */
    public final long f44290e;

    /* renamed from: h, reason: collision with root package name */
    public BufferedWriter f44293h;

    /* renamed from: j, reason: collision with root package name */
    public int f44295j;

    /* renamed from: g, reason: collision with root package name */
    public long f44292g = 0;

    /* renamed from: i, reason: collision with root package name */
    public final LinkedHashMap f44294i = new LinkedHashMap(0, 0.75f, true);

    /* renamed from: k, reason: collision with root package name */
    public long f44296k = 0;

    /* renamed from: l, reason: collision with root package name */
    public final ThreadPoolExecutor f44297l = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: m, reason: collision with root package name */
    public final a f44298m = new a(this);

    /* renamed from: d, reason: collision with root package name */
    public final int f44289d = 1;

    /* renamed from: f, reason: collision with root package name */
    public final int f44291f = 1;

    static {
        Charset.forName("UTF-8");
    }

    public f(File file, long j2) {
        this.f44286a = file;
        this.f44287b = new File(file, "journal");
        this.f44288c = new File(file, "journal.tmp");
        this.f44290e = j2;
    }

    public static void a(f fVar, c cVar, boolean z2) {
        synchronized (fVar) {
            try {
                d dVar = cVar.f44277a;
                if (dVar.f44283d != cVar) {
                    throw new IllegalStateException();
                }
                if (z2 && !dVar.f44282c) {
                    for (int i2 = 0; i2 < fVar.f44291f; i2++) {
                        if (!dVar.b(i2).exists()) {
                            a(cVar.f44279c, cVar, false);
                            throw new IllegalStateException("edit didn't create file " + i2);
                        }
                    }
                }
                for (int i3 = 0; i3 < fVar.f44291f; i3++) {
                    File fileB = dVar.b(i3);
                    if (z2) {
                        if (fileB.exists()) {
                            File fileA = dVar.a(i3);
                            fileB.renameTo(fileA);
                            long j2 = dVar.f44281b[i3];
                            long length = fileA.length();
                            dVar.f44281b[i3] = length;
                            fVar.f44292g = (fVar.f44292g - j2) + length;
                        }
                    } else if (fileB.exists() && !fileB.delete()) {
                        throw new IOException();
                    }
                }
                fVar.f44295j++;
                dVar.f44283d = null;
                if (dVar.f44282c || z2) {
                    dVar.f44282c = true;
                    BufferedWriter bufferedWriter = fVar.f44293h;
                    StringBuilder sb = new StringBuilder("CLEAN ");
                    sb.append(dVar.f44280a);
                    StringBuilder sb2 = new StringBuilder();
                    for (long j3 : dVar.f44281b) {
                        sb2.append(' ');
                        sb2.append(j3);
                    }
                    sb.append(sb2.toString());
                    sb.append('\n');
                    bufferedWriter.write(sb.toString());
                    if (z2) {
                        fVar.f44296k++;
                    }
                } else {
                    fVar.f44294i.remove(dVar.f44280a);
                    fVar.f44293h.write("REMOVE " + dVar.f44280a + '\n');
                }
                fVar.f44293h.flush();
                if (fVar.f44292g > fVar.f44290e || fVar.a()) {
                    fVar.f44297l.submit(fVar.f44298m);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void e(String str) {
        if (str.contains(" ") || str.contains("\n") || str.contains("\r")) {
            throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + str + "\"");
        }
    }

    public final void b() throws IOException {
        File file = this.f44288c;
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
        Iterator it = this.f44294i.values().iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int i2 = 0;
            if (dVar.f44283d == null) {
                while (i2 < this.f44291f) {
                    this.f44292g += dVar.f44281b[i2];
                    i2++;
                }
            } else {
                dVar.f44283d = null;
                while (i2 < this.f44291f) {
                    File fileA = dVar.a(i2);
                    if (fileA.exists() && !fileA.delete()) {
                        throw new IOException();
                    }
                    File fileB = dVar.b(i2);
                    if (fileB.exists() && !fileB.delete()) {
                        throw new IOException();
                    }
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void c() throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.f44287b), 8192);
        try {
            String strA = a(bufferedInputStream);
            String strA2 = a(bufferedInputStream);
            String strA3 = a(bufferedInputStream);
            String strA4 = a(bufferedInputStream);
            String strA5 = a(bufferedInputStream);
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f44289d).equals(strA3) || !Integer.toString(this.f44291f).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            while (true) {
                try {
                    try {
                        c(a(bufferedInputStream));
                    } catch (EOFException unused) {
                        bufferedInputStream.close();
                        return;
                    }
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused2) {
                    return;
                }
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f44293h == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f44294i.values());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                c cVar = ((d) obj).f44283d;
                if (cVar != null) {
                    a(cVar.f44279c, cVar, false);
                }
            }
            while (this.f44292g > this.f44290e) {
                d((String) ((Map.Entry) this.f44294i.entrySet().iterator().next()).getKey());
            }
            this.f44293h.close();
            this.f44293h = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        try {
            BufferedWriter bufferedWriter = this.f44293h;
            if (bufferedWriter != null) {
                bufferedWriter.close();
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(this.f44288c), 8192);
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write("\n");
            bufferedWriter2.write("1");
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f44289d));
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f44291f));
            bufferedWriter2.write("\n");
            bufferedWriter2.write("\n");
            for (d dVar : this.f44294i.values()) {
                if (dVar.f44283d != null) {
                    bufferedWriter2.write("DIRTY " + dVar.f44280a + '\n');
                } else {
                    StringBuilder sb = new StringBuilder("CLEAN ");
                    sb.append(dVar.f44280a);
                    StringBuilder sb2 = new StringBuilder();
                    for (long j2 : dVar.f44281b) {
                        sb2.append(' ');
                        sb2.append(j2);
                    }
                    sb.append(sb2.toString());
                    sb.append('\n');
                    bufferedWriter2.write(sb.toString());
                }
            }
            bufferedWriter2.close();
            this.f44288c.renameTo(this.f44287b);
            this.f44293h = new BufferedWriter(new FileWriter(this.f44287b, true), 8192);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(String str) throws IOException {
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length >= 2) {
            String str2 = strArrSplit[1];
            if (strArrSplit[0].equals("REMOVE") && strArrSplit.length == 2) {
                this.f44294i.remove(str2);
                return;
            }
            d dVar = (d) this.f44294i.get(str2);
            if (dVar == null) {
                dVar = new d(this, str2);
                this.f44294i.put(str2, dVar);
            }
            if (strArrSplit[0].equals("CLEAN") && strArrSplit.length == this.f44291f + 2) {
                dVar.f44282c = true;
                dVar.f44283d = null;
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
                    String[] strArr = (String[]) objArr;
                    if (strArr.length == dVar.f44284e.f44291f) {
                        for (int i3 = 0; i3 < strArr.length; i3++) {
                            try {
                                dVar.f44281b[i3] = Long.parseLong(strArr[i3]);
                            } catch (NumberFormatException unused) {
                                throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
                            }
                        }
                        return;
                    }
                    throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            if (strArrSplit[0].equals("DIRTY") && strArrSplit.length == 2) {
                dVar.f44283d = new c(this, dVar);
                return;
            } else {
                if (!strArrSplit[0].equals("READ") || strArrSplit.length != 2) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    public final synchronized e b(String str) {
        if (this.f44293h != null) {
            e(str);
            d dVar = (d) this.f44294i.get(str);
            if (dVar == null) {
                return null;
            }
            if (!dVar.f44282c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f44291f];
            for (int i2 = 0; i2 < this.f44291f; i2++) {
                try {
                    inputStreamArr[i2] = new FileInputStream(dVar.a(i2));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
            this.f44295j++;
            this.f44293h.append((CharSequence) ("READ " + str + '\n'));
            if (a()) {
                this.f44297l.submit(this.f44298m);
            }
            this.f44293h.flush();
            return new e(inputStreamArr);
        }
        throw new IllegalStateException("cache is closed");
    }

    public final synchronized void d(String str) {
        try {
            if (this.f44293h != null) {
                e(str);
                d dVar = (d) this.f44294i.get(str);
                if (dVar != null && dVar.f44283d == null) {
                    for (int i2 = 0; i2 < this.f44291f; i2++) {
                        File fileA = dVar.a(i2);
                        if (fileA.delete()) {
                            long j2 = this.f44292g;
                            long[] jArr = dVar.f44281b;
                            this.f44292g = j2 - jArr[i2];
                            jArr[i2] = 0;
                        } else {
                            throw new IOException("failed to delete " + fileA);
                        }
                    }
                    this.f44295j++;
                    this.f44293h.append((CharSequence) ("REMOVE " + str + '\n'));
                    this.f44294i.remove(str);
                    if (a()) {
                        this.f44297l.submit(this.f44298m);
                    }
                    return;
                }
                return;
            }
            throw new IllegalStateException("cache is closed");
        } finally {
        }
    }

    public static String a(BufferedInputStream bufferedInputStream) throws IOException {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int i2 = bufferedInputStream.read();
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

    public static void a(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IllegalArgumentException("not a directory: " + file);
    }

    public static f a(File file, long j2) throws IOException {
        if (j2 > 0) {
            f fVar = new f(file, j2);
            if (fVar.f44287b.exists()) {
                try {
                    fVar.c();
                    fVar.b();
                    fVar.f44293h = new BufferedWriter(new FileWriter(fVar.f44287b, true), 8192);
                    return fVar;
                } catch (IOException unused) {
                    fVar.close();
                    a(fVar.f44286a);
                }
            }
            file.mkdirs();
            f fVar2 = new f(file, j2);
            fVar2.d();
            return fVar2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final c a(String str) {
        synchronized (this) {
            try {
                if (this.f44293h != null) {
                    e(str);
                    d dVar = (d) this.f44294i.get(str);
                    if (dVar == null) {
                        dVar = new d(this, str);
                        this.f44294i.put(str, dVar);
                    } else if (dVar.f44283d != null) {
                        return null;
                    }
                    c cVar = new c(this, dVar);
                    dVar.f44283d = cVar;
                    this.f44293h.write("DIRTY " + str + '\n');
                    this.f44293h.flush();
                    return cVar;
                }
                throw new IllegalStateException("cache is closed");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean a() {
        int i2 = this.f44295j;
        return i2 >= 2000 && i2 >= this.f44294i.size();
    }
}
