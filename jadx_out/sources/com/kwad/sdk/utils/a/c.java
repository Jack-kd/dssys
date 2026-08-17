package com.kwad.sdk.utils.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.sdk.utils.a.a;
import io.flutter.embedding.android.KeyboardMap;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public final class c {
    private static final int PAGE_SIZE;
    private static final int[] brN = {0, 1, 4, 4, 8, 8};
    private static final byte[] brO = new byte[0];
    private static final int brP;
    private static final int brQ;
    private static final int brR;
    private final String apn;
    private final Map<String, b> brS;
    private FileChannel brU;
    private FileChannel brV;
    private RandomAccessFile brW;
    private RandomAccessFile brX;
    private MappedByteBuffer brY;
    private MappedByteBuffer brZ;
    private com.kwad.sdk.utils.a.b bsa;
    private int bsb;
    private long bsc;
    private int bsf;
    private int bsg;
    private int bsh;
    private boolean bsi;
    private String bsj;
    private int bsk;
    private int bsm;
    private final String name;
    private final d brT = com.kwad.sdk.utils.a.d.bsx;
    private final Map<String, a.b> bsd = new HashMap();
    private boolean bse = false;
    private final ArrayList<e> bsl = new ArrayList<>();
    private boolean bsn = true;
    private final Executor bso = new f();

    public static class a {
        static int bsq = 11;
        static final C0636c bsr = new C0636c(11);
        private final String apn;
        private int bsm = 0;
        private b[] bss;
        private final String name;

        public a(String str, String str2) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("path is empty");
            }
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            if (!str.endsWith(ServiceReference.DELIMITER)) {
                str = str + '/';
            }
            this.apn = str;
            this.name = str2;
        }

        public final c XC() {
            String str = this.apn + this.name;
            c cVarIz = C0636c.iz(str);
            if (cVarIz == null) {
                synchronized (a.class) {
                    try {
                        cVarIz = C0636c.iz(str);
                        if (cVarIz == null) {
                            cVarIz = new c(this.apn, this.name, this.bss, this.bsm);
                            C0636c.b(str, cVarIz);
                        }
                    } finally {
                    }
                }
            }
            Integer num = C0636c.bsw.get(str);
            if (num != null) {
                C0636c.bsw.put(str, Integer.valueOf(num.intValue() + 1));
                return cVarIz;
            }
            C0636c.bsw.put(str, 1);
            return cVarIz;
        }
    }

    public interface b<T> {
        String XD();

        T f(byte[] bArr, int i2, int i3);

        byte[] u(T t2);
    }

    /* renamed from: com.kwad.sdk.utils.a.c$c, reason: collision with other inner class name */
    public static class C0636c {
        private static Map<String, c> bst;
        private static List<String> bsu;
        private static int bsv;
        public static Map<String, Integer> bsw;

        public C0636c(int i2) {
            int size = getSize(i2);
            bst = new ConcurrentHashMap(size);
            bsw = new HashMap(size);
            bsu = new CopyOnWriteArrayList();
            bsv = i2;
        }

        public static void b(String str, c cVar) throws IOException {
            if (bst == null) {
                bst = new ConcurrentHashMap(getSize(bsv));
            }
            if (bsu == null) {
                bsu = new CopyOnWriteArrayList();
            }
            if (bst.containsKey(str)) {
                bsu.remove(str);
                bsu.add(str);
            } else {
                bsu.add(str);
            }
            bst.put(str, cVar);
            if (bst.size() > bsv) {
                Integer num = bsw.get(bsu.get(0));
                if (num != null && num.intValue() != 2) {
                    gq(bsv + 1);
                    return;
                }
                c cVar2 = bst.get(bsu.get(0));
                if (cVar2 != null) {
                    cVar2.release();
                }
                bst.remove(bsu.get(0));
                bsu.remove(0);
            }
        }

        private static int getSize(int i2) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }

        private static void gq(int i2) {
            com.kwad.sdk.utils.a.d.bsx.i("Ks_UnionKv", "reSize:" + i2);
            bsv = i2;
        }

        public static c iz(String str) {
            if (bst == null) {
                bst = new ConcurrentHashMap(getSize(bsv));
            }
            if (bsu == null) {
                bsu = new CopyOnWriteArrayList();
            }
            c cVar = bst.get(str);
            if (cVar == null) {
                return null;
            }
            bsu.remove(str);
            bsu.add(str);
            return cVar;
        }

        public static void remove(String str) {
            List<String> list = bsu;
            if (list != null) {
                list.remove(str);
            }
            Map<String, c> map = bst;
            if (map != null) {
                map.remove(str);
            }
        }
    }

    public interface d {
        void a(String str, Exception exc);

        void e(String str, Throwable th);

        void i(String str, String str2);
    }

    public static class e implements Comparable<e> {
        int end;
        int start;

        public e(int i2, int i3) {
            this.start = i2;
            this.end = i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e eVar) {
            return this.start - eVar.start;
        }
    }

    static {
        int iXF = h.XF();
        PAGE_SIZE = iXF;
        brP = iXF - 192;
        int iMax = Math.max(iXF << 1, 16384);
        brQ = iMax;
        brR = iMax << 1;
    }

    public c(String str, String str2, b[] bVarArr, int i2) {
        this.apn = str;
        this.name = str2;
        this.bsm = i2;
        HashMap map = new HashMap();
        g gVar = g.bsE;
        map.put(gVar.XD(), gVar);
        if (bVarArr != null && bVarArr.length > 0) {
            for (b bVar : bVarArr) {
                String strXD = bVar.XD();
                if (map.containsKey(strXD)) {
                    iy("duplicate encoder tag:" + strXD);
                } else {
                    map.put(strXD, bVar);
                }
            }
        }
        this.brS = map;
        synchronized (this.bsd) {
            com.kwad.sdk.utils.a.d.getExecutor().execute(new Runnable() { // from class: com.kwad.sdk.utils.a.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.Xk();
                }
            });
            while (!this.bse) {
                try {
                    this.bsd.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    private int M(int i2, int i3) {
        if (i3 > 536870912) {
            IllegalStateException illegalStateException = new IllegalStateException("data size out of limit");
            if (com.kwad.library.a.a.pe.booleanValue()) {
                throw illegalStateException;
            }
            z(illegalStateException);
        }
        int i4 = PAGE_SIZE;
        if (i3 <= i4) {
            return i4;
        }
        while (i2 < i3) {
            int i5 = brQ;
            i2 = i2 <= i5 ? i2 << 1 : i2 + i5;
        }
        return i2;
    }

    private void N(int i2, int i3) {
        this.bsk += i3 - i2;
        ArrayList<e> arrayList = this.bsl;
        if (arrayList != null) {
            arrayList.add(new e(i2, i3));
        }
    }

    private void XA() {
        ArrayList<e> arrayList = this.bsl;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size() - 1;
        e eVar = this.bsl.get(size);
        while (size > 0) {
            int i2 = size - 1;
            e eVar2 = this.bsl.get(i2);
            if (eVar.start == eVar2.end) {
                eVar2.end = eVar.end;
                this.bsl.remove(size);
            }
            eVar = eVar2;
            size = i2;
        }
    }

    private void XB() {
        this.bsk = 0;
        ArrayList<e> arrayList = this.bsl;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Xk() {
        try {
            synchronized (this.bsd) {
                this.bse = true;
                this.bsd.notify();
            }
            long jNanoTime = System.nanoTime();
            if (!Xn() && this.bsm == 0) {
                Xl();
            }
            if (this.bsa == null) {
                this.bsa = new com.kwad.sdk.utils.a.b(PAGE_SIZE);
            }
            if (this.brT != null) {
                info("loading finish, data len:" + this.bsb + ", get keys:" + this.bsd.size() + ", use time:" + ((System.nanoTime() - jNanoTime) / C.MICROS_PER_SECOND) + " ms");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void Xl() throws IOException {
        long j2;
        File file = new File(this.apn, this.name + ".kva");
        File file2 = new File(this.apn, this.name + ".kvb");
        try {
            if (h.ag(file) && h.ag(file2)) {
                this.brW = new RandomAccessFile(file, "rw");
                this.brX = new RandomAccessFile(file2, "rw");
                long length = this.brW.length();
                long length2 = this.brX.length();
                this.brU = this.brW.getChannel();
                this.brV = this.brX.getChannel();
                try {
                    FileChannel fileChannel = this.brU;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, length > 0 ? length : PAGE_SIZE);
                    this.brY = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.brV.map(mapMode, 0L, length2 > 0 ? length2 : PAGE_SIZE);
                    this.brZ = map2;
                    map2.order(byteOrder);
                    this.bsa = new com.kwad.sdk.utils.a.b(this.brY.capacity());
                    if (length == 0 && length2 == 0) {
                        this.bsb = 12;
                        return;
                    }
                    int i2 = this.brY.getInt();
                    long j3 = this.brY.getLong();
                    int i3 = this.brZ.getInt();
                    long j4 = this.brZ.getLong();
                    if (i2 < 0) {
                        j2 = 12;
                    } else if (i2 <= length - 12) {
                        this.bsb = i2 + 12;
                        this.brY.rewind();
                        j2 = 12;
                        this.brY.get(this.bsa.brM, 0, this.bsb);
                        if (j3 == this.bsa.L(12, i2) && Xo() == 0) {
                            this.bsc = j3;
                            if (length == length2 && Xm()) {
                                return;
                            }
                            g(new Exception("B file error"));
                            a(this.brY, this.brZ, this.bsb);
                            return;
                        }
                    } else {
                        j2 = 12;
                    }
                    if (i3 >= 0 && i3 <= length2 - j2) {
                        this.bsd.clear();
                        XB();
                        this.bsb = i3 + 12;
                        if (this.bsa.brM.length != this.brZ.capacity()) {
                            this.bsa = new com.kwad.sdk.utils.a.b(this.brZ.capacity());
                        }
                        this.brZ.rewind();
                        this.brZ.get(this.bsa.brM, 0, this.bsb);
                        if (j4 == this.bsa.L(12, i3) && Xo() == 0) {
                            g(new Exception("A file error"));
                            a(this.brZ, this.brY, this.bsb);
                            this.bsc = j4;
                            return;
                        }
                    }
                    iy("both files error");
                    Xu();
                    return;
                } catch (IOException e2) {
                    z(e2);
                    Xt();
                    j(file, file2);
                    return;
                }
            }
            z(new Exception("open file failed"));
            Xt();
        } catch (Throwable th) {
            z(th);
            Xv();
            Xt();
        }
    }

    private boolean Xm() {
        com.kwad.sdk.utils.a.b bVar = new com.kwad.sdk.utils.a.b(this.bsb);
        MappedByteBuffer mappedByteBuffer = this.brZ;
        if (mappedByteBuffer != null) {
            mappedByteBuffer.rewind();
            this.brZ.get(bVar.brM, 0, this.bsb);
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 == null) {
            return true;
        }
        byte[] bArr = bVar2.brM;
        byte[] bArr2 = bVar.brM;
        for (int i2 = 0; i2 < this.bsb; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean Xn() {
        File file = new File(this.apn, this.name + ".kvc");
        File file2 = new File(this.apn, this.name + ".tmp");
        boolean z2 = false;
        try {
            if (!file.exists()) {
                file = file2.exists() ? file2 : null;
            }
            if (file != null) {
                if (!af(file)) {
                    Xv();
                    Xs();
                    return false;
                }
                if (this.bsm == 0) {
                    if (!a(this.bsa)) {
                        this.bsm = 1;
                        return false;
                    }
                    info("recover from c file");
                    try {
                        Xs();
                        return true;
                    } catch (Exception e2) {
                        e = e2;
                        z2 = true;
                        z(e);
                        return z2;
                    }
                }
            } else if (this.bsm != 0) {
                File file3 = new File(this.apn, this.name + ".kva");
                File file4 = new File(this.apn, this.name + ".kvb");
                if (file3.exists() && file4.exists()) {
                    j(file3, file4);
                }
            }
            return false;
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0173, code lost:
    
        throw new java.lang.Exception("parse dara failed");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int Xo() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.utils.a.c.Xo():int");
    }

    private void Xp() {
        if (this.bsm == 0 || !this.bsn) {
            return;
        }
        Xq();
    }

    private boolean Xq() {
        int i2 = this.bsm;
        if (i2 == 1) {
            Executor executor = this.bso;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.kwad.sdk.utils.a.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.this.Xr();
                    }
                });
            }
        } else if (i2 == 2) {
            return Xr();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean Xr() {
        try {
            try {
                File file = new File(this.apn, this.name + ".tmp");
                if (h.ag(file)) {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.setLength(this.bsb);
                    randomAccessFile.write(this.bsa.brM, 0, this.bsb);
                    randomAccessFile.close();
                    File file2 = new File(this.apn, this.name + ".kvc");
                    if (!file2.exists() || file2.delete()) {
                        if (file.renameTo(file2)) {
                            return true;
                        }
                        g(new Exception("rename failed"));
                    }
                }
            } catch (Exception e2) {
                z(e2);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void Xs() {
        try {
            h.h(new File(this.apn, this.name + ".kvc"));
            h.h(new File(this.apn, this.name + ".tmp"));
        } catch (Exception e2) {
            z(e2);
        }
    }

    private void Xt() throws IOException {
        this.bsm = 1;
        h.closeQuietly(this.brU);
        h.closeQuietly(this.brV);
        this.brU = null;
        this.brV = null;
        this.brY = null;
        this.brZ = null;
    }

    private void Xu() throws IOException {
        if (this.bsm == 0) {
            try {
                a(this.brY);
                a(this.brZ);
            } catch (Throwable unused) {
                Xt();
            }
        }
        Xv();
        h.h(new File(this.apn + this.name));
    }

    private void Xv() {
        this.bsb = 12;
        this.bsc = 0L;
        XB();
        this.bsd.clear();
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null || bVar.brM.length != PAGE_SIZE) {
            this.bsa = new com.kwad.sdk.utils.a.b(PAGE_SIZE);
        } else {
            bVar.J(0, 0);
            this.bsa.h(4, 0L);
        }
    }

    private void Xw() {
        com.kwad.sdk.utils.a.b bVar;
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            this.bsc ^= bVar2.L(this.bsf, this.bsg);
        }
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putInt(0, -1);
                b(this.brY);
                this.brY.putInt(0, this.bsb - 12);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                b(mappedByteBuffer2);
            }
        } else {
            if (this.bsi && (bVar = this.bsa) != null) {
                bVar.J(0, this.bsb - 12);
            }
            com.kwad.sdk.utils.a.b bVar3 = this.bsa;
            if (bVar3 != null) {
                bVar3.h(4, this.bsc);
            }
        }
        this.bsi = false;
        this.bsh = 0;
        this.bsg = 0;
    }

    private int Xx() {
        int i2 = this.bsb;
        if (i2 <= 16384) {
            return 4096;
        }
        return i2 <= 65536 ? 8192 : 16384;
    }

    private void Xy() throws IOException {
        gn(this.bsg);
        int i2 = this.bsb;
        this.bsf = i2;
        this.bsb = this.bsg + i2;
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            bVar.position = i2;
        }
        this.bsi = true;
    }

    private void Xz() throws IOException {
        if (this.bsk < (Xx() << 1)) {
            if (this.bsl.size() < (this.bsb < 16384 ? 80 : 160)) {
                return;
            }
        }
        go(0);
    }

    private boolean af(File file) throws IOException {
        long length = file.length();
        if (length != 0 && length <= 536870912) {
            int i2 = (int) length;
            int iM = M(PAGE_SIZE, i2);
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar == null || bVar.brM.length != iM) {
                bVar = new com.kwad.sdk.utils.a.b(new byte[iM]);
                this.bsa = bVar;
            } else {
                bVar.position = 0;
            }
            h.a(file, bVar.brM, i2);
            int i3 = bVar.getInt();
            long j2 = bVar.getLong();
            this.bsb = i3 + 12;
            if (i3 >= 0 && i3 <= i2 - 12 && j2 == bVar.L(12, i3) && Xo() == 0) {
                this.bsc = j2;
                return true;
            }
        }
        return false;
    }

    private static void f(int i2, boolean z2) {
        if (z2) {
            if (i2 != 32) {
                throw new IllegalStateException("name size not match");
            }
        } else if (i2 < 0 || i2 >= 2048) {
            throw new IllegalStateException("value size out of bound");
        }
    }

    private static long g(long j2, int i2) {
        int i3 = (i2 & 7) << 3;
        return (j2 >>> (64 - i3)) | (j2 << i3);
    }

    private static void gm(int i2) {
        if (i2 > 255) {
            throw new IllegalArgumentException("key's length must less than 256");
        }
    }

    private void gn(int i2) throws IOException {
        if (this.bsa == null) {
            this.bsa = new com.kwad.sdk.utils.a.b(PAGE_SIZE);
        }
        int length = this.bsa.brM.length;
        int i3 = this.bsb + i2;
        if (i3 >= length) {
            int i4 = this.bsk;
            if (i4 > i2 && i4 > Xx()) {
                go(i2);
                return;
            }
            int iM = M(length, i3);
            byte[] bArr = new byte[iM];
            System.arraycopy(this.bsa.brM, 0, bArr, 0, this.bsb);
            this.bsa.brM = bArr;
            if (this.bsm == 0) {
                try {
                    FileChannel fileChannel = this.brU;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    long j2 = iM;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j2);
                    this.brY = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.brV.map(mapMode, 0L, j2);
                    this.brZ = map2;
                    map2.order(byteOrder);
                } catch (Throwable th) {
                    z(new Exception("map failed", th));
                    this.bsa.J(0, this.bsb - 12);
                    this.bsa.h(4, this.bsc);
                    Xt();
                }
            }
        }
    }

    private void go(int i2) throws IOException {
        int i3;
        ArrayList<e> arrayList = this.bsl;
        if (arrayList == null || this.bsa == null) {
            return;
        }
        Collections.sort(arrayList);
        XA();
        e eVar = this.bsl.get(0);
        int i4 = eVar.start;
        int i5 = this.bsb;
        int i6 = i5 - this.bsk;
        int i7 = i6 - 12;
        int i8 = i6 - i4;
        int i9 = i5 - i4;
        boolean z2 = true;
        boolean z3 = i7 < i9 + i8;
        if (!z3) {
            this.bsc ^= this.bsa.L(i4, i9);
        }
        int size = this.bsl.size();
        int i10 = size - 1;
        int i11 = this.bsb - this.bsl.get(i10).end;
        int[] iArr = new int[(i11 > 0 ? size : i10) << 1];
        int i12 = eVar.start;
        int i13 = eVar.end;
        int i14 = 1;
        while (i14 < size) {
            e eVar2 = this.bsl.get(i14);
            boolean z4 = z2;
            int i15 = eVar2.start - i13;
            byte[] bArr = this.bsa.brM;
            System.arraycopy(bArr, i13, bArr, i12, i15);
            int i16 = (i14 - 1) << 1;
            iArr[i16] = i13;
            iArr[i16 + 1] = i13 - i12;
            i12 += i15;
            i13 = eVar2.end;
            i14++;
            z2 = z4;
        }
        if (i11 > 0) {
            byte[] bArr2 = this.bsa.brM;
            System.arraycopy(bArr2, i13, bArr2, i12, i11);
            int i17 = i10 << 1;
            iArr[i17] = i13;
            iArr[i17 + 1] = i13 - i12;
        }
        XB();
        if (z3) {
            this.bsc = this.bsa.L(12, i7);
        } else {
            this.bsc ^= this.bsa.L(i4, i8);
        }
        this.bsb = i6;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                i3 = 0;
                mappedByteBuffer.putInt(0, -1);
                this.brY.putLong(4, this.bsc);
                this.brY.position(i4);
                this.brY.put(this.bsa.brM, i4, i8);
                this.brY.putInt(0, i7);
            } else {
                i3 = 0;
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putInt(i3, i7);
                this.brZ.putLong(4, this.bsc);
                this.brZ.position(i4);
                this.brZ.put(this.bsa.brM, i4, i8);
            }
        } else {
            this.bsa.J(0, i7);
            this.bsa.h(4, this.bsc);
        }
        a(i4, iArr);
        int i18 = i6 + i2;
        if (this.bsa.brM.length - i18 > brR) {
            gp(i18);
        }
        info("gc finish");
    }

    private void gp(int i2) throws IOException {
        int i3 = PAGE_SIZE;
        int iM = M(i3, i2 + i3);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            byte[] bArr = bVar.brM;
            if (iM >= bArr.length) {
                return;
            }
            byte[] bArr2 = new byte[iM];
            System.arraycopy(bArr, 0, bArr2, 0, this.bsb);
            this.bsa.brM = bArr2;
        }
        if (this.bsm == 0) {
            try {
                long j2 = iM;
                this.brU.truncate(j2);
                FileChannel fileChannel = this.brU;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j2);
                this.brY = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.brV.truncate(j2);
                MappedByteBuffer map2 = this.brV.map(mapMode, 0L, j2);
                this.brZ = map2;
                map2.order(byteOrder);
            } catch (Throwable th) {
                z(new Exception("map failed", th));
                Xt();
            }
        }
        info("truncate finish");
    }

    private void info(String str) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.i(this.name, str);
        }
    }

    private static void ix(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("key is empty");
        }
    }

    private void iy(String str) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.e(this.name, new Exception(str));
        }
    }

    private void j(File file, File file2) {
        try {
            if (af(file)) {
                return;
            }
        } catch (IOException e2) {
            g(e2);
        }
        Xv();
        try {
            if (af(file2)) {
                return;
            }
        } catch (Exception e3) {
            g(e3);
        }
        Xv();
    }

    private synchronized void putDouble(String str, double d2) throws Throwable {
        Throwable th;
        try {
            try {
                ix(str);
                a.d dVar = (a.d) this.bsd.get(str);
                if (dVar != null) {
                    if (dVar.value != d2) {
                        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
                        long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(dVar.value) ^ jDoubleToRawLongBits;
                        dVar.value = d2;
                        b(jDoubleToRawLongBits, jDoubleToRawLongBits2, dVar.offset);
                        Xp();
                    }
                    return;
                }
                try {
                    a(str, (byte) 5);
                    com.kwad.sdk.utils.a.b bVar = this.bsa;
                    if (bVar != null) {
                        int i2 = bVar.position;
                        bVar.bg(Double.doubleToRawLongBits(d2));
                        Xw();
                        Map<String, a.b> map = this.bsd;
                        if (map != null) {
                            map.put(str, new a.d(i2, d2));
                        }
                    }
                    Xp();
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
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

    private synchronized void putFloat(String str, float f2) {
        try {
            ix(str);
            a.e eVar = (a.e) this.bsd.get(str);
            if (eVar != null) {
                if (eVar.value != f2) {
                    int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
                    long jFloatToRawIntBits = (Float.floatToRawIntBits(eVar.value) ^ iFloatToRawIntBits) & KeyboardMap.kValueMask;
                    eVar.value = f2;
                    b(iFloatToRawIntBits, jFloatToRawIntBits, eVar.offset);
                    Xp();
                }
                return;
            }
            a(str, (byte) 3);
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                int i2 = bVar.position;
                bVar.gf(Float.floatToRawIntBits(f2));
                Xw();
                Map<String, a.b> map = this.bsd;
                if (map != null) {
                    map.put(str, new a.e(i2, f2));
                }
            }
            Xp();
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void putStringSet(String str, Set<String> set) {
        if (set == null) {
            remove(str);
        } else {
            a(str, (String) set, (b<String>) g.bsE);
        }
    }

    private void u(String str, int i2) {
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null) {
            return;
        }
        bVar.e((byte) i2);
        if (i2 != str.length()) {
            this.bsa.it(str);
            return;
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        a(str, 0, i2, bVar2.brM, bVar2.position);
        this.bsa.position += i2;
    }

    private void updateBytes(int i2, byte[] bArr) {
        int length = bArr.length;
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            this.bsc ^= bVar.L(i2, length);
            com.kwad.sdk.utils.a.b bVar2 = this.bsa;
            bVar2.position = i2;
            bVar2.p(bArr);
            this.bsc ^= this.bsa.L(i2, length);
        }
        if (this.bsm != 0) {
            com.kwad.sdk.utils.a.b bVar3 = this.bsa;
            if (bVar3 != null) {
                bVar3.h(4, this.bsc);
                return;
            }
            return;
        }
        MappedByteBuffer mappedByteBuffer = this.brY;
        if (mappedByteBuffer != null) {
            mappedByteBuffer.putInt(0, -1);
            this.brY.putLong(4, this.bsc);
            this.brY.position(i2);
            this.brY.put(bArr);
            this.brY.putInt(0, this.bsb - 12);
        }
        MappedByteBuffer mappedByteBuffer2 = this.brZ;
        if (mappedByteBuffer2 != null) {
            mappedByteBuffer2.putLong(4, this.bsc);
            this.brZ.position(i2);
            this.brZ.put(bArr);
        }
    }

    private void v(String str, int i2) {
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null) {
            return;
        }
        bVar.a((short) i2);
        if (i2 != str.length()) {
            this.bsa.it(str);
        } else {
            com.kwad.sdk.utils.a.b bVar2 = this.bsa;
            a(str, 0, i2, bVar2.brM, bVar2.position);
        }
    }

    private void z(Throwable th) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.e(this.name, th);
        }
    }

    public final synchronized boolean contains(String str) {
        return this.bsd.containsKey(str);
    }

    public final synchronized Map<String, Object> getAll() {
        Object objValueOf;
        int size = this.bsd.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap map = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, a.b> entry : this.bsd.entrySet()) {
            String key = entry.getKey();
            a.b value = entry.getValue();
            switch (value.Xi()) {
                case 1:
                    objValueOf = Boolean.valueOf(((a.c) value).value);
                    break;
                case 2:
                    objValueOf = Integer.valueOf(((a.f) value).value);
                    break;
                case 3:
                    objValueOf = Float.valueOf(((a.e) value).value);
                    break;
                case 4:
                    objValueOf = Long.valueOf(((a.g) value).value);
                    break;
                case 5:
                    objValueOf = Double.valueOf(((a.d) value).value);
                    break;
                case 6:
                    a.i iVar = (a.i) value;
                    if (iVar.brK) {
                        objValueOf = a(iVar);
                        break;
                    } else {
                        objValueOf = iVar.value;
                        break;
                    }
                case 7:
                    a.C0635a c0635a = (a.C0635a) value;
                    if (c0635a.brK) {
                        objValueOf = a(c0635a);
                        break;
                    } else {
                        objValueOf = c0635a.value;
                        break;
                    }
                case 8:
                    a.h hVar = (a.h) value;
                    if (hVar.brK) {
                        objValueOf = a(hVar);
                        break;
                    } else {
                        objValueOf = ((a.h) value).value;
                        break;
                    }
                default:
                    objValueOf = null;
                    break;
            }
            map.put(key, objValueOf);
        }
        return map;
    }

    public final synchronized boolean getBoolean(String str, boolean z2) {
        a.c cVar = (a.c) this.bsd.get(str);
        if (cVar == null) {
            return z2;
        }
        return cVar.value;
    }

    public final synchronized int getInt(String str, int i2) {
        a.f fVar = (a.f) this.bsd.get(str);
        if (fVar == null) {
            return i2;
        }
        return fVar.value;
    }

    public final synchronized long getLong(String str, long j2) {
        a.g gVar = (a.g) this.bsd.get(str);
        if (gVar == null) {
            return j2;
        }
        return gVar.value;
    }

    public final synchronized String getString(String str, String str2) {
        a.i iVar = (a.i) this.bsd.get(str);
        if (iVar == null) {
            return str2;
        }
        if (iVar.brK) {
            return a(iVar);
        }
        return (String) iVar.value;
    }

    public final void putAll(Map<String, Object> map) {
        a(map, (Map<Class, b>) null);
    }

    public final synchronized void putBoolean(String str, boolean z2) {
        try {
            ix(str);
            a.c cVar = (a.c) this.bsd.get(str);
            if (cVar != null) {
                if (cVar.value != z2) {
                    cVar.value = z2;
                    a(z2 ? (byte) 1 : (byte) 0, cVar.offset);
                    Xp();
                }
                return;
            }
            a(str, (byte) 1);
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                int i2 = bVar.position;
                bVar.e(z2 ? (byte) 1 : (byte) 0);
                Xw();
                Map<String, a.b> map = this.bsd;
                if (map != null) {
                    map.put(str, new a.c(i2, z2));
                }
            }
            Xp();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void putInt(String str, int i2) {
        try {
            ix(str);
            a.f fVar = (a.f) this.bsd.get(str);
            if (fVar != null) {
                if (fVar.value != i2) {
                    long j2 = (r6 ^ i2) & KeyboardMap.kValueMask;
                    fVar.value = i2;
                    b(i2, j2, fVar.offset);
                    Xp();
                }
                return;
            }
            a(str, (byte) 2);
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                int i3 = bVar.position;
                bVar.gf(i2);
                Xw();
                Map<String, a.b> map = this.bsd;
                if (map != null) {
                    map.put(str, new a.f(i3, i2));
                }
            }
            Xp();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void putLong(String str, long j2) throws Throwable {
        Throwable th;
        try {
            try {
                ix(str);
                a.g gVar = (a.g) this.bsd.get(str);
                if (gVar != null) {
                    long j3 = gVar.value;
                    if (j3 != j2) {
                        long j4 = j2 ^ j3;
                        gVar.value = j2;
                        b(j2, j4, gVar.offset);
                        Xp();
                    }
                    return;
                }
                try {
                    a(str, (byte) 4);
                    com.kwad.sdk.utils.a.b bVar = this.bsa;
                    if (bVar != null) {
                        int i2 = bVar.position;
                        bVar.bg(j2);
                        Xw();
                        Map<String, a.b> map = this.bsd;
                        if (map != null) {
                            map.put(str, new a.g(i2, j2));
                        }
                    }
                    Xp();
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
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

    public final synchronized void putString(String str, String str2) throws Throwable {
        Throwable th;
        byte[] bArrIw;
        byte[] bArr;
        byte[] bArr2;
        try {
            try {
                ix(str);
            } catch (Throwable th2) {
                th = th2;
                th = th;
                throw th;
            }
            try {
                if (str2 == null) {
                    remove(str);
                    return;
                }
                a.i iVar = (a.i) this.bsd.get(str);
                if (str2.length() * 3 < 2048) {
                    a(str, str2, iVar);
                    return;
                }
                if (!str2.isEmpty()) {
                    if (iVar == null && str2.length() < 2048) {
                        int iIu = com.kwad.sdk.utils.a.b.iu(str2);
                        bArr = new byte[iIu];
                        if (iIu == str2.length()) {
                            a(str2, 0, iIu, bArr, 0);
                            bArr2 = bArr;
                        } else {
                            bArrIw = com.kwad.sdk.utils.a.b.iw(str2);
                        }
                    } else if (iVar == null || iVar.brK) {
                        bArrIw = com.kwad.sdk.utils.a.b.iw(str2);
                    } else {
                        int iIu2 = com.kwad.sdk.utils.a.b.iu(str2);
                        bArr = new byte[iIu2];
                        if (iIu2 == str2.length()) {
                            a(str2, 0, iIu2, bArr, 0);
                            bArr2 = bArr;
                        } else {
                            bArrIw = com.kwad.sdk.utils.a.b.iw(str2);
                        }
                    }
                    a(str, str2, bArr2, iVar, (byte) 6);
                }
                bArrIw = brO;
                bArr2 = bArrIw;
                a(str, str2, bArr2, iVar, (byte) 6);
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public final void release() throws IOException {
        h.closeQuietly(this.brW);
        h.closeQuietly(this.brX);
        h.closeQuietly(this.brU);
        h.closeQuietly(this.brV);
        this.brU = null;
        this.brV = null;
        this.brY = null;
        this.brZ = null;
        String str = this.apn + this.name;
        int i2 = a.bsq;
        C0636c.remove(str);
    }

    public final synchronized void remove(String str) {
        try {
            a.b bVar = this.bsd.get(str);
            if (bVar != null) {
                this.bsd.remove(str);
                byte bXi = bVar.Xi();
                String str2 = null;
                if (bXi <= 5) {
                    int iIu = com.kwad.sdk.utils.a.b.iu(str);
                    int i2 = bVar.offset;
                    a(bXi, i2 - (iIu + 2), i2 + brN[bXi]);
                } else {
                    a.j jVar = (a.j) bVar;
                    a(bXi, jVar.start, jVar.offset + jVar.brJ);
                    if (jVar.brK) {
                        str2 = (String) jVar.value;
                    }
                }
                byte b3 = (byte) (bXi | com.anythink.core.common.s.a.c.f7560a);
                if (this.bsm == 0) {
                    MappedByteBuffer mappedByteBuffer = this.brY;
                    if (mappedByteBuffer != null) {
                        mappedByteBuffer.putLong(4, this.bsc);
                        this.brY.put(this.bsh, b3);
                    }
                    MappedByteBuffer mappedByteBuffer2 = this.brZ;
                    if (mappedByteBuffer2 != null) {
                        mappedByteBuffer2.putLong(4, this.bsc);
                        this.brZ.put(this.bsh, b3);
                    }
                } else {
                    com.kwad.sdk.utils.a.b bVar2 = this.bsa;
                    if (bVar2 != null) {
                        bVar2.h(4, this.bsc);
                    }
                }
                this.bsh = 0;
                if (str2 != null) {
                    h.h(new File(this.apn + this.name, str2));
                }
                Xz();
                Xp();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized String toString() {
        return "FastKV: path:" + this.apn + " name:" + this.name;
    }

    private boolean a(com.kwad.sdk.utils.a.b bVar) throws Exception {
        int length = bVar.brM.length;
        File file = new File(this.apn, this.name + ".kva");
        File file2 = new File(this.apn, this.name + ".kvb");
        try {
            if (!h.ag(file) || !h.ag(file2)) {
                throw new Exception("open file failed");
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
            long j2 = length;
            randomAccessFile.setLength(j2);
            randomAccessFile2.setLength(j2);
            this.brU = randomAccessFile.getChannel();
            this.brV = randomAccessFile2.getChannel();
            FileChannel fileChannel = this.brU;
            FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
            MappedByteBuffer map = fileChannel.map(mapMode, 0L, j2);
            this.brY = map;
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            map.order(byteOrder);
            MappedByteBuffer map2 = this.brV.map(mapMode, 0L, j2);
            this.brZ = map2;
            map2.order(byteOrder);
            this.brY.put(bVar.brM, 0, this.bsb);
            this.brZ.put(bVar.brM, 0, this.bsb);
            return true;
        } catch (Exception e2) {
            z(e2);
            return false;
        }
    }

    private synchronized void b(String str, byte[] bArr) throws Throwable {
        Throwable th;
        try {
            try {
                ix(str);
                if (bArr != null) {
                    a(str, bArr, bArr, (a.C0635a) this.bsd.get(str), (byte) 7);
                    return;
                }
                try {
                    remove(str);
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
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

    private void g(Exception exc) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.a(this.name, exc);
        }
    }

    private void b(MappedByteBuffer mappedByteBuffer) {
        if (mappedByteBuffer == null) {
            return;
        }
        if (this.bsi && mappedByteBuffer != this.brY) {
            mappedByteBuffer.putInt(0, this.bsb - 12);
        }
        mappedByteBuffer.putLong(4, this.bsc);
        int i2 = this.bsh;
        if (i2 != 0) {
            mappedByteBuffer.put(i2, this.bsa.brM[i2]);
        }
        if (this.bsg != 0) {
            mappedByteBuffer.position(this.bsf);
            mappedByteBuffer.put(this.bsa.brM, this.bsf, this.bsg);
        }
    }

    private void b(int i2, long j2, int i3) {
        long jG = g(j2, i3) ^ this.bsc;
        this.bsc = jG;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putLong(4, jG);
                this.brY.putInt(i3, i2);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putLong(4, this.bsc);
                this.brZ.putInt(i3, i2);
            }
        } else {
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.h(4, jG);
            }
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            bVar2.J(i3, i2);
        }
    }

    private void a(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i2) throws IOException {
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                MappedByteBuffer map = (mappedByteBuffer2 == this.brZ ? this.brV : this.brU).map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.brZ) {
                    this.brZ = map;
                } else {
                    this.brY = map;
                }
                mappedByteBuffer2 = map;
            } catch (Exception e2) {
                z(e2);
                Xt();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i2);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void b(long j2, long j3, int i2) {
        long jG = g(j3, i2) ^ this.bsc;
        this.bsc = jG;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putLong(4, jG);
                this.brY.putLong(i2, j2);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putLong(4, this.bsc);
                this.brZ.putLong(i2, j2);
            }
        } else {
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.h(4, jG);
            }
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            bVar2.h(i2, j2);
        }
    }

    private String a(a.i iVar) {
        byte[] bytes;
        try {
            byte[] bArrAh = h.ah(new File(this.apn + this.name, (String) iVar.value));
            String str = new String(bArrAh);
            return (bArrAh == null || TextUtils.isEmpty(str) || (bytes = com.kwad.sdk.utils.a.b.j(bArrAh, com.kwad.sdk.utils.a.b.iu(str)).getBytes()) == null || bytes.length == 0) ? "" : new String(bytes, com.kwad.sdk.utils.a.b.UTF_8);
        } catch (Exception e2) {
            z(e2);
        }
        return "";
    }

    private int b(String str, byte[] bArr, byte b3) throws IOException {
        a(str, b3, bArr.length + 2);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null) {
            return 0;
        }
        bVar.a((short) bArr.length);
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        int i2 = bVar2.position;
        bVar2.p(bArr);
        return i2;
    }

    private byte[] a(a.C0635a c0635a) {
        try {
            byte[] bArrAh = h.ah(new File(this.apn + this.name, (String) c0635a.value));
            return bArrAh != null ? bArrAh : brO;
        } catch (Exception e2) {
            z(e2);
            return brO;
        }
    }

    private Object a(a.h hVar) {
        try {
            byte[] bArrAh = h.ah(new File(this.apn + this.name, (String) hVar.value));
            if (bArrAh != null) {
                int i2 = bArrAh[0] & 255;
                String str = new String(bArrAh, 1, i2, com.kwad.sdk.utils.a.b.UTF_8);
                b bVar = this.brS.get(str);
                if (bVar != null) {
                    int i3 = i2 + 1;
                    return bVar.f(bArrAh, i3, bArrAh.length - i3);
                }
                g(new Exception("No encoder for tag:" + str));
                return null;
            }
            g(new Exception("Read object data failed"));
            return null;
        } catch (Exception e2) {
            z(e2);
            return null;
        }
    }

    private synchronized <T> void a(String str, T t2, b<T> bVar) throws Throwable {
        Throwable th;
        byte[] bArrU;
        try {
            try {
                ix(str);
            } catch (Throwable th2) {
                th = th2;
                th = th;
                throw th;
            }
            try {
                if (bVar == null) {
                    IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Encoder is null");
                    if (!com.kwad.library.a.a.pe.booleanValue()) {
                        z(illegalArgumentException);
                        return;
                    }
                    throw illegalArgumentException;
                }
                String strXD = bVar.XD();
                if (!strXD.isEmpty() && strXD.length() <= 50) {
                    if (!this.brS.containsKey(strXD)) {
                        IllegalArgumentException illegalArgumentException2 = new IllegalArgumentException("Encoder hasn't been registered");
                        if (!com.kwad.library.a.a.pe.booleanValue()) {
                            z(illegalArgumentException2);
                            return;
                        }
                        throw illegalArgumentException2;
                    }
                    if (t2 == null) {
                        remove(str);
                        return;
                    }
                    try {
                        bArrU = bVar.u(t2);
                    } catch (Exception e2) {
                        z(e2);
                        bArrU = null;
                    }
                    if (bArrU == null) {
                        remove(str);
                        return;
                    }
                    int iIu = com.kwad.sdk.utils.a.b.iu(strXD);
                    com.kwad.sdk.utils.a.b bVar2 = new com.kwad.sdk.utils.a.b(iIu + 1 + bArrU.length);
                    bVar2.e((byte) iIu);
                    bVar2.it(strXD);
                    bVar2.p(bArrU);
                    a(str, t2, bVar2.brM, (a.h) this.bsd.get(str), (byte) 8);
                    return;
                }
                IllegalArgumentException illegalArgumentException3 = new IllegalArgumentException("Invalid encoder tag:" + strXD);
                if (!com.kwad.library.a.a.pe.booleanValue()) {
                    z(illegalArgumentException3);
                    return;
                }
                throw illegalArgumentException3;
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    private synchronized void a(Map<String, Object> map, Map<Class, b> map2) {
        if (map == null) {
            return;
        }
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && !key.isEmpty()) {
                    if (value instanceof String) {
                        putString(key, (String) value);
                    } else if (value instanceof Boolean) {
                        putBoolean(key, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        putInt(key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        putLong(key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        putFloat(key, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        putDouble(key, ((Double) value).doubleValue());
                    } else if (value instanceof Set) {
                        Set set = (Set) value;
                        if (!set.isEmpty() && (set.iterator().next() instanceof String)) {
                            putStringSet(key, (Set) value);
                        }
                    } else if (value instanceof byte[]) {
                        b(key, (byte[]) value);
                    } else {
                        g(new Exception("missing encoders"));
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(MappedByteBuffer mappedByteBuffer) throws IOException {
        if (mappedByteBuffer == null) {
            return;
        }
        int iCapacity = mappedByteBuffer.capacity();
        int i2 = PAGE_SIZE;
        if (iCapacity != i2) {
            FileChannel fileChannel = mappedByteBuffer == this.brY ? this.brU : this.brV;
            if (fileChannel == null) {
                return;
            }
            fileChannel.truncate(i2);
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, i2);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.brY) {
                this.brY = map;
            } else {
                this.brZ = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, 0);
        mappedByteBuffer.putLong(4, 0L);
    }

    private void a(String str, byte b3) throws IOException {
        a(str, b3, brN[b3]);
    }

    private void a(String str, byte b3, int i2) throws IOException {
        int iIu = com.kwad.sdk.utils.a.b.iu(str);
        gm(iIu);
        this.bsg = iIu + 2 + i2;
        Xy();
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            bVar.e(b3);
        }
        u(str, iIu);
    }

    private void a(byte b3, int i2) {
        long jG = this.bsc ^ g(1L, i2);
        this.bsc = jG;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putLong(4, jG);
                this.brY.put(i2, b3);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putLong(4, this.bsc);
                this.brZ.put(i2, b3);
            }
        } else {
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.h(4, jG);
            }
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            bVar2.brM[i2] = b3;
        }
    }

    private static void a(String str, int i2, int i3, byte[] bArr, int i4) {
        int i5;
        if (i3 <= str.length() && i3 >= 0) {
            int i6 = 0;
            while (i6 < i3) {
                int i7 = i6 + 1;
                char cCharAt = str.charAt(i6);
                if (cCharAt < 128) {
                    i5 = i4 + 1;
                    bArr[i4] = (byte) (((byte) cCharAt) ^ 1);
                } else {
                    i5 = i4 + 1;
                    bArr[i4] = (byte) cCharAt;
                }
                i6 = i7;
                i4 = i5;
            }
        }
    }

    private void a(String str, String str2, a.i iVar) throws IOException {
        int iIu = com.kwad.sdk.utils.a.b.iu(str2);
        if (iVar == null) {
            int iIu2 = com.kwad.sdk.utils.a.b.iu(str);
            gm(iIu2);
            int i2 = iIu2 + 4;
            this.bsg = i2 + iIu;
            Xy();
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.e((byte) 6);
            }
            u(str, iIu2);
            v(str2, iIu);
            Map<String, a.b> map = this.bsd;
            int i3 = this.bsf;
            map.put(str, new a.i(i3, i2 + i3, str2, iIu, false));
            Xw();
        } else {
            int i4 = iVar.offset;
            int i5 = i4 - iVar.start;
            int i6 = iVar.brJ;
            boolean z2 = false;
            if (i6 == iIu) {
                this.bsc = this.bsa.L(i4, i6) ^ this.bsc;
                if (iIu == str2.length()) {
                    a(str2, 0, iIu, this.bsa.brM, iVar.offset);
                } else {
                    com.kwad.sdk.utils.a.b bVar2 = this.bsa;
                    if (bVar2 != null) {
                        bVar2.position = iVar.offset;
                        bVar2.it(str2);
                    }
                }
                this.bsf = iVar.offset;
                this.bsg = iIu;
            } else {
                this.bsg = i5 + iIu;
                Xy();
                com.kwad.sdk.utils.a.b bVar3 = this.bsa;
                if (bVar3 != null) {
                    bVar3.e((byte) 6);
                }
                int i7 = i5 - 3;
                com.kwad.sdk.utils.a.b bVar4 = this.bsa;
                if (bVar4 != null) {
                    byte[] bArr = bVar4.brM;
                    System.arraycopy(bArr, iVar.start + 1, bArr, bVar4.position, i7);
                }
                com.kwad.sdk.utils.a.b bVar5 = this.bsa;
                if (bVar5 != null) {
                    bVar5.position += i7;
                }
                v(str2, iIu);
                a((byte) 6, iVar.start, iVar.offset + iVar.brJ);
                str = iVar.brK ? (String) iVar.value : null;
                iVar.brK = false;
                int i8 = this.bsf;
                iVar.start = i8;
                iVar.offset = i8 + i5;
                iVar.brJ = iIu;
                z2 = true;
            }
            iVar.value = str2;
            Xw();
            if (z2) {
                Xz();
            }
            if (str != null) {
                h.h(new File(this.apn + this.name, str));
            }
        }
        Xp();
    }

    private void a(String str, Object obj, byte[] bArr, a.j jVar, byte b3) throws IOException {
        if (jVar == null) {
            a(str, obj, bArr, b3);
        } else if (!jVar.brK && jVar.brJ == bArr.length) {
            updateBytes(jVar.offset, bArr);
            jVar.value = obj;
        } else {
            a(str, obj, bArr, jVar);
        }
        Xp();
    }

    private void a(String str, Object obj, byte[] bArr, byte b3) {
        Object obj2;
        int length;
        a.b hVar;
        int iA = a(str, bArr, b3);
        if (iA != 0) {
            String str2 = this.bsj;
            boolean z2 = str2 != null;
            if (z2) {
                this.bsj = null;
                length = 32;
                obj2 = str2;
            } else {
                obj2 = obj;
                length = bArr.length;
            }
            if (b3 == 6) {
                hVar = new a.i(this.bsf, iA, (String) obj2, length, z2);
            } else if (b3 == 7) {
                hVar = new a.C0635a(this.bsf, iA, obj2, length, z2);
            } else {
                hVar = new a.h(this.bsf, iA, obj2, length, z2);
            }
            this.bsd.put(str, hVar);
            Xw();
        }
    }

    private void a(String str, Object obj, byte[] bArr, @NonNull a.j jVar) throws IOException {
        int iA = a(str, bArr, jVar.Xi());
        if (iA != 0) {
            String str2 = jVar.brK ? (String) jVar.value : null;
            a(jVar.Xi(), jVar.start, jVar.offset + jVar.brJ);
            String str3 = this.bsj;
            boolean z2 = str3 != null;
            jVar.start = this.bsf;
            jVar.offset = iA;
            jVar.brK = z2;
            if (z2) {
                jVar.value = str3;
                jVar.brJ = 32;
                this.bsj = null;
            } else {
                jVar.value = obj;
                jVar.brJ = bArr.length;
            }
            Xw();
            Xz();
            if (str2 != null) {
                h.h(new File(this.apn + this.name, str2));
            }
        }
    }

    private int a(String str, byte[] bArr, byte b3) {
        this.bsj = null;
        if (bArr.length < 2048) {
            return b(str, bArr, b3);
        }
        info("large value, key: " + str + ", size: " + bArr.length);
        String strXE = h.XE();
        if (h.a(new File(this.apn + this.name, strXE), bArr)) {
            this.bsj = strXE;
            byte[] bArr2 = new byte[32];
            strXE.getBytes(0, 32, bArr2, 0);
            return b(str, bArr2, (byte) (b3 | com.anythink.core.common.s.a.c.f7561b));
        }
        iy("save large value failed");
        return 0;
    }

    private void a(byte b3, int i2, int i3) {
        byte[] bArr;
        N(i2, i3);
        byte b4 = (byte) (b3 | com.anythink.core.common.s.a.c.f7560a);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null && (bArr = bVar.brM) != null) {
            this.bsc = (((bArr[i2] ^ b4) & 255) << ((i2 & 7) << 3)) ^ this.bsc;
            bArr[i2] = b4;
        }
        this.bsh = i2;
    }

    private void a(int i2, int[] iArr) {
        Map<String, a.b> map = this.bsd;
        if (map == null) {
            return;
        }
        for (a.b bVar : map.values()) {
            int i3 = bVar.offset;
            if (i3 > i2) {
                int i4 = iArr[(h.binarySearch(iArr, i3) << 1) + 1];
                bVar.offset -= i4;
                if (bVar.Xi() >= 6) {
                    ((a.j) bVar).start -= i4;
                }
            }
        }
    }
}
