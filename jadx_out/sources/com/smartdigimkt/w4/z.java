package com.smartdigimkt.w4;

import android.content.SharedPreferences;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;

/* loaded from: classes5.dex */
public final class z extends b {

    /* renamed from: P, reason: collision with root package name */
    public static final Random f45003P = new Random();

    /* renamed from: A, reason: collision with root package name */
    public final File f45004A;

    /* renamed from: B, reason: collision with root package name */
    public RandomAccessFile f45005B;

    /* renamed from: C, reason: collision with root package name */
    public RandomAccessFile f45006C;

    /* renamed from: D, reason: collision with root package name */
    public FileChannel f45007D;

    /* renamed from: E, reason: collision with root package name */
    public FileChannel f45008E;

    /* renamed from: F, reason: collision with root package name */
    public MappedByteBuffer f45009F;

    /* renamed from: G, reason: collision with root package name */
    public FileLock f45010G;

    /* renamed from: H, reason: collision with root package name */
    public int[] f45011H;

    /* renamed from: I, reason: collision with root package name */
    public int f45012I;

    /* renamed from: J, reason: collision with root package name */
    public long f45013J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f45014K;

    /* renamed from: L, reason: collision with root package name */
    public final t f45015L;

    /* renamed from: M, reason: collision with root package name */
    public volatile y f45016M;

    /* renamed from: N, reason: collision with root package name */
    public final HashSet f45017N;

    /* renamed from: O, reason: collision with root package name */
    public final w f45018O;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f45019y;

    /* renamed from: z, reason: collision with root package name */
    public final File f45020z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't wrap try/catch for region: R(14:12|(13:14|(1:16)|47|23|(0)|30|(1:32)|33|(1:35)|36|(1:38)|39|40)(1:21)|22|47|23|(0)|30|(0)|33|(0)|36|(0)|39|40) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b2, code lost:
    
        r0 = r10;
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b5, code lost:
    
