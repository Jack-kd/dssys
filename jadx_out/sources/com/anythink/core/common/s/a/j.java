package com.anythink.core.common.s.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.s.a.b;
import com.anythink.core.common.v.v;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public final class j extends com.anythink.core.common.s.a.a {

    /* renamed from: S, reason: collision with root package name */
    private static final String f7605S = "j";

    /* renamed from: T, reason: collision with root package name */
    private static final int f7606T = 1;

    /* renamed from: U, reason: collision with root package name */
    private static final int f7607U = 2;

    /* renamed from: V, reason: collision with root package name */
    private static final int f7608V = 3000;

    /* renamed from: W, reason: collision with root package name */
    private static final Random f7609W = new Random();

    /* renamed from: X, reason: collision with root package name */
    private final boolean f7610X;

    /* renamed from: Y, reason: collision with root package name */
    private final File f7611Y;

    /* renamed from: Z, reason: collision with root package name */
    private final File f7612Z;
    private RandomAccessFile aa;
    private RandomAccessFile ab;
    private FileChannel ac;
    private FileChannel ad;
    private MappedByteBuffer ae;
    private FileLock af;
    private int[] ag;
    private int ah;
    private long ai;
    private boolean aj;
    private final Executor ak;
    private volatile b al;
    private final Set<String> am;
    private final Handler an;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final Map<String, j> f7616a = new ConcurrentHashMap();

        /* renamed from: b, reason: collision with root package name */
        private String f7617b;

        /* renamed from: c, reason: collision with root package name */
        private String f7618c;

        /* renamed from: d, reason: collision with root package name */
        private com.anythink.core.common.s.a.a.b[] f7619d;

        /* renamed from: e, reason: collision with root package name */
        private com.anythink.core.common.s.a.a.a f7620e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f7621f = false;

        public a(Context context, String str) {
            if (context == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f7617b = v.b(context);
            this.f7618c = str;
        }

        private a a(com.anythink.core.common.s.a.a.b[] bVarArr) {
            this.f7619d = bVarArr;
            return this;
        }

        public final j b() {
            j jVar;
            String str = this.f7617b + this.f7618c;
            Map<String, j> map = f7616a;
            j jVar2 = map.get(str);
            if (jVar2 != null) {
                return jVar2;
            }
            synchronized (a.class) {
                try {
                    jVar = map.get(str);
                    if (jVar == null) {
                        j jVar3 = new j(this.f7617b, this.f7618c, this.f7619d, this.f7620e, this.f7621f);
                        map.put(str, jVar3);
                        jVar = jVar3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return jVar;
        }

        private a a(com.anythink.core.common.s.a.a.a aVar) {
            this.f7620e = aVar;
            return this;
        }

        public final a a() {
            this.f7621f = false;
            return this;
        }

        private a(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            if (!str.endsWith(ServiceReference.DELIMITER)) {
                str = str + '/';
            }
            this.f7617b = str;
            this.f7618c = str2;
        }
    }

    public class b extends FileObserver {
        public b(String str) {
            super(str, 2);
        }

        @Override // android.os.FileObserver
        public final void onEvent(int i2, String str) {
            if (j.this.an.hasMessages(1)) {
                return;
            }
            j.this.an.sendEmptyMessageDelayed(1, 30L);
        }
    }

    public j(String str, String str2, com.anythink.core.common.s.a.a.b[] bVarArr, com.anythink.core.common.s.a.a.a aVar, boolean z2) {
        super(str, str2, bVarArr, aVar);
        this.ag = new int[16];
        this.ah = 0;
        this.aj = false;
        this.ak = new i();
        this.am = new HashSet();
        this.an = new Handler(Looper.getMainLooper()) { // from class: com.anythink.core.common.s.a.j.2
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    j.this.ak.execute(new Runnable() { // from class: com.anythink.core.common.s.a.j.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.this.D();
                        }
                    });
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    j.this.apply();
                }
            }
        };
        this.f7611Y = new File(str, str2 + ".kva");
        this.f7612Z = new File(str, str2 + ".kvb");
        this.f7610X = z2;
        SystemClock.currentThreadTimeMillis();
        k();
    }

    private void A() throws IOException {
        File file;
        MappedByteBuffer map = this.ae;
        if (map == null || (file = this.f7611Y) == null) {
            return;
        }
        int length = (int) file.length();
        if (length <= 0) {
            b("invalid file length");
            return;
        }
        if (this.ae.capacity() != length) {
            long j2 = length;
            this.ac.truncate(j2);
            map = this.ac.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
            if (map == null) {
                return;
            }
            this.ae = map;
            map.order(ByteOrder.LITTLE_ENDIAN);
        }
        long j3 = length;
        if (this.ad.size() != j3) {
            this.ad.truncate(j3);
        }
        int iCapacity = map.capacity();
        int i2 = map.getInt(0);
        int i3 = (-1073741825) & i2;
        boolean zB = com.anythink.core.common.s.a.a.b(i2);
        if (i3 < 0 || i3 > iCapacity) {
            throw new IllegalStateException("Invalid file, dataSize:" + i3 + ", capacity:" + iCapacity);
        }
        long j4 = map.getLong(4);
        int i4 = i3 + 12;
        long j5 = this.ai;
        if (i4 < map.capacity() - 8) {
            j5 = map.getLong(i4);
        }
        if (i4 == this.f7513A && j4 == this.f7514B && j5 == this.ai) {
            return;
        }
        this.f7513A = i4;
        this.f7514B = j4;
        this.ai = j5;
        HashMap<String, b.AbstractC0079b> map2 = this.f7530R.isEmpty() ? null : new HashMap<>(this.f7515C);
        z();
        if (j4 != this.f7517E.b(12, i3) || !a(zB)) {
            B();
        } else if (map2 != null) {
            a(map2);
        }
    }

    private void B() {
        c();
        try {
            q();
            this.ae.putInt(0, a(0));
            this.ae.putLong(4, 0L);
            n();
            if (l.a(this.f7612Z)) {
                e(com.anythink.core.common.s.a.a.f7509r);
                b(0, 12);
                l();
            }
        } catch (Exception e2) {
            a(e2);
            this.aj = true;
        }
        l.c(new File(this.f7533v + this.f7534w));
        e((String) null);
    }

    private void C() throws IOException {
        int i2 = com.anythink.core.common.s.a.a.f7509r;
        int iA = com.anythink.core.common.s.a.a.a(i2, this.f7513A + i2);
        byte[] bArr = this.f7517E.f7579a;
        if (iA >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[iA];
        System.arraycopy(bArr, 0, bArr2, 0, this.f7513A);
        this.f7517E.f7579a = bArr2;
        try {
            long j2 = iA;
            this.ac.truncate(j2);
            MappedByteBuffer map = this.ac.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
            this.ae = map;
            map.order(ByteOrder.LITTLE_ENDIAN);
            this.ab.setLength(j2);
            this.ad.truncate(j2);
        } catch (Exception e2) {
            a(new Exception("map failed", e2));
            this.aj = true;
        }
        c("truncate finish");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void D() {
        g();
        x();
    }

    private boolean E() {
        return this.ac == null && this.ad == null;
    }

    private void e(int i2) throws IOException {
        if (this.ab == null) {
            this.ab = new RandomAccessFile(this.f7612Z, "rw");
        }
        if (this.ad == null) {
            this.ad = this.ab.getChannel();
        }
        long j2 = i2;
        if (this.ad.size() != j2) {
            this.ab.setLength(j2);
            this.ad.truncate(j2);
        }
    }

    private synchronized void k() {
        try {
            long jNanoTime = System.nanoTime();
            if (!r()) {
                m();
            }
            if (this.f7517E == null) {
                this.f7517E = new f(com.anythink.core.common.s.a.a.f7509r);
            }
            if (this.f7513A == 0) {
                this.f7513A = 12;
            }
            if (this.f7521I) {
                a();
                c("rewrite data");
            }
            if (this.f7536y != null) {
                c("loading finish, data len:" + this.f7513A + ", get keys:" + this.f7515C.size() + ", use time:" + ((System.nanoTime() - jNanoTime) / C.MICROS_PER_SECOND) + " ms");
            }
            l();
        } catch (Throwable th) {
            throw th;
        }
    }

    private void l() {
        File file;
        if (this.f7610X && this.al == null && (file = this.f7612Z) != null && file.exists()) {
            this.al = new b(this.f7612Z.getPath());
            this.al.startWatching();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8 A[Catch: all -> 0x009e, TryCatch #2 {all -> 0x009e, blocks: (B:19:0x0067, B:23:0x0077, B:28:0x008c, B:61:0x0163, B:31:0x00a1, B:35:0x00ad, B:37:0x00ba, B:38:0x00c7, B:40:0x00cb, B:42:0x00d1, B:45:0x00d8, B:46:0x00e7, B:48:0x00f0, B:51:0x0108, B:53:0x0118, B:55:0x0120, B:57:0x0145, B:59:0x014b, B:60:0x015b, B:50:0x00fb, B:22:0x0073, B:65:0x016b), top: B:77:0x0067, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015b A[Catch: all -> 0x009e, TryCatch #2 {all -> 0x009e, blocks: (B:19:0x0067, B:23:0x0077, B:28:0x008c, B:61:0x0163, B:31:0x00a1, B:35:0x00ad, B:37:0x00ba, B:38:0x00c7, B:40:0x00cb, B:42:0x00d1, B:45:0x00d8, B:46:0x00e7, B:48:0x00f0, B:51:0x0108, B:53:0x0118, B:55:0x0120, B:57:0x0145, B:59:0x014b, B:60:0x015b, B:50:0x00fb, B:22:0x0073, B:65:0x016b), top: B:77:0x0067, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m() {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.s.a.j.m():void");
    }

    private void n() {
        MappedByteBuffer mappedByteBuffer = this.ae;
        if (mappedByteBuffer == null || this.f7513A + 8 >= mappedByteBuffer.capacity()) {
            return;
        }
        this.ai = this.ae.getLong(this.f7513A);
    }

    private void o() {
        try {
            if (l.a(this.f7612Z)) {
                e(this.ae.capacity());
                b(0, this.f7513A);
            }
        } catch (Exception e2) {
            a(e2);
        }
    }

    private void p() {
        try {
            if (q()) {
                this.ae.position(0);
                this.ae.put(this.f7517E.f7579a, 0, this.f7513A);
            }
        } catch (Exception e2) {
            a(e2);
        }
    }

    private boolean q() throws IOException {
        int length = this.f7517E.f7579a.length;
        try {
            if (this.aa == null) {
                if (!l.a(this.f7611Y)) {
                    return false;
                }
                this.aa = new RandomAccessFile(this.f7611Y, "rw");
            }
            long j2 = length;
            if (this.aa.length() != j2) {
                this.aa.setLength(j2);
            }
            FileChannel fileChannel = this.ac;
            if (fileChannel == null) {
                this.ac = this.aa.getChannel();
            } else if (fileChannel.size() != j2) {
                this.ac.truncate(j2);
            }
            MappedByteBuffer mappedByteBuffer = this.ae;
            if (mappedByteBuffer != null && mappedByteBuffer.capacity() == length) {
                return true;
            }
            MappedByteBuffer map = this.ac.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
            this.ae = map;
            map.order(ByteOrder.LITTLE_ENDIAN);
            return true;
        } catch (Exception e2) {
            a(e2);
            return false;
        }
    }

    private boolean r() {
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
                } else if (a(this.f7517E)) {
                    c("recover from c file");
                    z2 = true;
                }
                b();
            }
            return z2;
        } catch (Exception e2) {
            a(e2);
            return z2;
        }
    }

    private synchronized void s() {
        try {
            if (!this.am.isEmpty()) {
                Iterator<String> it = this.am.iterator();
                while (it.hasNext()) {
                    e(it.next());
                }
                this.am.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void t() {
        try {
            try {
                MappedByteBuffer mappedByteBuffer = this.ae;
                if (mappedByteBuffer != null) {
                    mappedByteBuffer.force();
                }
                FileChannel fileChannel = this.ad;
                if (fileChannel != null) {
                    fileChannel.force(true);
                }
            } catch (Exception e2) {
                a(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean u() {
        f fVar = this.f7517E;
        fVar.f7580b = 0;
        int iC = fVar.c() & (-1073741825);
        long jD = this.f7517E.d();
        this.f7514B = jD;
        this.f7513A = iC + 12;
        if (jD == this.f7517E.b(12, iC)) {
            return a(this.f7517E);
        }
        B();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean v() {
        if (this.af == null) {
            return false;
        }
        if (this.f7517E == null || (this.ah == 0 && !this.aj)) {
            x();
            return false;
        }
        try {
            int iA = a(this.f7513A - 12);
            this.f7517E.a(0, iA);
            this.f7517E.a(4, this.f7514B);
            if (this.aj) {
                boolean zU = u();
                if (zU) {
                    this.aj = false;
                }
                this.ah = 0;
                if (!this.f7520H.isEmpty()) {
                    this.f7520H.clear();
                }
                w();
                x();
                s();
                return zU;
            }
            if (!q()) {
                MappedByteBuffer mappedByteBuffer = this.ae;
                if (mappedByteBuffer == null) {
                    this.aj = true;
                } else if (mappedByteBuffer != null) {
                    z();
                    n();
                    f fVar = this.f7517E;
                    fVar.f7580b = 0;
                    int iC = fVar.c();
                    int i2 = (-1073741825) & iC;
                    boolean zB = com.anythink.core.common.s.a.a.b(iC);
                    long jD = this.f7517E.d();
                    this.f7514B = jD;
                    this.f7513A = i2 + 12;
                    if (jD != this.f7517E.b(12, i2) || !a(zB)) {
                        B();
                    }
                }
                return false;
            }
            e(this.ae.capacity());
            this.ae.putInt(0, iA);
            this.ae.putLong(4, this.f7514B);
            for (int i3 = 0; i3 < this.ah; i3 += 2) {
                int[] iArr = this.ag;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                byte[] bArr = this.f7517E.f7579a;
                this.ae.position(i4);
                this.ae.put(bArr, i4, i5);
            }
            if (this.f7513A + 8 < this.ae.capacity()) {
                long jNextLong = f7609W.nextLong() ^ System.nanoTime();
                this.ai = jNextLong;
                this.ae.putLong(this.f7513A, jNextLong);
            }
            b(0, 12);
            for (int i6 = 0; i6 < this.ah; i6 += 2) {
                int[] iArr2 = this.ag;
                b(iArr2[i6], iArr2[i6 + 1]);
            }
            if (!this.f7520H.isEmpty()) {
                Iterator<String> it = this.f7520H.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
            int length = this.f7517E.f7579a.length;
            int i7 = this.f7513A;
            if (length - i7 > com.anythink.core.common.s.a.a.f7510s) {
                int i8 = com.anythink.core.common.s.a.a.f7509r;
                int iA2 = com.anythink.core.common.s.a.a.a(i8, i7 + i8);
                byte[] bArr2 = this.f7517E.f7579a;
                if (iA2 < bArr2.length) {
                    byte[] bArr3 = new byte[iA2];
                    System.arraycopy(bArr2, 0, bArr3, 0, this.f7513A);
                    this.f7517E.f7579a = bArr3;
                    try {
                        long j2 = iA2;
                        this.ac.truncate(j2);
                        MappedByteBuffer map = this.ac.map(FileChannel.MapMode.READ_WRITE, 0L, j2);
                        this.ae = map;
                        map.order(ByteOrder.LITTLE_ENDIAN);
                        this.ab.setLength(j2);
                        this.ad.truncate(j2);
                    } catch (Exception e2) {
                        a(new Exception("map failed", e2));
                        this.aj = true;
                    }
                    c("truncate finish");
                }
            }
            this.ah = 0;
            if (!this.f7520H.isEmpty()) {
                this.f7520H.clear();
            }
            w();
            x();
            s();
            return true;
        } catch (Throwable th) {
            try {
                if (th instanceof Exception) {
                    a(th);
                }
                this.aj = true;
                this.ah = 0;
                if (!this.f7520H.isEmpty()) {
                    this.f7520H.clear();
                }
                w();
                x();
                s();
                return false;
            } finally {
                this.ah = 0;
                if (!this.f7520H.isEmpty()) {
                    this.f7520H.clear();
                }
                w();
                x();
                s();
            }
        }
    }

    private void w() throws InterruptedException {
        while (this.f7526N.a()) {
            try {
                Thread.sleep(10L);
            } catch (Exception unused) {
            }
        }
    }

    private synchronized void x() {
        FileLock fileLock = this.af;
        if (fileLock != null) {
            try {
                fileLock.release();
            } catch (Exception e2) {
                a(e2);
            }
            this.af = null;
            this.an.removeMessages(2);
        }
    }

    private void y() {
        if (this.ae == null) {
            return;
        }
        z();
        n();
        f fVar = this.f7517E;
        fVar.f7580b = 0;
        int iC = fVar.c();
        int i2 = (-1073741825) & iC;
        boolean zB = com.anythink.core.common.s.a.a.b(iC);
        long jD = this.f7517E.d();
        this.f7514B = jD;
        this.f7513A = i2 + 12;
        if (jD == this.f7517E.b(12, i2) && a(zB)) {
            return;
        }
        B();
    }

    private void z() {
        this.f7515C.clear();
        e();
        int iCapacity = this.ae.capacity();
        f fVar = this.f7517E;
        if (fVar == null) {
            this.f7517E = new f(iCapacity);
        } else if (fVar.f7579a.length != iCapacity) {
            fVar.f7579a = new byte[iCapacity];
        }
        this.ae.rewind();
        this.ae.get(this.f7517E.f7579a, 0, this.f7513A);
    }

    @Override // android.content.SharedPreferences.Editor
    public final void apply() {
        this.f7527O.execute(new Runnable() { // from class: com.anythink.core.common.s.a.j.1
            @Override // java.lang.Runnable
            public final void run() {
                j.this.v();
            }
        });
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor clear() {
        g();
        B();
        x();
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final boolean commit() {
        return v();
    }

    @Override // com.anythink.core.common.s.a.a
    public final void f(String str) {
        if (this.f7530R.isEmpty()) {
            return;
        }
        this.am.add(str);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void g() {
        if (this.af != null) {
            return;
        }
        if (this.ad == null) {
            m();
            l();
        }
        FileChannel fileChannel = this.ad;
        if (fileChannel != null) {
            try {
                this.af = fileChannel.lock();
                try {
                    A();
                } finally {
                    this.an.sendEmptyMessageDelayed(2, 3000L);
                }
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    @Override // com.anythink.core.common.s.a.a
    public final void h() {
        if (this.f7528P >= f() || this.f7529Q.size() >= 80) {
            c(0);
        }
    }

    @Override // com.anythink.core.common.s.a.a
    public final void i() {
        this.f7514B ^= this.f7517E.b(this.f7518F, this.f7519G);
        int i2 = this.f7519G;
        if (i2 != 0) {
            d(this.f7518F, i2);
            this.f7519G = 0;
        }
    }

    public final synchronized int j() {
        int i2;
        i2 = 0;
        try {
            try {
                if (this.af != null) {
                    commit();
                }
                if (this.al != null) {
                    this.al.stopWatching();
                    this.al = null;
                }
                MappedByteBuffer mappedByteBuffer = this.ae;
                if (mappedByteBuffer != null) {
                    try {
                        mappedByteBuffer.force();
                    } catch (Exception e2) {
                        a(e2);
                    }
                    this.ae = null;
                }
                FileChannel fileChannel = this.ac;
                if (fileChannel != null || this.aa != null) {
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (Exception e3) {
                            a(e3);
                        }
                        this.ac = null;
                    }
                    RandomAccessFile randomAccessFile = this.aa;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception e4) {
                            a(e4);
                        }
                        this.aa = null;
                    }
                    i2 = 1;
                }
                FileChannel fileChannel2 = this.ad;
                if (fileChannel2 != null || this.ab != null) {
                    if (fileChannel2 != null) {
                        try {
                            fileChannel2.close();
                        } catch (Exception e5) {
                            a(e5);
                        }
                        this.ad = null;
                    }
                    RandomAccessFile randomAccessFile2 = this.ab;
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (Exception e6) {
                            a(e6);
                        }
                        this.ab = null;
                    }
                    i2++;
                }
                if (i2 > 0) {
                    c("MPFastKV closed: " + this.f7534w + ", released FD: " + i2);
                }
            } catch (Exception e7) {
                a(e7);
            }
        } catch (Throwable th) {
            throw th;
        }
        return i2;
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor remove(String str) {
        try {
            g();
            f(str);
            b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
            if (abstractC0079b != null) {
                this.f7515C.remove(str);
                this.f7525M.b(str);
                this.f7524L.b(str);
                byte bA = abstractC0079b.a();
                String str2 = null;
                if (bA <= 5) {
                    int iB = f.b(str);
                    int i2 = abstractC0079b.f7549a;
                    a(bA, i2 - (iB + 2), i2 + com.anythink.core.common.s.a.a.f7507o[bA]);
                } else {
                    b.j jVar = (b.j) abstractC0079b;
                    a(bA, jVar.f7557d, jVar.f7549a + jVar.f7558e);
                    if (jVar.f7559f) {
                        str2 = (String) jVar.f7556c;
                    }
                }
                if (str2 != null) {
                    this.f7520H.add(str2);
                }
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final String toString() {
        return "MPFastKV: path:" + this.f7533v + " name:" + this.f7534w;
    }

    private void b(int i2, int i3) throws IOException {
        MappedByteBuffer mappedByteBuffer = this.ae;
        mappedByteBuffer.position(i2);
        mappedByteBuffer.limit(i3 + i2);
        if (this.ad.size() != mappedByteBuffer.capacity()) {
            this.ad.truncate(mappedByteBuffer.capacity());
        }
        this.ad.position(i2);
        while (mappedByteBuffer.hasRemaining()) {
            this.ad.write(mappedByteBuffer);
        }
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void c(int i2, int i3) {
        byte[] bArr = this.f7517E.f7579a;
        this.ae.position(i2);
        this.ae.put(bArr, i2, i3);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(g gVar) throws Exception {
        a(gVar.f7517E);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void d() {
        super.d();
        this.ai = 0L;
    }

    private boolean a(f fVar) throws Exception {
        int length = fVar.f7579a.length;
        try {
            if (l.a(this.f7611Y) && l.a(this.f7612Z)) {
                if (this.ab == null) {
                    this.ab = new RandomAccessFile(this.f7612Z, "rw");
                }
                if (this.ad == null) {
                    this.ad = this.ab.getChannel();
                }
                FileLock fileLockLock = this.af == null ? this.ad.lock() : null;
                try {
                    q();
                    this.ae.put(fVar.f7579a, 0, this.f7513A);
                    n();
                    long j2 = length;
                    if (this.ab.length() != j2) {
                        this.ab.setLength(j2);
                    }
                    this.ad.truncate(j2);
                    b(0, this.f7513A);
                    this.ad.force(false);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    l();
                    return true;
                } catch (Throwable th) {
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    throw th;
                }
            }
            throw new Exception("open file failed");
        } catch (Exception e2) {
            a(e2);
            return false;
        }
    }

    private void d(int i2, int i3) {
        int i4 = this.ah;
        int[] iArr = this.ag;
        int length = iArr.length;
        if ((i4 << 1) >= length) {
            int[] iArr2 = new int[length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            this.ag = iArr2;
        }
        int[] iArr3 = this.ag;
        iArr3[i4] = i2;
        iArr3[i4 + 1] = i3;
        this.ah = i4 + 2;
    }

    @Override // com.anythink.core.common.s.a.a
    public final void g(String str) {
        this.f7520H.add(str);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void d(int i2) {
        int length = this.f7517E.f7579a.length;
        int i3 = this.f7513A + i2 + 8;
        if (i3 >= length) {
            byte[] bArr = new byte[com.anythink.core.common.s.a.a.a(length, i3)];
            System.arraycopy(this.f7517E.f7579a, 0, bArr, 0, this.f7513A);
            this.f7517E.f7579a = bArr;
        }
    }

    private void a(HashMap<String, b.AbstractC0079b> map) {
        HashSet hashSet = new HashSet(this.f7515C.keySet());
        HashSet hashSet2 = new HashSet(map.keySet());
        HashSet<String> hashSet3 = new HashSet(hashSet);
        hashSet3.retainAll(hashSet2);
        hashSet.removeAll(hashSet3);
        hashSet2.removeAll(hashSet3);
        this.am.addAll(hashSet);
        this.am.addAll(hashSet2);
        for (String str : hashSet3) {
            b.AbstractC0079b abstractC0079b = map.get(str);
            b.AbstractC0079b abstractC0079b2 = this.f7515C.get(str);
            if (abstractC0079b != null && !abstractC0079b.a(abstractC0079b2)) {
                this.am.add(str);
            }
        }
        if (this.am.isEmpty()) {
            return;
        }
        s();
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(byte b3, int i2) {
        this.f7514B ^= com.anythink.core.common.s.a.a.a(1L, i2);
        this.f7517E.f7579a[i2] = b3;
        d(i2, 1);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(int i2, long j2, int i3) {
        this.f7514B = com.anythink.core.common.s.a.a.a(j2, i3) ^ this.f7514B;
        this.f7517E.a(i3, i2);
        d(i3, 4);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(long j2, long j3, int i2) {
        this.f7514B = com.anythink.core.common.s.a.a.a(j3, i2) ^ this.f7514B;
        this.f7517E.a(i2, j2);
        d(i2, 8);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(int i2, byte[] bArr) {
        super.a(i2, bArr);
        d(i2, bArr.length);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(byte b3, int i2, int i3) {
        super.a(b3, i2, i3);
        d(i2, 1);
    }

    @Override // com.anythink.core.common.s.a.a
    public final void a(int i2, int i3, int i4) {
        for (int i5 = 0; i5 < this.ah; i5 += 2) {
            int i6 = this.ag[i5];
            if (i6 < i2) {
                i2 = i6;
            }
        }
        int[] iArr = this.ag;
        iArr[0] = i2;
        iArr[1] = this.f7513A - i2;
        this.ah = 2;
    }
}
