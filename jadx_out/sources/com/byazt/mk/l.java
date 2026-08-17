package com.byazt.mk;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.byazt.tw.a;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.ym.j;
import com.kuaishou.weapon.p0.t;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.fourthline.cling.model.types.BytesRange;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1210, 34})
/* loaded from: classes3.dex */
public class l implements jx {
    public static final HashMap<String, l> hp = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public long f23065a;

    /* renamed from: e, reason: collision with root package name */
    public RandomAccessFile f23066e;
    public final a gu;

    /* renamed from: j, reason: collision with root package name */
    public File f23067j;
    public l jl;

    /* renamed from: l, reason: collision with root package name */
    public volatile long f23069l;

    /* renamed from: w, reason: collision with root package name */
    public File f23072w;
    public com.byazt.tw.l zy;
    public final Object jx = new Object();
    public volatile long eb = -1;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f23071s = false;

    /* renamed from: q, reason: collision with root package name */
    public volatile boolean f23070q = false;

    /* renamed from: k, reason: collision with root package name */
    public AtomicBoolean f23068k = new AtomicBoolean(false);

    public l(Context context, com.byazt.tw.l lVar, a aVar) {
        this.f23069l = -2147483648L;
        this.f23065a = 0L;
        this.f23066e = null;
        this.gu = aVar;
        this.zy = lVar;
        try {
            this.f23067j = com.byazt.xm.jx.l(aVar.getCacheParentDir(), aVar.getFileNameKey());
            this.f23072w = com.byazt.xm.jx.jx(aVar.getCacheParentDir(), aVar.getFileNameKey());
            if (eb()) {
                this.f23066e = new RandomAccessFile(this.f23072w, t.f31269k);
            } else {
                this.f23066e = new RandomAccessFile(this.f23067j, "rw");
            }
            if (eb()) {
                return;
            }
            long length = this.f23067j.length();
            this.f23065a = length;
            if (length == aVar.getVideoSize() && this.f23065a != 0) {
                boolean zHp = com.byazt.qm.hp.hp(com.byazt.qm.hp.hp(this.f23067j), aVar.getFileNameKey());
                aVar.getFileNameKey();
                if (zHp) {
                    hp(this.f23065a);
                    this.f23069l = this.f23065a;
                    return;
                }
            }
            if (!j()) {
                w();
                return;
            }
            synchronized (l.class) {
                try {
                    if (a()) {
                        s();
                    } else {
                        l lVar2 = this.jl;
                        if (lVar2 != null) {
                            this.f23069l = lVar2.hp();
                        }
                    }
                } finally {
                }
            }
        } catch (Throwable unused) {
            aVar.getUrl();
        }
    }

