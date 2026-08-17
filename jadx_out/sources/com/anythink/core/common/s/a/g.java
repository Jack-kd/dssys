package com.anythink.core.common.s.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.v;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public final class g extends com.anythink.core.common.s.a.a {

    /* renamed from: S, reason: collision with root package name */
    public static final int f7582S = 0;

    /* renamed from: T, reason: collision with root package name */
    public static final int f7583T = 1;

    /* renamed from: U, reason: collision with root package name */
    public static final int f7584U = 2;

    /* renamed from: W, reason: collision with root package name */
    private static final String f7585W = "g";

    /* renamed from: V, reason: collision with root package name */
    boolean f7586V;

    /* renamed from: X, reason: collision with root package name */
    private FileChannel f7587X;

    /* renamed from: Y, reason: collision with root package name */
    private FileChannel f7588Y;

    /* renamed from: Z, reason: collision with root package name */
    private MappedByteBuffer f7589Z;
    private MappedByteBuffer aa;
    private int ab;
    private int ac;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        static final Map<String, g> f7591a = new ConcurrentHashMap();

        /* renamed from: b, reason: collision with root package name */
        private String f7592b;

        /* renamed from: c, reason: collision with root package name */
        private String f7593c;

        /* renamed from: d, reason: collision with root package name */
        private com.anythink.core.common.s.a.a.b[] f7594d;

        /* renamed from: e, reason: collision with root package name */
        private com.anythink.core.common.s.a.a.a f7595e;

        /* renamed from: f, reason: collision with root package name */
        private int f7596f = 0;

        private a(Context context, String str) {
            if (context == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f7592b = v.b(context);
            this.f7593c = str;
        }

        private a a(com.anythink.core.common.s.a.a.b[] bVarArr) {
            this.f7594d = bVarArr;
            return this;
        }

        private a b() {
            this.f7596f = 1;
            return this;
        }

        private g c() {
            g gVar;
            String str = this.f7592b + this.f7593c;
            Map<String, g> map = f7591a;
            g gVar2 = map.get(str);
            if (gVar2 != null) {
                return gVar2;
            }
            synchronized (a.class) {
                try {
                    gVar = map.get(str);
                    if (gVar == null) {
                        g gVar3 = new g(this.f7592b, this.f7593c, this.f7594d, this.f7595e, this.f7596f);
                        map.put(str, gVar3);
                        gVar = gVar3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return gVar;
        }

        private a a(com.anythink.core.common.s.a.a.a aVar) {
            this.f7595e = aVar;
            return this;
        }

        private a a() {
            this.f7596f = 2;
            return this;
        }

        private a(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            if (!str.endsWith(ServiceReference.DELIMITER)) {
                str = str + '/';
            }
            this.f7592b = str;
            this.f7593c = str2;
        }
    }

    public g(String str, String str2, com.anythink.core.common.s.a.a.b[] bVarArr, com.anythink.core.common.s.a.a.a aVar, int i2) {
        super(str, str2, bVarArr, aVar);
        this.f7586V = true;
        this.ac = i2;
        k();
    }

    private void e(int i2) throws IOException {
        int i3 = com.anythink.core.common.s.a.a.f7509r;
        int iA = com.anythink.core.common.s.a.a.a(i3, i2 + i3);
        byte[] bArr = this.f7517E.f7579a;
        if (iA >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[iA];
        System.arraycopy(bArr, 0, bArr2, 0, this.f7513A);
        this.f7517E.f7579a = bArr2;
        if (this.ac == 0) {
            try {
                long j2 = iA;
                this.f7587X.truncate(j2);
                FileChannel fileChannel = this.f7587X;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j2);
                this.f7589Z = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.f7588Y.truncate(j2);
                MappedByteBuffer map2 = this.f7588Y.map(mapMode, 0L, j2);
                this.aa = map2;
                map2.order(byteOrder);
            } catch (Exception e2) {
                a(new Exception("map failed", e2));
                u();
            }
        }
        c("truncate finish");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01bd A[Catch: all -> 0x00cd, Exception -> 0x013e, TryCatch #2 {Exception -> 0x013e, blocks: (B:41:0x010b, B:43:0x012b, B:45:0x0131, B:47:0x0137, B:52:0x0141, B:54:0x0158, B:56:0x015f, B:58:0x0178, B:59:0x0185, B:61:0x01a1, B:63:0x01a7, B:64:0x01bd, B:69:0x01cf, B:70:0x01db), top: B:92:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f6 A[Catch: all -> 0x00cd, TryCatch #4 {all -> 0x00cd, blocks: (B:4:0x0003, B:6:0x000d, B:8:0x0011, B:9:0x0045, B:11:0x004b, B:14:0x0055, B:15:0x0077, B:19:0x0089, B:25:0x00ab, B:26:0x00b4, B:29:0x00c5, B:35:0x00d5, B:41:0x010b, B:43:0x012b, B:45:0x0131, B:47:0x0137, B:73:0x01f2, B:75:0x01f6, B:76:0x01ff, B:78:0x0203, B:79:0x0207, B:81:0x020b, B:82:0x0213, B:84:0x0217, B:52:0x0141, B:72:0x01e9, B:54:0x0158, B:56:0x015f, B:58:0x0178, B:59:0x0185, B:61:0x01a1, B:63:0x01a7, B:64:0x01bd, B:69:0x01cf, B:22:0x00a2, B:18:0x0084, B:70:0x01db), top: B:95:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0203 A[Catch: all -> 0x00cd, TryCatch #4 {all -> 0x00cd, blocks: (B:4:0x0003, B:6:0x000d, B:8:0x0011, B:9:0x0045, B:11:0x004b, B:14:0x0055, B:15:0x0077, B:19:0x0089, B:25:0x00ab, B:26:0x00b4, B:29:0x00c5, B:35:0x00d5, B:41:0x010b, B:43:0x012b, B:45:0x0131, B:47:0x0137, B:73:0x01f2, B:75:0x01f6, B:76:0x01ff, B:78:0x0203, B:79:0x0207, B:81:0x020b, B:82:0x0213, B:84:0x0217, B:52:0x0141, B:72:0x01e9, B:54:0x0158, B:56:0x015f, B:58:0x0178, B:59:0x0185, B:61:0x01a1, B:63:0x01a7, B:64:0x01bd, B:69:0x01cf, B:22:0x00a2, B:18:0x0084, B:70:0x01db), top: B:95:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020b A[Catch: all -> 0x00cd, TryCatch #4 {all -> 0x00cd, blocks: (B:4:0x0003, B:6:0x000d, B:8:0x0011, B:9:0x0045, B:11:0x004b, B:14:0x0055, B:15:0x0077, B:19:0x0089, B:25:0x00ab, B:26:0x00b4, B:29:0x00c5, B:35:0x00d5, B:41:0x010b, B:43:0x012b, B:45:0x0131, B:47:0x0137, B:73:0x01f2, B:75:0x01f6, B:76:0x01ff, B:78:0x0203, B:79:0x0207, B:81:0x020b, B:82:0x0213, B:84:0x0217, B:52:0x0141, B:72:0x01e9, B:54:0x0158, B:56:0x015f, B:58:0x0178, B:59:0x0185, B:61:0x01a1, B:63:0x01a7, B:64:0x01bd, B:69:0x01cf, B:22:0x00a2, B:18:0x0084, B:70:0x01db), top: B:95:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0217 A[Catch: all -> 0x00cd, TRY_LEAVE, TryCatch #4 {all -> 0x00cd, blocks: (B:4:0x0003, B:6:0x000d, B:8:0x0011, B:9:0x0045, B:11:0x004b, B:14:0x0055, B:15:0x0077, B:19:0x0089, B:25:0x00ab, B:26:0x00b4, B:29:0x00c5, B:35:0x00d5, B:41:0x010b, B:43:0x012b, B:45:0x0131, B:47:0x0137, B:73:0x01f2, B:75:0x01f6, B:76:0x01ff, B:78:0x0203, B:79:0x0207, B:81:0x020b, B:82:0x0213, B:84:0x0217, B:52:0x0141, B:72:0x01e9, B:54:0x0158, B:56:0x015f, B:58:0x0178, B:59:0x0185, B:61:0x01a1, B:63:0x01a7, B:64:0x01bd, B:69:0x01cf, B:22:0x00a2, B:18:0x0084, B:70:0x01db), top: B:95:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void k() {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.s.a.g.k():void");
    }

    private void l() throws IOException {
        long j2;
        File file = new File(this.f7533v, this.f7534w + ".kva");
        File file2 = new File(this.f7533v, this.f7534w + ".kvb");
        try {
            if (l.a(file) && l.a(file2)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                long length = randomAccessFile.length();
                long length2 = randomAccessFile2.length();
                this.f7587X = randomAccessFile.getChannel();
                this.f7588Y = randomAccessFile2.getChannel();
                try {
                    FileChannel fileChannel = this.f7587X;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, length > 0 ? length : com.anythink.core.common.s.a.a.f7509r);
                    this.f7589Z = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.f7588Y.map(mapMode, 0L, length2 > 0 ? length2 : com.anythink.core.common.s.a.a.f7509r);
                    this.aa = map2;
                    map2.order(byteOrder);
                    this.f7517E = new f(this.f7589Z.capacity());
                    if (length == 0 && length2 == 0) {
                        this.f7513A = 12;
                        return;
                    }
                    int i2 = this.f7589Z.getInt();
                    int i3 = i2 & (-1073741825);
                    boolean zB = com.anythink.core.common.s.a.a.b(i2);
                    long j3 = this.f7589Z.getLong();
                    int i4 = this.aa.getInt();
                    int i5 = (-1073741825) & i4;
                    boolean zB2 = com.anythink.core.common.s.a.a.b(i4);
                    long j4 = this.aa.getLong();
                    if (i3 < 0 || i3 > length - 12) {
                        j2 = 12;
                    } else {
                        this.f7513A = i3 + 12;
                        this.f7589Z.rewind();
                        j2 = 12;
                        this.f7589Z.get(this.f7517E.f7579a, 0, this.f7513A);
                        if (j3 == this.f7517E.b(12, i3) && a(zB)) {
                            this.f7514B = j3;
                            if (length == length2 && m()) {
                                return;
                            }
                            b(new Exception("B file error"));
                            a(this.f7589Z, this.aa, this.f7513A);
                            return;
                        }
                    }
                    if (i5 >= 0 && i5 <= length2 - j2) {
                        this.f7515C.clear();
                        e();
                        this.f7513A = i5 + 12;
                        if (this.f7517E.f7579a.length != this.aa.capacity()) {
                            this.f7517E = new f(this.aa.capacity());
                        }
                        this.aa.rewind();
                        this.aa.get(this.f7517E.f7579a, 0, this.f7513A);
                        if (j4 == this.f7517E.b(12, i5) && a(zB2)) {
                            b(new Exception("A file error"));
                            a(this.aa, this.f7589Z, this.f7513A);
                            this.f7514B = j4;
                            return;
                        }
                    }
                    b("both files error");
                    v();
                    return;
                } catch (IOException e2) {
                    a(e2);
                    u();
                    a(file, file2);
                    return;
                }
            }
            a(new Exception("open file failed"));
            u();
        } catch (Exception e3) {
            a(e3);
            c();
            u();
        }
    }

    private boolean m() {
        f fVar = new f(this.f7513A);
        this.aa.rewind();
        this.aa.get(fVar.f7579a, 0, this.f7513A);
        byte[] bArr = this.f7517E.f7579a;
        byte[] bArr2 = fVar.f7579a;
        for (int i2 = 0; i2 < this.f7513A; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean n() {
        File file = new File(this.f7533v, this.f7534w + ".kvc");
        File file2 = new File(this.f7533v, this.f7534w + ".tmp");
        boolean z2 = false;
        try {
            if (!file.exists()) {
                file = file2.exists() ? file2 : null;
            }
            if (file != null) {
                if (!a(file)) {
                    c();
                    b();
                    return false;
                }
                if (this.ac == 0) {
                    if (!a(this.f7517E)) {
                        this.ac = 1;
                        return false;
                    }
                    c("recover from c file");
                    try {
                        b();
                        return true;
                    } catch (Exception e2) {
                        e = e2;
                        z2 = true;
                        a(e);
                        return z2;
                    }
                }
            } else if (this.ac != 0) {
                File file3 = new File(this.f7533v, this.f7534w + ".kva");
                File file4 = new File(this.f7533v, this.f7534w + ".kvb");
                if (file3.exists() && file4.exists()) {
                    a(file3, file4);
                }
            }
            return false;
        } catch (Exception e3) {
            e = e3;
        }
    }

    private synchronized void o() {
        if (this.f7522J) {
            return;
        }
        if (this.ac == 0) {
            this.f7589Z.force();
            this.aa.force();
        }
    }

    private synchronized void p() {
        this.f7586V = false;
    }

    private void q() {
        if (this.ac == 0 || !this.f7586V) {
            return;
        }
        r();
    }

    private boolean r() {
        int i2 = this.ac;
        if (i2 == 1) {
            this.f7527O.execute(new Runnable() { // from class: com.anythink.core.common.s.a.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.s();
                }
            });
        } else if (i2 == 2) {
            return s();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean s() {
        try {
            File file = new File(this.f7533v, this.f7534w + ".tmp");
            if (l.a(file)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                try {
                    randomAccessFile.setLength(this.f7513A);
                    randomAccessFile.write(this.f7517E.f7579a, 0, this.f7513A);
                    randomAccessFile.getFD().sync();
                    randomAccessFile.close();
                    if (l.a(file, new File(this.f7533v, this.f7534w + ".kvc"))) {
                        t();
                        return true;
                    }
                    b(new Exception("rename failed"));
                } catch (Throwable th) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (Exception e2) {
            a(e2);
        }
        return false;
    }

    private void t() {
        if (this.f7520H.isEmpty()) {
            return;
        }
        Iterator<String> it = this.f7520H.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        this.f7520H.clear();
    }

    private void u() {
        this.ac = 1;
        l.a(this.f7587X);
        l.a(this.f7588Y);
        this.f7587X = null;
        this.f7588Y = null;
        this.f7589Z = null;
        this.aa = null;
    }

    private void v() {
        if (this.ac == 0) {
            try {
                a(this.f7589Z);
                a(this.aa);
            } catch (Exception unused) {
                u();
            }
        }
        c();
        l.c(new File(this.f7533v + this.f7534w));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void w() {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f7522J     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L7
            monitor-exit(r4)
            return
        L7:
            r0 = 1
            r4.f7522J = r0     // Catch: java.lang.Throwable -> L23
            int r1 = r4.ac     // Catch: java.lang.Throwable -> L23
            if (r1 != 0) goto L29
            java.nio.channels.FileChannel r1 = r4.f7587X     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            r1.force(r0)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            java.nio.channels.FileChannel r1 = r4.f7587X     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            r1.close()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            java.nio.channels.FileChannel r1 = r4.f7588Y     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            r1.force(r0)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            java.nio.channels.FileChannel r0 = r4.f7588Y     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            r0.close()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            goto L29
        L23:
            r0 = move-exception
            goto L4a
        L25:
            r0 = move-exception
            r4.a(r0)     // Catch: java.lang.Throwable -> L23
        L29:
            java.lang.Class<com.anythink.core.common.s.a.g$a> r0 = com.anythink.core.common.s.a.g.a.class
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L23
            java.util.Map<java.lang.String, com.anythink.core.common.s.a.g> r1 = com.anythink.core.common.s.a.g.a.f7591a     // Catch: java.lang.Throwable -> L47
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L47
            r2.<init>()     // Catch: java.lang.Throwable -> L47
            java.lang.String r3 = r4.f7533v     // Catch: java.lang.Throwable -> L47
            r2.append(r3)     // Catch: java.lang.Throwable -> L47
            java.lang.String r3 = r4.f7534w     // Catch: java.lang.Throwable -> L47
            r2.append(r3)     // Catch: java.lang.Throwable -> L47
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L47
            r1.remove(r2)     // Catch: java.lang.Throwable -> L47
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L47
            monitor-exit(r4)
            return
        L47:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            throw r1     // Catch: java.lang.Throwable -> L23
        L4a:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L23
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.s.a.g.w():void");
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(g gVar) {
        MappedByteBuffer mappedByteBuffer;
        f fVar = gVar.f7517E;
        if (this.ac == 0) {
            int length = fVar.f7579a.length;
            MappedByteBuffer mappedByteBuffer2 = this.f7589Z;
            if (mappedByteBuffer2 != null && mappedByteBuffer2.capacity() == length && (mappedByteBuffer = this.aa) != null && mappedByteBuffer.capacity() == length) {
                this.f7589Z.position(0);
                this.f7589Z.put(fVar.f7579a, 0, this.f7513A);
                this.aa.position(0);
                this.aa.put(fVar.f7579a, 0, this.f7513A);
            } else if (!a(fVar)) {
                this.ac = 1;
            }
        }
        if (this.ac != 0) {
            s();
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized void apply() {
        if (this.f7522J) {
            return;
        }
        this.f7586V = true;
        r();
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor clear() {
        try {
            if (this.f7522J) {
                return this;
            }
            v();
            if (this.ac != 0) {
                b();
            }
            e((String) null);
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized boolean commit() {
        if (this.f7522J) {
            return false;
        }
        this.f7586V = true;
        return r();
    }

    @Override // com.anythink.core.common.s.a.a
    public final void d(int i2) throws IOException {
        int length = this.f7517E.f7579a.length;
        int i3 = this.f7513A + i2;
        if (i3 >= length) {
            int i4 = this.f7528P;
            if (i4 > i2 && i4 > f()) {
                c(i2);
                return;
            }
            int iA = com.anythink.core.common.s.a.a.a(length, i3);
            byte[] bArr = new byte[iA];
            System.arraycopy(this.f7517E.f7579a, 0, bArr, 0, this.f7513A);
            this.f7517E.f7579a = bArr;
            if (this.ac == 0) {
                try {
                    FileChannel fileChannel = this.f7587X;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    long j2 = iA;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j2);
                    this.f7589Z = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.f7588Y.map(mapMode, 0L, j2);
                    this.aa = map2;
                    map2.order(byteOrder);
                } catch (IOException e2) {
                    a(new Exception("map failed", e2));
                    this.f7517E.a(0, a(this.f7513A - 12));
                    this.f7517E.a(4, this.f7514B);
                    u();
                }
            }
        }
    }

    @Override // com.anythink.core.common.s.a.a
    public final void f(String str) {
        q();
        e(str);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void g(String str) {
        if (this.ac == 0) {
            a(str);
        } else {
            this.f7520H.add(str);
        }
    }

    @Override // com.anythink.core.common.s.a.a
    public final void h() {
        if (this.f7528P < (f() << 1)) {
            if (this.f7529Q.size() < (this.f7513A < 16384 ? 80 : 160)) {
                return;
            }
        }
        c(0);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void i() {
        this.f7514B ^= this.f7517E.b(this.f7518F, this.f7519G);
        int iA = a(this.f7513A - 12);
        if (this.ac == 0) {
            this.f7589Z.putInt(0, -1);
            b(this.f7589Z);
            this.f7589Z.putInt(0, iA);
            this.aa.putInt(0, iA);
            b(this.aa);
        } else {
            this.f7517E.a(0, iA);
            this.f7517E.a(4, this.f7514B);
        }
        this.ab = 0;
        this.f7519G = 0;
    }

    public final int j() {
        return this.ac;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005a A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x0011, B:11:0x0027, B:18:0x0052, B:20:0x005a, B:22:0x007e, B:24:0x0083, B:26:0x0087, B:27:0x008b, B:28:0x0090, B:21:0x0077, B:14:0x003c, B:16:0x004c), top: B:33:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0077 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x0011, B:11:0x0027, B:18:0x0052, B:20:0x005a, B:22:0x007e, B:24:0x0083, B:26:0x0087, B:27:0x008b, B:28:0x0090, B:21:0x0077, B:14:0x003c, B:16:0x004c), top: B:33:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x0011, B:11:0x0027, B:18:0x0052, B:20:0x005a, B:22:0x007e, B:24:0x0083, B:26:0x0087, B:27:0x008b, B:28:0x0090, B:21:0x0077, B:14:0x003c, B:16:0x004c), top: B:33:0x0001 }] */
    @Override // android.content.SharedPreferences.Editor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized android.content.SharedPreferences.Editor remove(java.lang.String r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = r5.f7522J     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L7
            monitor-exit(r5)
            return r5
        L7:
            java.util.HashMap<java.lang.String, com.anythink.core.common.s.a.b$b> r0 = r5.f7515C     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r0 = r0.get(r6)     // Catch: java.lang.Throwable -> L3a
            com.anythink.core.common.s.a.b$b r0 = (com.anythink.core.common.s.a.b.AbstractC0079b) r0     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L96
            java.util.HashMap<java.lang.String, com.anythink.core.common.s.a.b$b> r1 = r5.f7515C     // Catch: java.lang.Throwable -> L3a
            r1.remove(r6)     // Catch: java.lang.Throwable -> L3a
            com.anythink.core.common.s.a.m r1 = r5.f7525M     // Catch: java.lang.Throwable -> L3a
            r1.b(r6)     // Catch: java.lang.Throwable -> L3a
            com.anythink.core.common.s.a.m r1 = r5.f7524L     // Catch: java.lang.Throwable -> L3a
            r1.b(r6)     // Catch: java.lang.Throwable -> L3a
            byte r1 = r0.a()     // Catch: java.lang.Throwable -> L3a
            r2 = 5
            if (r1 > r2) goto L3c
            int r6 = com.anythink.core.common.s.a.f.b(r6)     // Catch: java.lang.Throwable -> L3a
            int r0 = r0.f7549a     // Catch: java.lang.Throwable -> L3a
            int r6 = r6 + 2
            int r6 = r0 - r6
            int[] r2 = com.anythink.core.common.s.a.a.f7507o     // Catch: java.lang.Throwable -> L3a
            r2 = r2[r1]     // Catch: java.lang.Throwable -> L3a
            int r0 = r0 + r2
            r5.a(r1, r6, r0)     // Catch: java.lang.Throwable -> L3a
            goto L51
        L3a:
            r6 = move-exception
            goto L98
        L3c:
            com.anythink.core.common.s.a.b$j r0 = (com.anythink.core.common.s.a.b.j) r0     // Catch: java.lang.Throwable -> L3a
            int r6 = r0.f7557d     // Catch: java.lang.Throwable -> L3a
            int r2 = r0.f7549a     // Catch: java.lang.Throwable -> L3a
            int r3 = r0.f7558e     // Catch: java.lang.Throwable -> L3a
            int r2 = r2 + r3
            r5.a(r1, r6, r2)     // Catch: java.lang.Throwable -> L3a
            boolean r6 = r0.f7559f     // Catch: java.lang.Throwable -> L3a
            if (r6 == 0) goto L51
            java.lang.Object r6 = r0.f7556c     // Catch: java.lang.Throwable -> L3a
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L3a
            goto L52
        L51:
            r6 = 0
        L52:
            r0 = r1 | (-128(0xffffffffffffff80, float:NaN))
            byte r0 = (byte) r0     // Catch: java.lang.Throwable -> L3a
            int r1 = r5.ac     // Catch: java.lang.Throwable -> L3a
            r2 = 4
            if (r1 != 0) goto L77
            java.nio.MappedByteBuffer r1 = r5.f7589Z     // Catch: java.lang.Throwable -> L3a
            long r3 = r5.f7514B     // Catch: java.lang.Throwable -> L3a
            r1.putLong(r2, r3)     // Catch: java.lang.Throwable -> L3a
            java.nio.MappedByteBuffer r1 = r5.f7589Z     // Catch: java.lang.Throwable -> L3a
            int r3 = r5.ab     // Catch: java.lang.Throwable -> L3a
            r1.put(r3, r0)     // Catch: java.lang.Throwable -> L3a
            java.nio.MappedByteBuffer r1 = r5.aa     // Catch: java.lang.Throwable -> L3a
            long r3 = r5.f7514B     // Catch: java.lang.Throwable -> L3a
            r1.putLong(r2, r3)     // Catch: java.lang.Throwable -> L3a
            java.nio.MappedByteBuffer r1 = r5.aa     // Catch: java.lang.Throwable -> L3a
            int r2 = r5.ab     // Catch: java.lang.Throwable -> L3a
            r1.put(r2, r0)     // Catch: java.lang.Throwable -> L3a
            goto L7e
        L77:
            com.anythink.core.common.s.a.f r0 = r5.f7517E     // Catch: java.lang.Throwable -> L3a
            long r3 = r5.f7514B     // Catch: java.lang.Throwable -> L3a
            r0.a(r2, r3)     // Catch: java.lang.Throwable -> L3a
        L7e:
            r0 = 0
            r5.ab = r0     // Catch: java.lang.Throwable -> L3a
            if (r6 == 0) goto L90
            int r0 = r5.ac     // Catch: java.lang.Throwable -> L3a
            if (r0 != 0) goto L8b
            r5.a(r6)     // Catch: java.lang.Throwable -> L3a
            goto L90
        L8b:
            java.util.List<java.lang.String> r0 = r5.f7520H     // Catch: java.lang.Throwable -> L3a
            r0.add(r6)     // Catch: java.lang.Throwable -> L3a
        L90:
            r5.h()     // Catch: java.lang.Throwable -> L3a
            r5.q()     // Catch: java.lang.Throwable -> L3a
        L96:
            monitor-exit(r5)
            return r5
        L98:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L3a
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.s.a.g.remove(java.lang.String):android.content.SharedPreferences$Editor");
    }

    public final String toString() {
        return "FastKV: path:" + this.f7533v + " name:" + this.f7534w;
    }

    private void b(MappedByteBuffer mappedByteBuffer) {
        try {
            if (mappedByteBuffer.capacity() < 12) {
                throw new IllegalArgumentException("Buffer capacity too small for checksum");
            }
            mappedByteBuffer.putLong(4, this.f7514B);
            int i2 = this.ab;
            if (i2 != 0) {
                if (i2 < 0 || i2 >= mappedByteBuffer.capacity()) {
                    throw new IllegalArgumentException("removeStart out of bounds: " + this.ab);
                }
                int i3 = this.ab;
                byte[] bArr = this.f7517E.f7579a;
                if (i3 >= bArr.length) {
                    throw new IllegalArgumentException("fastBuffer.hb index out of bounds: " + this.ab);
                }
                mappedByteBuffer.put(i3, bArr[i3]);
            }
            int i4 = this.f7519G;
            if (i4 != 0) {
                int i5 = this.f7518F;
                if (i5 < 0 || i4 < 0 || i4 + i5 > this.f7517E.f7579a.length) {
                    throw new IllegalArgumentException("Invalid update range");
                }
                if (i5 <= mappedByteBuffer.capacity()) {
                    int iCapacity = mappedByteBuffer.capacity();
                    int i6 = this.f7518F;
                    if (iCapacity - i6 >= this.f7519G) {
                        mappedByteBuffer.position(i6);
                        mappedByteBuffer.put(this.f7517E.f7579a, this.f7518F, this.f7519G);
                        return;
                    }
                }
                throw new IllegalArgumentException("buffer capacity overflow");
            }
        } catch (Throwable th) {
            com.anythink.core.common.u.f.b("sp_mmap_error", "spName: " + this.f7534w + " errorMsg: " + th.getMessage(), s.b().r());
        }
    }

    private boolean a(f fVar) throws Exception {
        Exception exc;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        FileChannel.MapMode mapMode;
        ByteOrder byteOrder;
        try {
            int length = fVar.f7579a.length;
            File file = new File(this.f7533v, this.f7534w + ".kva");
            File file2 = new File(this.f7533v, this.f7534w + ".kvb");
            if (l.a(file) && l.a(file2)) {
                randomAccessFile2 = new RandomAccessFile(file, "rw");
                long j2 = length;
                try {
                    randomAccessFile2.setLength(j2);
                    FileChannel channel = randomAccessFile2.getChannel();
                    this.f7587X = channel;
                    mapMode = FileChannel.MapMode.READ_WRITE;
                    MappedByteBuffer map = channel.map(mapMode, 0L, j2);
                    this.f7589Z = map;
                    byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    this.f7589Z.put(fVar.f7579a, 0, this.f7513A);
                    randomAccessFile = new RandomAccessFile(file2, "rw");
                } catch (Exception e2) {
                    exc = e2;
                    randomAccessFile = null;
                }
                try {
                    randomAccessFile.setLength(j2);
                    FileChannel channel2 = randomAccessFile.getChannel();
                    this.f7588Y = channel2;
                    MappedByteBuffer map2 = channel2.map(mapMode, 0L, j2);
                    this.aa = map2;
                    map2.order(byteOrder);
                    this.aa.put(fVar.f7579a, 0, this.f7513A);
                    return true;
                } catch (Exception e3) {
                    exc = e3;
                    l.a(randomAccessFile2);
                    l.a(randomAccessFile);
                    this.f7587X = null;
                    this.f7588Y = null;
                    this.f7589Z = null;
                    this.aa = null;
                    a(exc);
                    return false;
                }
            }
            throw new Exception("open file failed");
        } catch (Exception e4) {
            exc = e4;
            randomAccessFile = null;
            randomAccessFile2 = null;
        }
    }

    private void a(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i2) throws IOException {
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                MappedByteBuffer map = (mappedByteBuffer2 == this.aa ? this.f7588Y : this.f7587X).map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.aa) {
                    this.aa = map;
                } else {
                    this.f7589Z = map;
                }
                mappedByteBuffer2 = map;
            } catch (IOException e2) {
                a(e2);
                u();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i2);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    @Override // com.anythink.core.common.s.a.a
    public final synchronized void a(Map<String, Object> map, Map<Class, com.anythink.core.common.s.a.a.b> map2) {
        try {
            if (this.f7522J) {
                return;
            }
            if (this.ac != 0) {
                this.f7586V = false;
            }
            super.a(map, map2);
            if (this.ac != 0) {
                commit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(MappedByteBuffer mappedByteBuffer) throws IOException {
        int iCapacity = mappedByteBuffer.capacity();
        int i2 = com.anythink.core.common.s.a.a.f7509r;
        if (iCapacity != i2) {
            FileChannel fileChannel = mappedByteBuffer == this.f7589Z ? this.f7587X : this.f7588Y;
            fileChannel.truncate(i2);
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, i2);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.f7589Z) {
                this.f7589Z = map;
            } else {
                this.aa = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, a(0));
        mappedByteBuffer.putLong(4, 0L);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(byte b3, int i2) {
        long jA = this.f7514B ^ com.anythink.core.common.s.a.a.a(1L, i2);
        this.f7514B = jA;
        if (this.ac == 0) {
            this.f7589Z.putLong(4, jA);
            this.f7589Z.put(i2, b3);
            this.aa.putLong(4, this.f7514B);
            this.aa.put(i2, b3);
        } else {
            this.f7517E.a(4, jA);
        }
        this.f7517E.f7579a[i2] = b3;
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(int i2, long j2, int i3) {
        long jA = com.anythink.core.common.s.a.a.a(j2, i3) ^ this.f7514B;
        this.f7514B = jA;
        if (this.ac == 0) {
            this.f7589Z.putLong(4, jA);
            this.f7589Z.putInt(i3, i2);
            this.aa.putLong(4, this.f7514B);
            this.aa.putInt(i3, i2);
        } else {
            this.f7517E.a(4, jA);
        }
        this.f7517E.a(i3, i2);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(long j2, long j3, int i2) {
        long jA = com.anythink.core.common.s.a.a.a(j3, i2) ^ this.f7514B;
        this.f7514B = jA;
        if (this.ac == 0) {
            this.f7589Z.putLong(4, jA);
            this.f7589Z.putLong(i2, j2);
            this.aa.putLong(4, this.f7514B);
            this.aa.putLong(i2, j2);
        } else {
            this.f7517E.a(4, jA);
        }
        this.f7517E.a(i2, j2);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(int i2, byte[] bArr) {
        super.a(i2, bArr);
        if (this.ac == 0) {
            this.f7589Z.putInt(0, -1);
            this.f7589Z.putLong(4, this.f7514B);
            this.f7589Z.position(i2);
            this.f7589Z.put(bArr);
            this.f7589Z.putInt(0, a(this.f7513A - 12));
            this.aa.putLong(4, this.f7514B);
            this.aa.position(i2);
            this.aa.put(bArr);
            return;
        }
        this.f7517E.a(4, this.f7514B);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(byte b3, int i2, int i3) {
        super.a(b3, i2, i3);
        this.ab = i2;
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(int i2, int i3, int i4) throws IOException {
        int iA = a(this.f7513A - 12);
        if (this.ac == 0) {
            this.f7589Z.putInt(0, -1);
            this.f7589Z.putLong(4, this.f7514B);
            this.f7589Z.position(i2);
            this.f7589Z.put(this.f7517E.f7579a, i2, i4);
            this.f7589Z.putInt(0, iA);
            this.aa.putInt(0, iA);
            this.aa.putLong(4, this.f7514B);
            this.aa.position(i2);
            this.aa.put(this.f7517E.f7579a, i2, i4);
        } else {
            this.f7517E.a(0, iA);
            this.f7517E.a(4, this.f7514B);
        }
        int i5 = this.f7513A + i3;
        if (this.f7517E.f7579a.length - i5 > com.anythink.core.common.s.a.a.f7510s) {
            int i6 = com.anythink.core.common.s.a.a.f7509r;
            int iA2 = com.anythink.core.common.s.a.a.a(i6, i5 + i6);
            byte[] bArr = this.f7517E.f7579a;
            if (iA2 < bArr.length) {
                byte[] bArr2 = new byte[iA2];
                System.arraycopy(bArr, 0, bArr2, 0, this.f7513A);
                this.f7517E.f7579a = bArr2;
                if (this.ac == 0) {
                    try {
                        long j2 = iA2;
                        this.f7587X.truncate(j2);
                        FileChannel fileChannel = this.f7587X;
                        FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                        MappedByteBuffer map = fileChannel.map(mapMode, 0L, j2);
                        this.f7589Z = map;
                        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                        map.order(byteOrder);
                        this.f7588Y.truncate(j2);
                        MappedByteBuffer map2 = this.f7588Y.map(mapMode, 0L, j2);
                        this.aa = map2;
                        map2.order(byteOrder);
                    } catch (Exception e2) {
                        a(new Exception("map failed", e2));
                        u();
                    }
                }
                c("truncate finish");
            }
        }
    }
}
