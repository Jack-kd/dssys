package com.byazt.sv;

import com.byazt.raq.ec;
import com.byazt.raq.jl;
import com.byazt.raq.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, 38})
/* loaded from: classes3.dex */
public final class j implements Closeable, Flushable {
    public static final Pattern hp = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final /* synthetic */ boolean zy = true;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap<String, l> f25575a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f25576e;
    public int eb;
    public long ec;
    public boolean gu;

    /* renamed from: j, reason: collision with root package name */
    public final int f25577j;
    public boolean jl;
    public final File jx;

    /* renamed from: k, reason: collision with root package name */
    public final File f25578k;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.eba.hp f25579l;

    /* renamed from: n, reason: collision with root package name */
    public final Executor f25580n;
    public final Runnable ns;

    /* renamed from: q, reason: collision with root package name */
    public boolean f25581q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f25582s;
    public long sz;

    /* renamed from: u, reason: collision with root package name */
    public final File f25583u;

    /* renamed from: v, reason: collision with root package name */
    public final File f25584v;
    public long vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.raq.j f25585w;
    public final int xs;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, 661})
    public final class jx implements Closeable {
        public final /* synthetic */ j hp;

        /* renamed from: j, reason: collision with root package name */
        public final ec[] f25589j;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f25590l;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            for (ec ecVar : this.f25589j) {
                com.byazt.ru.jx.hp(ecVar);
            }
        }

        public hp hp() throws IOException {
            return this.hp.hp(this.f25590l, this.jx);
        }
    }

    private void a() throws IOException {
        com.byazt.raq.w wVarHp = jl.hp(this.f25579l.hp(this.f25578k));
        try {
            String strU = wVarHp.u();
            String strU2 = wVarHp.u();
            String strU3 = wVarHp.u();
            String strU4 = wVarHp.u();
            String strU5 = wVarHp.u();
            if (!"libcore.io.DiskLruCache".equals(strU) || !"1".equals(strU2) || !Integer.toString(this.xs).equals(strU3) || !Integer.toString(this.f25577j).equals(strU4) || !"".equals(strU5)) {
                throw new IOException("unexpected journal header: [" + strU + ", " + strU2 + ", " + strU4 + ", " + strU5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    hp(wVarHp.u());
                    i2++;
                } catch (EOFException unused) {
                    this.eb = i2 - this.f25575a.size();
                    if (wVarHp.w()) {
                        this.f25585w = eb();
                    } else {
                        l();
                    }
                    com.byazt.ru.jx.hp(wVarHp);
                    return;
                }
            }
        } catch (Throwable th) {
            com.byazt.ru.jx.hp(wVarHp);
            throw th;
        }
    }

    private com.byazt.raq.j eb() throws FileNotFoundException {
        return jl.hp(new w(this.f25579l.jx(this.f25578k)) { // from class: com.byazt.sv.j.1
            public static final /* synthetic */ boolean hp = true;

            @Override // com.byazt.sv.w
            public void hp(IOException iOException) {
                if (!hp && !Thread.holdsLock(j.this)) {
                    throw new AssertionError();
                }
                j.this.f25582s = true;
            }
        });
    }

    private synchronized void q() {
        if (j()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private void s() throws IOException {
        this.f25579l.delete(this.f25584v);
        Iterator<l> it = this.f25575a.values().iterator();
        while (it.hasNext()) {
            l next = it.next();
            int i2 = 0;
            if (next.f25591a == null) {
                while (i2 < this.f25577j) {
                    this.ec += next.f25593l[i2];
                    i2++;
                }
            } else {
                next.f25591a = null;
                while (i2 < this.f25577j) {
                    this.f25579l.delete(next.jx[i2]);
                    this.f25579l.delete(next.f25592j[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.f25581q && !this.f25576e) {
                for (l lVar : (l[]) this.f25575a.values().toArray(new l[this.f25575a.size()])) {
                    hp hpVar = lVar.f25591a;
                    if (hpVar != null) {
                        hpVar.jx();
                    }
                }
                w();
                this.f25585w.close();
                this.f25585w = null;
                this.f25576e = true;
                return;
            }
            this.f25576e = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void delete() throws IOException {
        close();
        this.f25579l.a(this.jx);
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.f25581q) {
            q();
            w();
            this.f25585w.flush();
        }
    }

    public synchronized void hp() throws IOException {
        try {
            if (!zy && !Thread.holdsLock(this)) {
                throw new AssertionError();
            }
            if (this.f25581q) {
                return;
            }
            if (this.f25579l.j(this.f25583u)) {
                if (this.f25579l.j(this.f25578k)) {
                    this.f25579l.delete(this.f25583u);
                } else {
                    this.f25579l.hp(this.f25583u, this.f25578k);
                }
            }
            if (this.f25579l.j(this.f25578k)) {
                try {
                    a();
                    s();
                    this.f25581q = true;
                    return;
                } catch (IOException e2) {
                    com.byazt.ksw.w.l().hp(5, "DiskLruCache " + this.jx + " is corrupt: " + e2.getMessage() + ", removing", e2);
                    try {
                        delete();
                        this.f25576e = false;
                    } catch (Throwable th) {
                        this.f25576e = false;
                        throw th;
                    }
                }
            }
            l();
            this.f25581q = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean j() {
        return this.f25576e;
    }

    public boolean jx() {
        int i2 = this.eb;
        return i2 >= 2000 && i2 >= this.f25575a.size();
    }

    public synchronized void l() throws IOException {
        try {
            com.byazt.raq.j jVar = this.f25585w;
            if (jVar != null) {
                jVar.close();
            }
            com.byazt.raq.j jVarHp = jl.hp(this.f25579l.l(this.f25584v));
            try {
                jVarHp.l("libcore.io.DiskLruCache").q(10);
                jVarHp.l("1").q(10);
                jVarHp.jl(this.xs).q(10);
                jVarHp.jl(this.f25577j).q(10);
                jVarHp.q(10);
                for (l lVar : this.f25575a.values()) {
                    if (lVar.f25591a != null) {
                        jVarHp.l("DIRTY").q(32);
                        jVarHp.l(lVar.hp);
                        jVarHp.q(10);
                    } else {
                        jVarHp.l("CLEAN").q(32);
                        jVarHp.l(lVar.hp);
                        lVar.hp(jVarHp);
                        jVarHp.q(10);
                    }
                }
                jVarHp.close();
                if (this.f25579l.j(this.f25578k)) {
                    this.f25579l.hp(this.f25578k, this.f25583u);
                }
                this.f25579l.hp(this.f25584v, this.f25578k);
                this.f25579l.delete(this.f25583u);
                this.f25585w = eb();
                this.f25582s = false;
                this.jl = false;
            } catch (Throwable th) {
                jVarHp.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void w() throws IOException {
        while (this.ec > this.vv) {
            hp(this.f25575a.values().iterator().next());
        }
        this.gu = false;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public final class hp {
        public final l hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f25587j;

        /* renamed from: l, reason: collision with root package name */
        public final boolean[] f25588l;

        public hp(l lVar) {
            this.hp = lVar;
            this.f25588l = lVar.f25595w ? null : new boolean[j.this.f25577j];
        }

        public void hp() {
            if (this.hp.f25591a != this) {
                return;
            }
            int i2 = 0;
            while (true) {
                j jVar = j.this;
                if (i2 >= jVar.f25577j) {
                    this.hp.f25591a = null;
                    return;
                } else {
                    try {
                        jVar.f25579l.delete(this.hp.f25592j[i2]);
                    } catch (IOException unused) {
                    }
                    i2++;
                }
            }
        }

        public void jx() throws IOException {
            synchronized (j.this) {
                try {
                    if (this.f25587j) {
                        throw new IllegalStateException();
                    }
                    if (this.hp.f25591a == this) {
                        j.this.hp(this, false);
                    }
                    this.f25587j = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void l() throws IOException {
            synchronized (j.this) {
                try {
                    if (this.f25587j) {
                        throw new IllegalStateException();
                    }
                    if (this.hp.f25591a == this) {
                        j.this.hp(this, true);
                    }
                    this.f25587j = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public vv hp(int i2) {
            synchronized (j.this) {
                try {
                    if (!this.f25587j) {
                        l lVar = this.hp;
                        if (lVar.f25591a != this) {
                            return jl.hp();
                        }
                        if (!lVar.f25595w) {
                            this.f25588l[i2] = true;
                        }
                        try {
                            return new w(j.this.f25579l.l(lVar.f25592j[i2])) { // from class: com.byazt.sv.j.hp.1
                                @Override // com.byazt.sv.w
                                public void hp(IOException iOException) {
                                    synchronized (j.this) {
                                        hp.this.hp();
                                    }
                                }
                            };
                        } catch (FileNotFoundException unused) {
                            return jl.hp();
                        }
                    }
                    throw new IllegalStateException();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public final class l {

        /* renamed from: a, reason: collision with root package name */
        public hp f25591a;
        public long eb;
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final File[] f25592j;
        public final File[] jx;

        /* renamed from: l, reason: collision with root package name */
        public final long[] f25593l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f25595w;

        public l(String str) {
            this.hp = str;
            int i2 = j.this.f25577j;
            this.f25593l = new long[i2];
            this.jx = new File[i2];
            this.f25592j = new File[i2];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i3 = 0; i3 < j.this.f25577j; i3++) {
                sb.append(i3);
                this.jx[i3] = new File(j.this.jx, sb.toString());
                sb.append(".tmp");
                this.f25592j[i3] = new File(j.this.jx, sb.toString());
                sb.setLength(length);
            }
        }

        private IOException l(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void hp(String[] strArr) throws IOException {
            if (strArr.length != j.this.f25577j) {
                throw l(strArr);
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                try {
                    this.f25593l[i2] = Long.parseLong(strArr[i2]);
                } catch (NumberFormatException unused) {
                    throw l(strArr);
                }
            }
        }

        public void hp(com.byazt.raq.j jVar) throws IOException {
            for (long j2 : this.f25593l) {
                jVar.q(32).jl(j2);
            }
        }
    }

    private void hp(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf != -1) {
            int i2 = iIndexOf + 1;
            int iIndexOf2 = str.indexOf(32, i2);
            if (iIndexOf2 == -1) {
                strSubstring = str.substring(i2);
                if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                    this.f25575a.remove(strSubstring);
                    return;
                }
            } else {
                strSubstring = str.substring(i2, iIndexOf2);
            }
            l lVar = this.f25575a.get(strSubstring);
            if (lVar == null) {
                lVar = new l(strSubstring);
                this.f25575a.put(strSubstring, lVar);
            }
            if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
                String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
                lVar.f25595w = true;
                lVar.f25591a = null;
                lVar.hp(strArrSplit);
                return;
            }
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                lVar.f25591a = new hp(lVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    private void l(String str) {
        if (hp.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public synchronized hp hp(String str, long j2) throws IOException {
        hp();
        q();
        l(str);
        l lVar = this.f25575a.get(str);
        if (j2 != -1 && (lVar == null || lVar.eb != j2)) {
            return null;
        }
        if (lVar != null && lVar.f25591a != null) {
            return null;
        }
        if (!this.gu && !this.jl) {
            this.f25585w.l("DIRTY").q(32).l(str).q(10);
            this.f25585w.flush();
            if (this.f25582s) {
                return null;
            }
            if (lVar == null) {
                lVar = new l(str);
                this.f25575a.put(str, lVar);
            }
            hp hpVar = new hp(lVar);
            lVar.f25591a = hpVar;
            return hpVar;
        }
        this.f25580n.execute(this.ns);
        return null;
    }

    public synchronized void hp(hp hpVar, boolean z2) throws IOException {
        l lVar = hpVar.hp;
        if (lVar.f25591a == hpVar) {
            if (z2 && !lVar.f25595w) {
                for (int i2 = 0; i2 < this.f25577j; i2++) {
                    if (hpVar.f25588l[i2]) {
                        if (!this.f25579l.j(lVar.f25592j[i2])) {
                            hpVar.jx();
                            return;
                        }
                    } else {
                        hpVar.jx();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                    }
                }
            }
            for (int i3 = 0; i3 < this.f25577j; i3++) {
                File file = lVar.f25592j[i3];
                if (z2) {
                    if (this.f25579l.j(file)) {
                        File file2 = lVar.jx[i3];
                        this.f25579l.hp(file, file2);
                        long j2 = lVar.f25593l[i3];
                        long jW = this.f25579l.w(file2);
                        lVar.f25593l[i3] = jW;
                        this.ec = (this.ec - j2) + jW;
                    }
                } else {
                    this.f25579l.delete(file);
                }
            }
            this.eb++;
            lVar.f25591a = null;
            if (lVar.f25595w | z2) {
                lVar.f25595w = true;
                this.f25585w.l("CLEAN").q(32);
                this.f25585w.l(lVar.hp);
                lVar.hp(this.f25585w);
                this.f25585w.q(10);
                if (z2) {
                    long j3 = this.sz;
                    this.sz = 1 + j3;
                    lVar.eb = j3;
                }
            } else {
                this.f25575a.remove(lVar.hp);
                this.f25585w.l("REMOVE").q(32);
                this.f25585w.l(lVar.hp);
                this.f25585w.q(10);
            }
            this.f25585w.flush();
            if (this.ec > this.vv || jx()) {
                this.f25580n.execute(this.ns);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public boolean hp(l lVar) throws IOException {
        hp hpVar = lVar.f25591a;
        if (hpVar != null) {
            hpVar.hp();
        }
        for (int i2 = 0; i2 < this.f25577j; i2++) {
            this.f25579l.delete(lVar.jx[i2]);
            long j2 = this.ec;
            long[] jArr = lVar.f25593l;
            this.ec = j2 - jArr[i2];
            jArr[i2] = 0;
        }
        this.eb++;
        this.f25585w.l("REMOVE").q(32).l(lVar.hp).q(10);
        this.f25575a.remove(lVar.hp);
        if (jx()) {
            this.f25580n.execute(this.ns);
        }
        return true;
    }
}