    private boolean a() {
        String strW = w();
        synchronized (l.class) {
            try {
                HashMap<String, l> map = hp;
                l lVar = map.get(strW);
                this.jl = lVar;
                if (lVar != null) {
                    return false;
                }
                map.put(strW, this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean eb() {
        return this.f23072w.exists() && this.f23072w.length() > 0;
    }

    private boolean j() throws IOException {
        RandomAccessFile randomAccessFile = this.f23066e;
        if (randomAccessFile == null) {
            return false;
        }
        try {
            FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
            if (fileLockTryLock == null) {
                if (fileLockTryLock != null) {
                    try {
                        fileLockTryLock.close();
                    } catch (IOException unused) {
                    }
                }
                return false;
            }
            try {
                fileLockTryLock.close();
                return true;
            } catch (IOException unused2) {
                return true;
            }
        } catch (IOException unused3) {
            return false;
        }
    }

    private long q() {
        return eb() ? this.f23072w.length() : this.f23067j.length();
    }

    private void s() {
        jl.hp hpVarL = com.byazt.fw.l.jx() != null ? com.byazt.fw.l.jx().l() : new jl.hp("v_cache");
        long connectTimeOutMills = this.gu.getConnectTimeOutMills();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        hpVarL.hp(connectTimeOutMills, timeUnit).l(this.gu.getReadTimeOutMills(), timeUnit).jx(this.gu.getWriteTimeOutMills(), timeUnit);
        jl jlVarHp = hpVarL.hp();
        this.gu.getFileNameKey();
        jlVarHp.hp(new k.hp().hp("RANGE", BytesRange.PREFIX + this.f23065a + "-").hp(this.gu.getUrl()).hp().l()).hp(new com.byazt.uhg.jx() { // from class: com.byazt.mk.l.1
            @Override // com.byazt.uhg.jx
            public void onFailure(com.byazt.uhg.l lVar, IOException iOException) {
                l.this.f23070q = false;
                l.this.f23069l = -1L;
                l.this.hp(true);
            }

            /* JADX WARN: Code restructure failed: missing block: B:100:0x01c3, code lost:
            
                if (r18.hp.f23070q == false) goto L198;
             */
            /* JADX WARN: Code restructure failed: missing block: B:102:0x01cd, code lost:
            
                if (r2 != r18.hp.f23069l) goto L199;
             */
            /* JADX WARN: Code restructure failed: missing block: B:104:0x01d1, code lost:
            
                if (r2 <= r16) goto L200;
             */
            /* JADX WARN: Code restructure failed: missing block: B:105:0x01d3, code lost:
            
                r0 = r18.hp;
             */
            /* JADX WARN: Code restructure failed: missing block: B:198:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:199:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:200:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:93:0x0196, code lost:
            
                r11 = 0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:96:0x01a8, code lost:
            
                r6.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:97:0x01ab, code lost:
            
                if (r5 == null) goto L99;
             */
            /* JADX WARN: Code restructure failed: missing block: B:98:0x01ad, code lost:
            
                r5.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:99:0x01b0, code lost:
            
                r20.close();
                r2 = r18.hp.f23067j.length();
             */
            /* JADX WARN: Removed duplicated region for block: B:133:0x025b A[Catch: all -> 0x02cf, TRY_ENTER, TryCatch #9 {all -> 0x02cf, blocks: (B:133:0x025b, B:135:0x0260, B:136:0x0263, B:138:0x0278, B:142:0x0286, B:128:0x0240, B:118:0x0213, B:120:0x0218, B:121:0x021b, B:123:0x0230, B:127:0x023e), top: B:180:0x0008 }] */
            /* JADX WARN: Removed duplicated region for block: B:135:0x0260 A[Catch: all -> 0x02cf, TryCatch #9 {all -> 0x02cf, blocks: (B:133:0x025b, B:135:0x0260, B:136:0x0263, B:138:0x0278, B:142:0x0286, B:128:0x0240, B:118:0x0213, B:120:0x0218, B:121:0x021b, B:123:0x0230, B:127:0x023e), top: B:180:0x0008 }] */
            @Override // com.byazt.uhg.jx
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onResponse(com.byazt.uhg.l r19, com.byazt.uhg.u r20) throws java.io.IOException {
                /*
                    Method dump skipped, instructions count: 726
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.mk.l.AnonymousClass1.onResponse(com.byazt.uhg.l, com.byazt.uhg.u):void");
            }
        });
    }

    private String w() {
        a aVar = this.gu;
        return aVar == null ? "" : aVar.getFileNameKey();
    }

    @Override // com.byazt.mk.jx
    public long jx() throws IOException {
        if (!eb()) {
            synchronized (this.jx) {
                int i2 = 0;
                do {
                    try {
                        if (this.f23069l == -2147483648L) {
                            try {
                                l lVar = this.jl;
                                if (lVar != null) {
                                    this.f23069l = lVar.hp();
                                }
                                i2 += 15;
                                this.jx.wait(5L);
                            } catch (InterruptedException unused) {
                                throw new IOException("total length InterruptException");
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } while (i2 <= 10000);
                return -1L;
            }
        }
        this.f23069l = this.f23072w.length();
        return this.f23069l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(boolean z2) {
        String strW = w();
        synchronized (l.class) {
            try {
                if (z2) {
                    hp.remove(strW);
                } else {
                    HashMap<String, l> map = hp;
                    if (map.get(strW) == this) {
                        map.remove(strW);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.mk.jx
    public void l() {
        try {
            if (!this.f23071s) {
                this.f23066e.close();
            }
            File file = this.f23067j;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.f23072w;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable unused) {
        }
        hp(false);
        synchronized (this.jx) {
            this.f23071s = true;
        }
    }

    public long hp() {
        return this.f23069l;
    }

    private void hp(long j2, long j3, long j4, long j5, boolean z2, long j6) throws JSONException {
        com.byazt.pg.k kVar;
        if ((z2 || this.f23068k.compareAndSet(false, true)) && (kVar = (com.byazt.pg.k) j.getService(NotificationCompat.CATEGORY_EVENT)) != null) {
            JSONObject jSONObject = new JSONObject();
            com.byazt.tw.l lVar = this.zy;
            if (lVar != null) {
                jSONObject = lVar.hp();
            }
            try {
                jSONObject.put("totalLength", j2);
                jSONObject.put("position", j3);
                jSONObject.put("cacheLength", j4);
                jSONObject.put("waitTime", j5);
                a aVar = this.gu;
                if (aVar != null) {
                    jSONObject.put("videoUrl", aVar.getUrl());
                }
                jSONObject.put("startSaveLength", j6);
            } catch (Exception unused) {
            }
            kVar.onExceptionEvent("video_wait", jSONObject, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:? -> B:27:0x0061). Please report as a decompilation issue!!! */
    @Override // com.byazt.mk.jx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hp(long r19, byte[] r21, int r22, int r23) throws java.io.IOException {
        /*
            r18 = this;
            r1 = r18
            r4 = r19
            long r2 = r1.f23069l     // Catch: java.lang.Throwable -> L86
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            r13 = -1
            if (r0 != 0) goto Lc
            return r13
        Lc:
            r14 = -1
            r0 = 0
            r16 = r0
            r2 = r14
        L12:
            boolean r6 = r1.f23071s     // Catch: java.lang.Throwable -> L86
            if (r6 != 0) goto L8a
            java.lang.Object r6 = r1.jx     // Catch: java.lang.Throwable -> L86
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L86
            r8 = r6
            long r6 = r1.q()     // Catch: java.lang.Throwable -> L40
            int r9 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1))
            if (r9 != 0) goto L24
            r11 = r6
            goto L25
        L24:
            r11 = r2
        L25:
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L43
            java.io.RandomAccessFile r2 = r1.f23066e     // Catch: java.lang.Throwable -> L40
            r2.seek(r4)     // Catch: java.lang.Throwable -> L40
            java.io.RandomAccessFile r2 = r1.f23066e     // Catch: java.lang.Throwable -> L40
            r3 = r21
            r9 = r22
            r10 = r23
            int r2 = r2.read(r3, r9, r10)     // Catch: java.lang.Throwable -> L40
            r16 = r2
            r17 = r13
        L3e:
            r13 = r8
            goto L63
        L40:
            r0 = move-exception
            r13 = r8
            goto L88
        L43:
            r3 = r21
            r9 = r22
            r10 = r23
            int r0 = r0 + 33
            java.lang.Object r2 = r1.jx     // Catch: java.lang.Throwable -> L40
            r17 = r13
            r13 = 33
            r2.wait(r13)     // Catch: java.lang.Throwable -> L40
            r2 = 4000(0xfa0, float:5.605E-42)
            if (r0 < r2) goto L3e
            long r2 = r1.f23069l     // Catch: java.lang.Throwable -> L40
            r13 = r8
            long r8 = (long) r0
            r10 = 0
            r1.hp(r2, r4, r6, r8, r10, r11)     // Catch: java.lang.Throwable -> L61
            goto L63
        L61:
            r0 = move-exception
            goto L88
        L63:
            monitor-exit(r13)     // Catch: java.lang.Throwable -> L61
            if (r16 <= 0) goto L67
            return r16
        L67:
            r2 = 10000(0x2710, float:1.4013E-41)
            if (r0 >= r2) goto L73
            r4 = r19
            r2 = r11
            r13 = r17
            r14 = -1
            goto L12
        L73:
            long r2 = r1.f23069l     // Catch: java.lang.Throwable -> L86
            long r6 = r1.q()     // Catch: java.lang.Throwable -> L86
            long r8 = (long) r0     // Catch: java.lang.Throwable -> L86
            r10 = 1
            r4 = r19
            r1.hp(r2, r4, r6, r8, r10, r11)     // Catch: java.lang.Throwable -> L86
            java.net.SocketTimeoutException r0 = new java.net.SocketTimeoutException     // Catch: java.lang.Throwable -> L86
            r0.<init>()     // Catch: java.lang.Throwable -> L86
            throw r0     // Catch: java.lang.Throwable -> L86
        L86:
            r0 = move-exception
            goto L8d
        L88:
            monitor-exit(r13)     // Catch: java.lang.Throwable -> L61
            throw r0     // Catch: java.lang.Throwable -> L86
        L8a:
            r17 = r13
            return r17
        L8d:
            boolean r1 = r0 instanceof java.io.IOException
            if (r1 == 0) goto L94
            java.io.IOException r0 = (java.io.IOException) r0
            throw r0
        L94:
            java.io.IOException r0 = new java.io.IOException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.mk.l.hp(long, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2) throws IOException {
        synchronized (this.jx) {
            if (this.f23072w.exists() && this.f23072w.length() >= j2) {
                this.gu.getUrl();
                this.gu.getFileNameKey();
                return;
            }
            if (this.f23067j.renameTo(this.f23072w)) {
                RandomAccessFile randomAccessFile = this.f23066e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                if (!this.f23071s) {
                    this.f23066e = new RandomAccessFile(this.f23072w, "rw");
                }
                this.gu.getFileNameKey();
                this.gu.getUrl();
                return;
            }
            throw new IOException("Error renaming file " + this.f23067j + " to " + this.f23072w + " for completion!");
        }
    }
}
