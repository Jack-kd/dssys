package com.byazt.cd;

import android.os.SystemClock;
import com.byazt.cd.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 94})
/* loaded from: classes2.dex */
public final class eb implements Closeable {
    public static final /* synthetic */ boolean ec = true;
    public static final ExecutorService hp = new com.byazt.shx.j(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.byazt.ru.jx.hp("OkHttp Http2Connection", true));

    /* renamed from: a, reason: collision with root package name */
    public int f18749a;
    public int eb;
    public long gu;
    public final l jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18752k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f18753l;

    /* renamed from: n, reason: collision with root package name */
    public Map<Integer, jl> f18754n;
    public int ns;

    /* renamed from: q, reason: collision with root package name */
    public final zy f18755q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18756s;
    public final ExecutorService sz;

    /* renamed from: u, reason: collision with root package name */
    public final e f18757u;

    /* renamed from: v, reason: collision with root package name */
    public final Socket f18758v;
    public final Set<Integer> vv;

    /* renamed from: w, reason: collision with root package name */
    public final String f18759w;
    public final jx xs;
    public final k zy;

    /* renamed from: j, reason: collision with root package name */
    public final Map<Integer, q> f18751j = new LinkedHashMap();

    /* renamed from: e, reason: collision with root package name */
    public long f18750e = 0;
    public k jl = new k();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 846})
    public static abstract class l {

        /* renamed from: a, reason: collision with root package name */
        public static final l f18776a = new l() { // from class: com.byazt.cd.eb.l.1
            @Override // com.byazt.cd.eb.l
            public void hp(q qVar) throws IOException {
                qVar.hp(com.byazt.cd.l.REFUSED_STREAM);
            }
        };

        public void hp(eb ebVar) {
        }

        public abstract void hp(q qVar) throws IOException;
    }

    public eb(hp hpVar) {
        k kVar = new k();
        this.zy = kVar;
        this.f18752k = false;
        this.vv = new LinkedHashSet();
        this.f18755q = hpVar.f18772a;
        boolean z2 = hpVar.eb;
        this.f18753l = z2;
        this.jx = hpVar.f18775w;
        int i2 = z2 ? 1 : 2;
        this.eb = i2;
        if (z2) {
            this.eb = i2 + 2;
        }
        this.ns = z2 ? 1 : 2;
        if (z2) {
            this.jl.hp(7, 16777216);
        }
        String str = hpVar.f18774l;
        this.f18759w = str;
        this.sz = new com.byazt.shx.j(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.byazt.ru.jx.hp(com.byazt.ru.jx.hp("OkHttp %s Push Observer", str), true));
        kVar.hp(7, 65535);
        kVar.hp(5, 16384);
        this.gu = kVar.j();
        this.f18758v = hpVar.hp;
        this.f18757u = new e(hpVar.f18773j, z2);
        this.xs = new jx(new s(hpVar.jx, z2));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        hp(com.byazt.cd.l.NO_ERROR, com.byazt.cd.l.CANCEL);
    }

    public synchronized q hp(int i2) {
        return this.f18751j.get(Integer.valueOf(i2));
    }

    public boolean j(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    public synchronized jl jx(int i2) {
        Map<Integer, jl> map = this.f18754n;
        if (map == null) {
            return null;
        }
        return map.remove(Integer.valueOf(i2));
    }

    public synchronized q l(int i2) {
        q qVarRemove;
        qVarRemove = this.f18751j.remove(Integer.valueOf(i2));
        notifyAll();
        return qVarRemove;
    }

    public synchronized int hp() {
        return this.zy.jx(Integer.MAX_VALUE);
    }

    public synchronized boolean j() {
        return this.f18756s;
    }

    public void jx() throws IOException {
        hp(true);
    }

    public q hp(List<com.byazt.cd.jx> list, boolean z2) throws IOException {
        return l(0, list, z2);
    }

    public void jx(final int i2, final com.byazt.cd.l lVar) {
        this.sz.execute(new com.byazt.ru.l("OkHttp %s Push Reset[%s]", new Object[]{this.f18759w, Integer.valueOf(i2)}) { // from class: com.byazt.cd.eb.7
            @Override // com.byazt.ru.l
            public void jx() {
                synchronized (eb.this) {
                    eb.this.vv.remove(Integer.valueOf(i2));
                }
            }
        });
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 131})
    public static class hp {
        public boolean eb;
        public Socket hp;

        /* renamed from: j, reason: collision with root package name */
        public com.byazt.raq.j f18773j;
        public com.byazt.raq.w jx;

        /* renamed from: l, reason: collision with root package name */
        public String f18774l;

        /* renamed from: w, reason: collision with root package name */
        public l f18775w = l.f18776a;

        /* renamed from: a, reason: collision with root package name */
        public zy f18772a = zy.hp;

        public hp(boolean z2) {
            this.eb = z2;
        }

        public hp hp(Socket socket, String str, com.byazt.raq.w wVar, com.byazt.raq.j jVar) {
            this.hp = socket;
            this.f18774l = str;
            this.jx = wVar;
            this.f18773j = jVar;
            return this;
        }

        public hp hp(l lVar) {
            this.f18775w = lVar;
            return this;
        }

        public eb hp() {
            return new eb(this);
        }
    }

    private q l(int i2, List<com.byazt.cd.jx> list, boolean z2) throws Throwable {
        boolean z3 = !z2;
        synchronized (this.f18757u) {
            try {
                try {
                    try {
                        synchronized (this) {
                            try {
                                if (!this.f18756s) {
                                    int i3 = this.eb;
                                    this.eb = i3 + 2;
                                    q qVar = new q(i3, this, z3, false, list);
                                    boolean z4 = !z2 || this.gu == 0 || qVar.f18810l == 0;
                                    if (qVar.l()) {
                                        this.f18751j.put(Integer.valueOf(i3), qVar);
                                    }
                                    if (i2 == 0) {
                                        this.f18757u.hp(z3, i3, i2, list);
                                    } else if (!this.f18753l) {
                                        this.f18757u.hp(i2, i3, list);
                                    } else {
                                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                                    }
                                    if (z4) {
                                        this.f18757u.l();
                                    }
                                    return qVar;
                                }
                                throw new com.byazt.cd.hp();
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r4), r8.f18757u.jx());
        r6 = r2;
        r8.gu -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r9, boolean r10, com.byazt.raq.jx r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            com.byazt.cd.e r12 = r8.f18757u
            r12.hp(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L60
            monitor-enter(r8)
        L12:
            long r4 = r8.gu     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 > 0) goto L32
            java.util.Map<java.lang.Integer, com.byazt.cd.q> r2 = r8.f18751j     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            if (r2 == 0) goto L2a
            r8.wait()     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            goto L12
        L28:
            r9 = move-exception
            goto L5e
        L2a:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            throw r9     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
        L32:
            long r4 = java.lang.Math.min(r12, r4)     // Catch: java.lang.Throwable -> L28
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L28
            com.byazt.cd.e r4 = r8.f18757u     // Catch: java.lang.Throwable -> L28
            int r4 = r4.jx()     // Catch: java.lang.Throwable -> L28
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L28
            long r4 = r8.gu     // Catch: java.lang.Throwable -> L28
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L28
            long r4 = r4 - r6
            r8.gu = r4     // Catch: java.lang.Throwable -> L28
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            long r12 = r12 - r6
            com.byazt.cd.e r4 = r8.f18757u
            if (r10 == 0) goto L53
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L53
            r5 = 1
            goto L54
        L53:
            r5 = r3
        L54:
            r4.hp(r5, r9, r11, r2)
            goto Ld
        L58:
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L28
            r9.<init>()     // Catch: java.lang.Throwable -> L28
            throw r9     // Catch: java.lang.Throwable -> L28
        L5e:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            throw r9
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cd.eb.hp(int, boolean, com.byazt.raq.jx, long):void");
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2033})
    public class jx extends com.byazt.ru.l implements s.l {
        public final s hp;

        public jx(s sVar) {
            super("OkHttp %s", eb.this.f18759w);
            this.hp = sVar;
        }

        @Override // com.byazt.cd.s.l
        public void hp(boolean z2, int i2, com.byazt.raq.w wVar, int i3) throws IOException {
            if (eb.this.j(i2)) {
                eb.this.hp(i2, wVar, i3, z2);
                return;
            }
            q qVarHp = eb.this.hp(i2);
            if (qVarHp == null) {
                eb.this.hp(i2, com.byazt.cd.l.PROTOCOL_ERROR);
                wVar.s(i3);
            } else {
                qVarHp.hp(wVar, i3);
                if (z2) {
                    qVarHp.q();
                }
            }
        }

        @Override // com.byazt.ru.l
        public void jx() throws Throwable {
            com.byazt.cd.l lVar;
            eb ebVar;
            com.byazt.cd.l lVar2 = com.byazt.cd.l.INTERNAL_ERROR;
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    this.hp.hp(this);
                    while (this.hp.hp(false, (s.l) this)) {
                    }
                } catch (Exception unused) {
                }
                try {
                    eb.this.hp(com.byazt.cd.l.NO_ERROR, com.byazt.cd.l.CANCEL);
                } catch (IOException unused2) {
                    lVar = com.byazt.cd.l.PROTOCOL_ERROR;
                    ebVar = eb.this;
                    ebVar.hp(lVar, lVar);
                    com.byazt.ru.jx.hp(this.hp);
                } catch (NullPointerException unused3) {
                    lVar = com.byazt.cd.l.PROTOCOL_ERROR;
                    ebVar = eb.this;
                    ebVar.hp(lVar, lVar);
                    com.byazt.ru.jx.hp(this.hp);
                }
            } catch (IOException unused4) {
            } catch (NullPointerException unused5) {
            } catch (Throwable th2) {
                th = th2;
                try {
                    eb.this.hp(lVar2, lVar2);
                } catch (Exception unused6) {
                }
                com.byazt.ru.jx.hp(this.hp);
                throw th;
            }
            com.byazt.ru.jx.hp(this.hp);
        }

        @Override // com.byazt.cd.s.l
        public void hp(boolean z2, int i2, int i3, List<com.byazt.cd.jx> list) {
            if (eb.this.j(i2)) {
                eb.this.hp(i2, list, z2);
                return;
            }
            synchronized (eb.this) {
                try {
                    q qVarHp = eb.this.hp(i2);
                    if (qVarHp == null) {
                        eb ebVar = eb.this;
                        if (ebVar.f18756s) {
                            return;
                        }
                        if (i2 <= ebVar.f18749a) {
                            return;
                        }
                        if (i2 % 2 == ebVar.eb % 2) {
                            return;
                        }
                        final q qVar = new q(i2, eb.this, false, z2, list);
                        eb ebVar2 = eb.this;
                        ebVar2.f18749a = i2;
                        ebVar2.f18751j.put(Integer.valueOf(i2), qVar);
                        try {
                            eb.hp.execute(new com.byazt.ru.l("OkHttp %s stream %d", new Object[]{eb.this.f18759w, Integer.valueOf(i2)}) { // from class: com.byazt.cd.eb.jx.1
                                @Override // com.byazt.ru.l
                                public void jx() {
                                    try {
                                        eb.this.jx.hp(qVar);
                                    } catch (IOException e2) {
                                        com.byazt.ksw.w.l().hp(4, "Http2Connection.Listener failure for " + eb.this.f18759w, e2);
                                        try {
                                            qVar.hp(com.byazt.cd.l.PROTOCOL_ERROR);
                                        } catch (IOException unused) {
                                        }
                                    }
                                }
                            });
                        } catch (Throwable unused) {
                        }
                        return;
                    }
                    qVarHp.hp(list);
                    if (z2) {
                        qVarHp.q();
                    }
                } finally {
                }
            }
        }

        @Override // com.byazt.cd.s.l
        public void hp(int i2, com.byazt.cd.l lVar) {
            if (eb.this.j(i2)) {
                eb.this.jx(i2, lVar);
                return;
            }
            q qVarL = eb.this.l(i2);
            if (qVarL != null) {
                qVarL.jx(lVar);
            }
        }

        @Override // com.byazt.cd.s.l
        public void hp(boolean z2, k kVar) {
            q[] qVarArr;
            long j2;
            synchronized (eb.this) {
                try {
                    int iJ = eb.this.zy.j();
                    if (z2) {
                        eb.this.zy.hp();
                    }
                    eb.this.zy.hp(kVar);
                    hp(kVar);
                    int iJ2 = eb.this.zy.j();
                    qVarArr = null;
                    if (iJ2 == -1 || iJ2 == iJ) {
                        j2 = 0;
                    } else {
                        j2 = iJ2 - iJ;
                        eb ebVar = eb.this;
                        if (!ebVar.f18752k) {
                            ebVar.hp(j2);
                            eb.this.f18752k = true;
                        }
                        if (!eb.this.f18751j.isEmpty()) {
                            qVarArr = (q[]) eb.this.f18751j.values().toArray(new q[eb.this.f18751j.size()]);
                        }
                    }
                    try {
                        eb.hp.execute(new com.byazt.ru.l("OkHttp %s settings", eb.this.f18759w) { // from class: com.byazt.cd.eb.jx.2
                            @Override // com.byazt.ru.l
                            public void jx() {
                                eb ebVar2 = eb.this;
                                ebVar2.jx.hp(ebVar2);
                            }
                        });
                    } catch (Throwable unused) {
                    }
                } finally {
                }
            }
            if (qVarArr == null || j2 == 0) {
                return;
            }
            for (q qVar : qVarArr) {
                synchronized (qVar) {
                    qVar.hp(j2);
                }
            }
        }

        private void hp(final k kVar) {
            try {
                eb.hp.execute(new com.byazt.ru.l("OkHttp %s ACK Settings", new Object[]{eb.this.f18759w}) { // from class: com.byazt.cd.eb.jx.3
                    @Override // com.byazt.ru.l
                    public void jx() {
                        try {
                            eb.this.f18757u.hp(kVar);
                        } catch (IOException unused) {
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // com.byazt.cd.s.l
        public void hp(boolean z2, int i2, int i3) {
            if (z2) {
                jl jlVarJx = eb.this.jx(i2);
                if (jlVarJx != null) {
                    jlVarJx.l();
                    return;
                }
                return;
            }
            eb.this.hp(true, i2, i3, (jl) null);
        }

        @Override // com.byazt.cd.s.l
        public void hp(int i2, com.byazt.cd.l lVar, com.byazt.raq.a aVar) {
            q[] qVarArr;
            synchronized (eb.this) {
                qVarArr = (q[]) eb.this.f18751j.values().toArray(new q[eb.this.f18751j.size()]);
                eb.this.f18756s = true;
            }
            for (q qVar : qVarArr) {
                if (qVar.hp() > i2 && qVar.jx()) {
                    qVar.jx(com.byazt.cd.l.REFUSED_STREAM);
                    eb.this.l(qVar.hp());
                }
            }
        }

        @Override // com.byazt.cd.s.l
        public void hp(int i2, long j2) {
            if (i2 == 0) {
                synchronized (eb.this) {
                    eb ebVar = eb.this;
                    ebVar.gu += j2;
                    ebVar.notifyAll();
                }
                return;
            }
            q qVarHp = eb.this.hp(i2);
            if (qVarHp != null) {
                synchronized (qVarHp) {
                    qVarHp.hp(j2);
                }
            }
        }

        @Override // com.byazt.cd.s.l
        public void hp(int i2, int i3, List<com.byazt.cd.jx> list) throws Throwable {
            eb.this.hp(i3, list);
        }
    }

    public void hp(long j2) {
        this.gu += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }

    public void hp(final int i2, final com.byazt.cd.l lVar) {
        try {
            hp.execute(new com.byazt.ru.l("OkHttp %s stream %d", new Object[]{this.f18759w, Integer.valueOf(i2)}) { // from class: com.byazt.cd.eb.1
                @Override // com.byazt.ru.l
                public void jx() {
                    try {
                        eb.this.l(i2, lVar);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void hp(final int i2, final long j2) {
        try {
            hp.execute(new com.byazt.ru.l("OkHttp Window Update %s stream %d", new Object[]{this.f18759w, Integer.valueOf(i2)}) { // from class: com.byazt.cd.eb.2
                @Override // com.byazt.ru.l
                public void jx() {
                    try {
                        eb.this.f18757u.hp(i2, j2);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void hp(final boolean z2, final int i2, final int i3, final jl jlVar) {
        try {
            hp.execute(new com.byazt.ru.l("OkHttp %s ping %08x%08x", new Object[]{this.f18759w, Integer.valueOf(i2), Integer.valueOf(i3)}) { // from class: com.byazt.cd.eb.3
                @Override // com.byazt.ru.l
                public void jx() {
                    try {
                        eb.this.l(z2, i2, i3, jlVar);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void l(int i2, com.byazt.cd.l lVar) throws IOException {
        this.f18757u.hp(i2, lVar);
    }

    public void hp(com.byazt.cd.l lVar) throws IOException {
        synchronized (this.f18757u) {
            synchronized (this) {
                if (this.f18756s) {
                    return;
                }
                this.f18756s = true;
                this.f18757u.hp(this.f18749a, lVar, com.byazt.ru.jx.hp);
            }
        }
    }

    public void l(boolean z2, int i2, int i3, jl jlVar) throws IOException {
        synchronized (this.f18757u) {
            if (jlVar != null) {
                try {
                    jlVar.hp();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f18757u.hp(z2, i2, i3);
        }
    }

    public void l() throws IOException {
        this.f18757u.l();
    }

    public void hp(com.byazt.cd.l lVar, com.byazt.cd.l lVar2) throws IOException {
        q[] qVarArr;
        if (!ec && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        jl[] jlVarArr = null;
        try {
            hp(lVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            try {
                if (this.f18751j.isEmpty()) {
                    qVarArr = null;
                } else {
                    qVarArr = (q[]) this.f18751j.values().toArray(new q[this.f18751j.size()]);
                    this.f18751j.clear();
                }
                Map<Integer, jl> map = this.f18754n;
                if (map != null) {
                    jl[] jlVarArr2 = (jl[]) map.values().toArray(new jl[this.f18754n.size()]);
                    this.f18754n = null;
                    jlVarArr = jlVarArr2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (qVarArr != null) {
            for (q qVar : qVarArr) {
                try {
                    qVar.hp(lVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        if (jlVarArr != null) {
            for (jl jlVar : jlVarArr) {
                jlVar.jx();
            }
        }
        try {
            this.f18757u.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.f18758v.close();
        } catch (IOException e5) {
            e = e5;
        }
        if (e != null) {
            throw e;
        }
    }

    public void hp(boolean z2) throws IOException {
        if (z2) {
            this.f18757u.hp();
            this.f18757u.l(this.jl);
            if (this.jl.j() != 65535) {
                this.f18757u.hp(0, r5 - 65535);
            }
        }
        com.byazt.shx.jx jxVar = new com.byazt.shx.jx(this.xs, "Http2Connection");
        jxVar.setName("csj_http2_connection" + SystemClock.uptimeMillis());
        jxVar.start();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:19:0x0041
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public void hp(final int r8, final java.util.List<com.byazt.cd.jx> r9) throws java.lang.Throwable {
        /*
            r7 = this;
            monitor-enter(r7)
            java.util.Set<java.lang.Integer> r0 = r7.vv     // Catch: java.lang.Throwable -> L3c
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L3c
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Throwable -> L3c
            if (r0 == 0) goto L18
            com.byazt.cd.l r9 = com.byazt.cd.l.PROTOCOL_ERROR     // Catch: java.lang.Throwable -> L14
            r7.hp(r8, r9)     // Catch: java.lang.Throwable -> L14
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L14
            return
        L14:
            r0 = move-exception
            r8 = r0
            r2 = r7
            goto L3f
        L18:
            java.util.Set<java.lang.Integer> r0 = r7.vv     // Catch: java.lang.Throwable -> L3c
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L3c
            r0.add(r1)     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L3c
            java.util.concurrent.ExecutorService r0 = r7.sz
            com.byazt.cd.eb$4 r1 = new com.byazt.cd.eb$4
            java.lang.String r3 = "OkHttp %s Push Request[%s]"
            java.lang.String r2 = r7.f18759w
            java.lang.Integer r4 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r4 = new java.lang.Object[]{r2, r4}
            r2 = r7
            r5 = r8
            r6 = r9
            r1.<init>(r3, r4)
            r0.execute(r1)
            return
        L3c:
            r0 = move-exception
            r2 = r7
        L3e:
            r8 = r0
        L3f:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L41
            throw r8
        L41:
            r0 = move-exception
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cd.eb.hp(int, java.util.List):void");
    }

    public void hp(final int i2, final List<com.byazt.cd.jx> list, final boolean z2) {
        this.sz.execute(new com.byazt.ru.l("OkHttp %s Push Headers[%s]", new Object[]{this.f18759w, Integer.valueOf(i2)}) { // from class: com.byazt.cd.eb.5
            @Override // com.byazt.ru.l
            public void jx() {
                boolean zHp = eb.this.f18755q.hp(i2, list, z2);
                if (zHp) {
                    try {
                        eb.this.f18757u.hp(i2, com.byazt.cd.l.CANCEL);
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (zHp || z2) {
                    synchronized (eb.this) {
                        eb.this.vv.remove(Integer.valueOf(i2));
                    }
                }
            }
        });
    }

    public void hp(final int i2, com.byazt.raq.w wVar, final int i3, final boolean z2) throws IOException {
        final com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
        long j2 = i3;
        wVar.hp(j2);
        wVar.hp(jxVar, j2);
        if (jxVar.l() == j2) {
            this.sz.execute(new com.byazt.ru.l("OkHttp %s Push Data[%s]", new Object[]{this.f18759w, Integer.valueOf(i2)}) { // from class: com.byazt.cd.eb.6
                @Override // com.byazt.ru.l
                public void jx() {
                    try {
                        boolean zHp = eb.this.f18755q.hp(i2, jxVar, i3, z2);
                        if (zHp) {
                            eb.this.f18757u.hp(i2, com.byazt.cd.l.CANCEL);
                        }
                        if (zHp || z2) {
                            synchronized (eb.this) {
                                eb.this.vv.remove(Integer.valueOf(i2));
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            });
        } else {
            throw new IOException(jxVar.l() + " != " + i3);
        }
    }
}