        a(r10);
        r10 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c2 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:4:0x0045, B:5:0x007d, B:12:0x008e, B:14:0x0094, B:16:0x009c, B:23:0x00ad, B:30:0x00be, B:32:0x00c2, B:33:0x00cd, B:35:0x00d1, B:36:0x00d5, B:38:0x00d9, B:39:0x0110, B:27:0x00b5, B:21:0x00a9, B:29:0x00bb, B:8:0x0085), top: B:44:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d1 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:4:0x0045, B:5:0x007d, B:12:0x008e, B:14:0x0094, B:16:0x009c, B:23:0x00ad, B:30:0x00be, B:32:0x00c2, B:33:0x00cd, B:35:0x00d1, B:36:0x00d5, B:38:0x00d9, B:39:0x0110, B:27:0x00b5, B:21:0x00a9, B:29:0x00bb, B:8:0x0085), top: B:44:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d9 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:4:0x0045, B:5:0x007d, B:12:0x008e, B:14:0x0094, B:16:0x009c, B:23:0x00ad, B:30:0x00be, B:32:0x00c2, B:33:0x00cd, B:35:0x00d1, B:36:0x00d5, B:38:0x00d9, B:39:0x0110, B:27:0x00b5, B:21:0x00a9, B:29:0x00bb, B:8:0x0085), top: B:44:0x0045 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public z(java.lang.String r8, java.lang.String r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w4.z.<init>(java.lang.String, java.lang.String, boolean):void");
    }

    public final boolean a(q qVar) throws Exception {
        int length = qVar.f44989b.length;
        try {
            if (!c0.d(this.f45020z) || !c0.d(this.f45004A)) {
                throw new Exception("open file failed");
            }
            if (this.f45006C == null) {
                this.f45006C = new RandomAccessFile(this.f45004A, "rw");
            }
            if (this.f45008E == null) {
                this.f45008E = this.f45006C.getChannel();
            }
            FileLock fileLockLock = this.f45010G == null ? this.f45008E.lock() : null;
            try {
                g();
                this.f45009F.put(qVar.f44989b, 0, this.f44952e);
                j();
                long j2 = length;
                if (this.f45006C.length() != j2) {
                    this.f45006C.setLength(j2);
                }
                this.f45008E.truncate(j2);
                c(0, this.f44952e);
                this.f45008E.force(false);
                if (fileLockLock != null) {
                    fileLockLock.release();
                }
                q();
                return true;
            } catch (Throwable th) {
                if (fileLockLock != null) {
                    fileLockLock.release();
                }
                throw th;
            }
        } catch (Exception e2) {
            a(e2);
            return false;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final void apply() {
        this.f44963p.execute(new u(this));
    }

    public final void b(int i2, int i3) {
        int i4 = this.f45012I;
        int[] iArr = this.f45011H;
        int length = iArr.length;
        if ((i4 << 1) >= length) {
            int[] iArr2 = new int[length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            this.f45011H = iArr2;
        }
        int[] iArr3 = this.f45011H;
        iArr3[i4] = i2;
        iArr3[i4 + 1] = i3;
        this.f45012I = i4 + 2;
    }

    public final void c(int i2, int i3) throws IOException {
        MappedByteBuffer mappedByteBuffer = this.f45009F;
        mappedByteBuffer.position(i2);
        mappedByteBuffer.limit(i3 + i2);
        if (this.f45008E.size() != mappedByteBuffer.capacity()) {
            this.f45008E.truncate(mappedByteBuffer.capacity());
        }
        this.f45008E.position(i2);
        while (mappedByteBuffer.hasRemaining()) {
            this.f45008E.write(mappedByteBuffer);
        }
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor clear() {
        c();
        i();
        m();
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final boolean commit() {
        return r();
    }

    public final void d(int i2) throws IOException {
        if (this.f45006C == null) {
            this.f45006C = new RandomAccessFile(this.f45004A, "rw");
        }
        if (this.f45008E == null) {
            this.f45008E = this.f45006C.getChannel();
        }
        long j2 = i2;
        if (this.f45008E.size() != j2) {
            this.f45006C.setLength(j2);
            this.f45008E.truncate(j2);
        }
    }

    @Override // com.smartdigimkt.w4.b
    public final void e(String str) {
        if (this.f44966s.isEmpty()) {
            return;
        }
        this.f45017N.add(str);
    }

    @Override // com.smartdigimkt.w4.b
    public final void f() {
        this.f44953f ^= this.f44955h.a(this.f44956i, this.f44957j);
        int i2 = this.f44957j;
        if (i2 != 0) {
            b(this.f44956i, i2);
            this.f44957j = 0;
        }
    }

    public final boolean g() throws IOException {
        int length = this.f44955h.f44989b.length;
        try {
            if (this.f45005B == null) {
                if (!c0.d(this.f45020z)) {
                    return false;
                }
                this.f45005B = new RandomAccessFile(this.f45020z, "rw");
            }
            long j2 = length;
            if (this.f45005B.length() != j2) {
                this.f45005B.setLength(j2);
            }
            FileChannel fileChannel = this.f45007D;
            if (fileChannel == null) {
                this.f45007D = this.f45005B.getChannel();
            } else if (fileChannel.size() != j2) {
                this.f45007D.truncate(j2);
            }
            MappedByteBuffer mappedByteBuffer = this.f45009F;
            if (mappedByteBuffer != null && mappedByteBuffer.capacity() == length) {
                return true;
            }
            MappedByteBuffer map = this.f45007D.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
            this.f45009F = map;
            map.order(ByteOrder.LITTLE_ENDIAN);
            return true;
        } catch (Exception e2) {
            a(e2);
            return false;
        }
    }

    public final void h() throws IOException {
        File file;
        MappedByteBuffer map = this.f45009F;
        if (map == null || (file = this.f45020z) == null) {
            return;
        }
        int length = (int) file.length();
        if (length <= 0) {
            c("invalid file length");
            return;
        }
        if (this.f45009F.capacity() != length) {
            long j2 = length;
            this.f45007D.truncate(j2);
            map = this.f45007D.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
            if (map == null) {
                return;
            }
            this.f45009F = map;
            map.order(ByteOrder.LITTLE_ENDIAN);
        }
        long j3 = length;
        if (this.f45008E.size() != j3) {
            this.f45008E.truncate(j3);
        }
        int iCapacity = map.capacity();
        int i2 = map.getInt(0);
        int i3 = (-1073741825) & i2;
        boolean zC = b.c(i2);
        if (i3 < 0 || i3 > iCapacity) {
            throw new IllegalStateException("Invalid file, dataSize:" + i3 + ", capacity:" + iCapacity);
        }
        long j4 = map.getLong(4);
        int i4 = i3 + 12;
        long j5 = this.f45013J;
        if (i4 < map.capacity() - 8) {
            j5 = map.getLong(i4);
        }
        if (i4 == this.f44952e && j4 == this.f44953f && j5 == this.f45013J) {
            return;
        }
        this.f44952e = i4;
        this.f44953f = j4;
        this.f45013J = j5;
        HashMap map2 = this.f44966s.isEmpty() ? null : new HashMap(this.f44954g);
        n();
        if (j4 != this.f44955h.a(12, i3) || !a(zC)) {
            i();
            return;
        }
        if (map2 != null) {
            HashSet hashSet = new HashSet(this.f44954g.keySet());
            HashSet hashSet2 = new HashSet(map2.keySet());
            HashSet hashSet3 = new HashSet(hashSet);
            hashSet3.retainAll(hashSet2);
            hashSet.removeAll(hashSet3);
            hashSet2.removeAll(hashSet3);
            this.f45017N.addAll(hashSet);
            this.f45017N.addAll(hashSet2);
            Iterator it = hashSet3.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                d dVar = (d) map2.get(str);
                d dVar2 = (d) this.f44954g.get(str);
                if (dVar != null && !dVar.a(dVar2)) {
                    this.f45017N.add(str);
                }
            }
            if (this.f45017N.isEmpty()) {
                return;
            }
            l();
        }
    }

    public final void i() {
        e();
        try {
            g();
            this.f45009F.putInt(0, 0);
            this.f45009F.putLong(4, 0L);
            j();
            if (c0.d(this.f45004A)) {
                d(b.f44946w);
                c(0, 12);
                q();
            }
        } catch (Exception e2) {
            a(e2);
            this.f45014K = true;
        }
        c0.a(new File(this.f44948a + this.f44949b));
        h(null);
    }

    public final void j() {
        MappedByteBuffer mappedByteBuffer = this.f45009F;
        if (mappedByteBuffer == null || this.f44952e + 8 >= mappedByteBuffer.capacity()) {
            return;
        }
        this.f45013J = this.f45009F.getLong(this.f44952e);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9 A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #4 {all -> 0x009d, blocks: (B:19:0x0067, B:23:0x0077, B:28:0x008c, B:75:0x019a, B:31:0x00a0, B:35:0x00ac, B:37:0x00b9, B:38:0x00c7, B:40:0x00cb, B:43:0x00d2, B:46:0x00d9, B:47:0x00e3, B:49:0x00e9, B:52:0x00fc, B:53:0x0101, B:55:0x010c, B:58:0x0126, B:60:0x0136, B:62:0x013e, B:64:0x0163, B:66:0x0169, B:67:0x0175, B:70:0x017e, B:73:0x018e, B:74:0x0192, B:57:0x0117, B:22:0x0073, B:79:0x01a2), top: B:95:0x0067, outer: #2, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0192 A[Catch: all -> 0x009d, TryCatch #4 {all -> 0x009d, blocks: (B:19:0x0067, B:23:0x0077, B:28:0x008c, B:75:0x019a, B:31:0x00a0, B:35:0x00ac, B:37:0x00b9, B:38:0x00c7, B:40:0x00cb, B:43:0x00d2, B:46:0x00d9, B:47:0x00e3, B:49:0x00e9, B:52:0x00fc, B:53:0x0101, B:55:0x010c, B:58:0x0126, B:60:0x0136, B:62:0x013e, B:64:0x0163, B:66:0x0169, B:67:0x0175, B:70:0x017e, B:73:0x018e, B:74:0x0192, B:57:0x0117, B:22:0x0073, B:79:0x01a2), top: B:95:0x0067, outer: #2, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k() {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w4.z.k():void");
    }

    public final synchronized void l() {
        try {
            if (!this.f45017N.isEmpty()) {
                Iterator it = this.f45017N.iterator();
                while (it.hasNext()) {
                    h((String) it.next());
                }
                this.f45017N.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void m() {
        FileLock fileLock = this.f45010G;
        if (fileLock != null) {
            try {
                fileLock.release();
            } catch (Exception e2) {
                a(e2);
            }
            this.f45010G = null;
            this.f45018O.removeMessages(2);
        }
    }

    public final void n() {
        this.f44954g.clear();
        this.f44964q = 0;
        this.f44965r.clear();
        int iCapacity = this.f45009F.capacity();
        q qVar = this.f44955h;
        if (qVar == null) {
            this.f44955h = new q(0, new byte[iCapacity]);
        } else if (qVar.f44989b.length != iCapacity) {
            qVar.f44989b = new byte[iCapacity];
        }
        this.f45009F.rewind();
        this.f45009F.get(this.f44955h.f44989b, 0, this.f44952e);
    }

    public final void o() {
        if (this.f45009F == null) {
            return;
        }
        n();
        j();
        q qVar = this.f44955h;
        qVar.f44990c = 0;
        int iA = qVar.a();
        int i2 = (-1073741825) & iA;
        boolean zC = b.c(iA);
        q qVar2 = this.f44955h;
        long jA = qVar2.a(qVar2.f44990c);
        qVar2.f44990c += 8;
        this.f44953f = jA;
        this.f44952e = i2 + 12;
        if (jA == this.f44955h.a(12, i2) && a(zC)) {
            return;
        }
        i();
    }

    public final void p() throws IOException {
        int i2 = b.f44946w;
        int iA = b.a(i2, this.f44952e + i2);
        byte[] bArr = this.f44955h.f44989b;
        if (iA >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[iA];
        System.arraycopy(bArr, 0, bArr2, 0, this.f44952e);
        this.f44955h.f44989b = bArr2;
        try {
            long j2 = iA;
            this.f45007D.truncate(j2);
            MappedByteBuffer map = this.f45007D.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
            this.f45009F = map;
            map.order(ByteOrder.LITTLE_ENDIAN);
            this.f45006C.setLength(j2);
            this.f45008E.truncate(j2);
        } catch (Exception e2) {
            a(new Exception("map failed", e2));
            this.f45014K = true;
        }
        f("truncate finish");
    }

    public final void q() {
        File file;
        if (this.f45019y && this.f45016M == null && (file = this.f45004A) != null && file.exists()) {
            this.f45016M = new y(this, this.f45004A.getPath());
            this.f45016M.startWatching();
        }
    }

    public final synchronized boolean r() {
        boolean zA;
        if (this.f45010G == null) {
            return false;
        }
        q qVar = this.f44955h;
        if (qVar == null || (this.f45012I == 0 && !this.f45014K)) {
            m();
            return false;
        }
        try {
            int i2 = this.f44952e - 12;
            qVar.b(0, i2);
            this.f44955h.a(4, this.f44953f);
            if (this.f45014K) {
                q qVar2 = this.f44955h;
                qVar2.f44990c = 0;
                int iA = qVar2.a() & (-1073741825);
                q qVar3 = this.f44955h;
                long jA = qVar3.a(qVar3.f44990c);
                qVar3.f44990c += 8;
                this.f44953f = jA;
                this.f44952e = iA + 12;
                if (jA == this.f44955h.a(12, iA)) {
                    zA = a(this.f44955h);
                } else {
                    i();
                    zA = true;
                }
                if (zA) {
                    this.f45014K = false;
                }
                this.f45012I = 0;
                if (!this.f44958k.isEmpty()) {
                    this.f44958k.clear();
                }
                s();
                m();
                l();
                return zA;
            }
            if (!g()) {
                if (this.f45009F != null) {
                    o();
                } else {
                    this.f45014K = true;
                }
                return false;
            }
            d(this.f45009F.capacity());
            this.f45009F.putInt(0, i2);
            this.f45009F.putLong(4, this.f44953f);
            for (int i3 = 0; i3 < this.f45012I; i3 += 2) {
                int[] iArr = this.f45011H;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                byte[] bArr = this.f44955h.f44989b;
                this.f45009F.position(i4);
                this.f45009F.put(bArr, i4, i5);
            }
            if (this.f44952e + 8 < this.f45009F.capacity()) {
                long jNextLong = f45003P.nextLong() ^ System.nanoTime();
                this.f45013J = jNextLong;
                this.f45009F.putLong(this.f44952e, jNextLong);
            }
            c(0, 12);
            for (int i6 = 0; i6 < this.f45012I; i6 += 2) {
                int[] iArr2 = this.f45011H;
                c(iArr2[i6], iArr2[i6 + 1]);
            }
            if (!this.f44958k.isEmpty()) {
                ArrayList arrayList = this.f44958k;
                int size = arrayList.size();
                int i7 = 0;
                while (i7 < size) {
                    Object obj = arrayList.get(i7);
                    i7++;
                    b((String) obj);
                }
            }
            if (this.f44955h.f44989b.length - this.f44952e > b.f44947x) {
                p();
            }
            this.f45012I = 0;
            if (!this.f44958k.isEmpty()) {
                this.f44958k.clear();
            }
            s();
            m();
            l();
            return true;
        } catch (Throwable th) {
            try {
                if (th instanceof Exception) {
                    a(th);
                }
                this.f45014K = true;
                this.f45012I = 0;
                if (!this.f44958k.isEmpty()) {
                    this.f44958k.clear();
                }
                s();
                m();
                l();
                return false;
            } finally {
                this.f45012I = 0;
                if (!this.f44958k.isEmpty()) {
                    this.f44958k.clear();
                }
                s();
                m();
                l();
            }
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor remove(String str) {
        try {
            c();
            e(str);
            d dVar = (d) this.f44954g.get(str);
            if (dVar != null) {
                this.f44954g.remove(str);
                this.f44961n.b(str);
                this.f44960m.b(str);
                byte bA = dVar.a();
                String str2 = null;
                if (bA <= 5) {
                    int iA = q.a(str);
                    int i2 = dVar.f44970a;
                    int i3 = i2 - (iA + 2);
                    super.a(bA, i3, i2 + b.f44945v[bA]);
                    b(i3, 1);
                } else {
                    l lVar = (l) dVar;
                    int i4 = lVar.f44980c;
                    super.a(bA, i4, lVar.f44970a + lVar.f44981d);
                    b(i4, 1);
                    if (lVar.f44982e) {
                        str2 = (String) lVar.f44979b;
                    }
                }
                if (str2 != null) {
                    this.f44958k.add(str2);
                }
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final void s() throws InterruptedException {
        while (!this.f44962o.f44987a.isEmpty()) {
            try {
                Thread.sleep(10L);
            } catch (Exception unused) {
            }
        }
    }

    public final String toString() {
        return "MPFastKV: path:" + this.f44948a + " name:" + this.f44949b;
    }

    @Override // com.smartdigimkt.w4.b
    public final void d() {
        super.d();
        this.f45013J = 0L;
    }

    @Override // com.smartdigimkt.w4.b
    public final void c() {
        if (this.f45010G != null) {
            return;
        }
        if (this.f45008E == null) {
            k();
            q();
        }
        FileChannel fileChannel = this.f45008E;
        if (fileChannel != null) {
            try {
                this.f45010G = fileChannel.lock();
                try {
                    h();
                } finally {
                    this.f45018O.sendEmptyMessageDelayed(2, 3000L);
                }
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    @Override // com.smartdigimkt.w4.b
    public final void i(String str) {
        this.f44958k.add(str);
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(int i2) {
        int length = this.f44955h.f44989b.length;
        int i3 = this.f44952e + i2 + 8;
        if (i3 >= length) {
            byte[] bArr = new byte[b.a(length, i3)];
            System.arraycopy(this.f44955h.f44989b, 0, bArr, 0, this.f44952e);
            this.f44955h.f44989b = bArr;
        }
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(byte b3, int i2) {
        this.f44953f ^= b.a(i2, 1L);
        this.f44955h.f44989b[i2] = b3;
        b(i2, 1);
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(int i2, int i3, long j2) {
        this.f44953f = b.a(i3, j2) ^ this.f44953f;
        this.f44955h.b(i3, i2);
        b(i3, 4);
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(int i2, long j2, long j3) {
        this.f44953f = b.a(i2, j3) ^ this.f44953f;
        this.f44955h.a(i2, j2);
        b(i2, 8);
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(byte b3, int i2, int i3) {
        super.a(b3, i2, i3);
        b(i2, 1);
    }

    @Override // com.smartdigimkt.w4.b
    public final void a() {
        if (this.f44964q >= (this.f44952e <= 16384 ? 8192 : 16384) || this.f44965r.size() >= 80) {
            b(0);
        }
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(int i2, int i3, int i4) {
        for (int i5 = 0; i5 < this.f45012I; i5 += 2) {
            int i6 = this.f45011H[i5];
            if (i6 < i2) {
                i2 = i6;
            }
        }
        int[] iArr = this.f45011H;
        iArr[0] = i2;
        iArr[1] = this.f44952e - i2;
        this.f45012I = 2;
    }

    @Override // com.smartdigimkt.w4.b
    public final void a(int i2, byte[] bArr) {
        int length = bArr.length;
        this.f44953f ^= this.f44955h.a(i2, length);
        q qVar = this.f44955h;
        qVar.f44990c = i2;
        int length2 = bArr.length;
        if (length2 > 0) {
            System.arraycopy(bArr, 0, qVar.f44989b, i2, length2);
            qVar.f44990c += length2;
        }
        this.f44953f ^= this.f44955h.a(i2, length);
        b(i2, bArr.length);
    }
}
