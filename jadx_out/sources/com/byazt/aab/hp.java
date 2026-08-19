package com.byazt.aab;

import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, 28})
/* loaded from: classes2.dex */
public final class hp implements Closeable {
    public static final Pattern hp = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream jx = new OutputStream() { // from class: com.byazt.aab.hp.2
        @Override // java.io.OutputStream
        public void write(int i2) throws IOException {
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final File f17955a;

    /* renamed from: e, reason: collision with root package name */
    public final int f17956e;
    public final File eb;

    /* renamed from: j, reason: collision with root package name */
    public final File f17957j;
    public Writer jl;

    /* renamed from: k, reason: collision with root package name */
    public int f17958k;

    /* renamed from: l, reason: collision with root package name */
    public final ExecutorService f17959l;

    /* renamed from: q, reason: collision with root package name */
    public long f17960q;

    /* renamed from: s, reason: collision with root package name */
    public final int f17961s;

    /* renamed from: w, reason: collision with root package name */
    public final File f17964w;
    public long gu = 0;
    public final LinkedHashMap<String, l> zy = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: v, reason: collision with root package name */
    public long f17963v = -1;

    /* renamed from: u, reason: collision with root package name */
    public long f17962u = 0;
    public final Callable<Void> xs = new Callable<Void>() { // from class: com.byazt.aab.hp.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (hp.this) {
                try {
                    if (hp.this.jl == null) {
                        return null;
                    }
                    hp.this.eb();
                    if (hp.this.w()) {
                        hp.this.j();
                        hp.this.f17958k = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, 170})
    /* renamed from: com.byazt.aab.hp$hp, reason: collision with other inner class name */
    public final class C0183hp {

        /* renamed from: j, reason: collision with root package name */
        public boolean f17965j;
        public final boolean[] jx;

        /* renamed from: l, reason: collision with root package name */
        public final l f17966l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f17967w;

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, TTAdConstant.IMAGE_URL_CODE})
        /* renamed from: com.byazt.aab.hp$hp$hp, reason: collision with other inner class name */
        public final class C0184hp extends FilterOutputStream {
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0183hp.this.f17965j = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0183hp.this.f17965j = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i2) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(i2);
                } catch (IOException unused) {
                    C0183hp.this.f17965j = true;
                }
            }

            private C0184hp(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i2, int i3) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i2, i3);
                } catch (IOException unused) {
                    C0183hp.this.f17965j = true;
                }
            }
        }

        private C0183hp(l lVar) {
            this.f17966l = lVar;
            this.jx = lVar.f17972j ? null : new boolean[hp.this.f17956e];
        }

        public void l() throws IOException {
            hp.this.hp(this, false);
        }

        public OutputStream hp(int i2) throws IOException {
            FileOutputStream fileOutputStream;
            C0184hp c0184hp;
            if (i2 < 0 || i2 >= hp.this.f17956e) {
                throw new IllegalArgumentException("Expected index " + i2 + " to be greater than 0 and less than the maximum value count of " + hp.this.f17956e);
            }
            synchronized (hp.this) {
                try {
                    if (this.f17966l.f17974w == this) {
                        if (!this.f17966l.f17972j) {
                            this.jx[i2] = true;
                        }
                        File fileL = this.f17966l.l(i2);
                        try {
                            fileOutputStream = new FileOutputStream(fileL);
                        } catch (FileNotFoundException unused) {
                            hp.this.f17957j.mkdirs();
                            try {
                                fileOutputStream = new FileOutputStream(fileL);
                            } catch (FileNotFoundException unused2) {
                                return hp.jx;
                            }
                        }
                        c0184hp = new C0184hp(fileOutputStream);
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c0184hp;
        }

        public void hp() throws IOException {
            if (this.f17965j) {
                hp.this.hp(this, false);
                hp.this.jx(this.f17966l.f17973l);
            } else {
                hp.this.hp(this, true);
            }
            this.f17967w = true;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public final class jx implements Closeable {

        /* renamed from: j, reason: collision with root package name */
        public final InputStream[] f17968j;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f17969l;

        /* renamed from: w, reason: collision with root package name */
        public final long[] f17970w;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            for (InputStream inputStream : this.f17968j) {
                com.byazt.qkc.l.hp(inputStream);
            }
        }

        public InputStream hp(int i2) {
            return this.f17968j[i2];
        }

        private jx(String str, long j2, InputStream[] inputStreamArr, long[] jArr) {
            this.f17969l = str;
            this.jx = j2;
            this.f17968j = inputStreamArr;
            this.f17970w = jArr;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, 255})
    public final class l {

        /* renamed from: a, reason: collision with root package name */
        public long f17971a;

        /* renamed from: j, reason: collision with root package name */
        public boolean f17972j;
        public final long[] jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f17973l;

        /* renamed from: w, reason: collision with root package name */
        public C0183hp f17974w;

        private l(String str) {
            this.f17973l = str;
            this.jx = new long[hp.this.f17956e];
        }

        private IOException l(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File l(int i2) {
            return new File(hp.this.f17957j, this.f17973l + i.f2495E + i2 + ".tmp");
        }

        public String hp() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j2 : this.jx) {
                sb.append(' ');
                sb.append(j2);
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(String[] strArr) throws IOException {
            if (strArr.length == hp.this.f17956e) {
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    try {
                        this.jx[i2] = Long.parseLong(strArr[i2]);
                    } catch (NumberFormatException unused) {
                        throw l(strArr);
                    }
                }
                return;
            }
            throw l(strArr);
        }

        public File hp(int i2) {
            return new File(hp.this.f17957j, this.f17973l + i.f2495E + i2);
        }
    }

    private hp(File file, int i2, int i3, long j2, ExecutorService executorService) {
        this.f17957j = file;
        this.f17961s = i2;
        this.f17964w = new File(file, "journal");
        this.f17955a = new File(file, "journal.tmp");
        this.eb = new File(file, "journal.bkp");
        this.f17956e = i3;
        this.f17960q = j2;
        this.f17959l = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eb() throws IOException {
        long j2 = this.f17960q;
        long j3 = this.f17963v;
        if (j3 >= 0) {
            j2 = j3;
        }
        while (this.gu > j2) {
            jx(this.zy.entrySet().iterator().next().getKey());
        }
        this.f17963v = -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.jl == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.zy.values());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                l lVar = (l) obj;
                if (lVar.f17974w != null) {
                    lVar.f17974w.l();
                }
            }
            eb();
            this.jl.close();
            this.jl = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void delete() throws IOException {
        close();
        j.hp(this.f17957j);
    }

    private void a() {
        if (this.jl == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private void j(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i2 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i2);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i2);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.zy.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iIndexOf2);
        }
        l lVar = this.zy.get(strSubstring);
        if (lVar == null) {
            lVar = new l(strSubstring);
            this.zy.put(strSubstring, lVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            lVar.f17972j = true;
            lVar.f17974w = null;
            lVar.hp(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            lVar.f17974w = new C0183hp(lVar);
        } else if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    private void jx() throws IOException {
        hp(this.f17955a);
        Iterator<l> it = this.zy.values().iterator();
        while (it.hasNext()) {
            l next = it.next();
            int i2 = 0;
            if (next.f17974w == null) {
                while (i2 < this.f17956e) {
                    this.gu += next.jx[i2];
                    i2++;
                }
            } else {
                next.f17974w = null;
                while (i2 < this.f17956e) {
                    hp(next.hp(i2));
                    hp(next.l(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    private void l() throws IOException {
        com.byazt.aab.jx jxVar = new com.byazt.aab.jx(new FileInputStream(this.f17964w), j.hp);
        try {
            String strHp = jxVar.hp();
            String strHp2 = jxVar.hp();
            String strHp3 = jxVar.hp();
            String strHp4 = jxVar.hp();
            String strHp5 = jxVar.hp();
            if (!"libcore.io.DiskLruCache".equals(strHp) || !"1".equals(strHp2) || !Integer.toString(this.f17961s).equals(strHp3) || !Integer.toString(this.f17956e).equals(strHp4) || !"".equals(strHp5)) {
                throw new IOException("unexpected journal header: [" + strHp + ", " + strHp2 + ", " + strHp4 + ", " + strHp5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    j(jxVar.hp());
                    i2++;
                } catch (EOFException unused) {
                    this.f17958k = i2 - this.zy.size();
                    if (jxVar.l()) {
                        j();
                    } else {
                        this.jl = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f17964w, true), j.hp));
                    }
                    com.byazt.qkc.l.hp(jxVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.byazt.qkc.l.hp(jxVar);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        int i2 = this.f17958k;
        return i2 >= 2000 && i2 >= this.zy.size();
    }

    public static hp hp(File file, int i2, int i3, long j2, ExecutorService executorService) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i3 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    hp(file2, file3, false);
                }
            }
            hp hpVar = new hp(file, i2, i3, j2, executorService);
            if (hpVar.f17964w.exists()) {
                try {
                    hpVar.l();
                    hpVar.jx();
                    return hpVar;
                } catch (IOException e2) {
                    e2.getMessage();
                    hpVar.delete();
                }
            }
            file.mkdirs();
            hp hpVar2 = new hp(file, i2, i3, j2, executorService);
            hpVar2.j();
            return hpVar2;
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    private void w(String str) {
        if (hp.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public synchronized boolean jx(String str) throws IOException {
        try {
            a();
            w(str);
            l lVar = this.zy.get(str);
            if (lVar != null && lVar.f17974w == null) {
                for (int i2 = 0; i2 < this.f17956e; i2++) {
                    File fileHp = lVar.hp(i2);
                    if (fileHp.exists() && !fileHp.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(fileHp)));
                    }
                    this.gu -= lVar.jx[i2];
                    lVar.jx[i2] = 0;
                }
                this.f17958k++;
                this.jl.append((CharSequence) ("REMOVE " + str + '\n'));
                this.zy.remove(str);
                if (w()) {
                    this.f17959l.submit(this.xs);
                }
                return true;
            }
            return false;
        } finally {
        }
    }

    private static void hp(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() throws IOException {
        try {
            Writer writer = this.jl;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f17955a), j.hp));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f17961s));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f17956e));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (l lVar : this.zy.values()) {
                    if (lVar.f17974w != null) {
                        bufferedWriter.write("DIRTY " + lVar.f17973l + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + lVar.f17973l + lVar.hp() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.f17964w.exists()) {
                    hp(this.f17964w, this.eb, true);
                }
                hp(this.f17955a, this.f17964w, false);
                this.eb.delete();
                this.jl = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f17964w, true), j.hp));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public C0183hp l(String str) throws IOException {
        return hp(str, -1L);
    }

    private static void hp(File file, File file2, boolean z2) throws IOException {
        if (z2) {
            hp(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized jx hp(String str) throws Throwable {
        Throwable th;
        InputStream inputStream;
        try {
            a();
            w(str);
            l lVar = this.zy.get(str);
            if (lVar == null) {
                return null;
            }
            if (!lVar.f17972j) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f17956e];
            for (int i2 = 0; i2 < this.f17956e; i2++) {
                try {
                    try {
                        try {
                            inputStreamArr[i2] = new FileInputStream(lVar.hp(i2));
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (FileNotFoundException unused) {
                        for (int i3 = 0; i3 < this.f17956e && (inputStream = inputStreamArr[i3]) != null; i3++) {
                            com.byazt.qkc.l.hp(inputStream);
                        }
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            }
            this.f17958k++;
            this.jl.append((CharSequence) ("READ " + str + '\n'));
            if (w()) {
                this.f17959l.submit(this.xs);
            }
            return new jx(str, lVar.f17971a, inputStreamArr, lVar.jx);
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private synchronized C0183hp hp(String str, long j2) throws IOException {
        a();
        w(str);
        l lVar = this.zy.get(str);
        if (j2 != -1 && (lVar == null || lVar.f17971a != j2)) {
            return null;
        }
        if (lVar != null) {
            if (lVar.f17974w != null) {
                return null;
            }
        } else {
            lVar = new l(str);
            this.zy.put(str, lVar);
        }
        C0183hp c0183hp = new C0183hp(lVar);
        lVar.f17974w = c0183hp;
        this.jl.write("DIRTY " + str + '\n');
        this.jl.flush();
        return c0183hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp(C0183hp c0183hp, boolean z2) throws IOException {
        l lVar = c0183hp.f17966l;
        if (lVar.f17974w == c0183hp) {
            if (z2 && !lVar.f17972j) {
                for (int i2 = 0; i2 < this.f17956e; i2++) {
                    if (c0183hp.jx[i2]) {
                        if (!lVar.l(i2).exists()) {
                            c0183hp.l();
                            return;
                        }
                    } else {
                        c0183hp.l();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                    }
                }
            }
            for (int i3 = 0; i3 < this.f17956e; i3++) {
                File fileL = lVar.l(i3);
                if (z2) {
                    if (fileL.exists()) {
                        File fileHp = lVar.hp(i3);
                        fileL.renameTo(fileHp);
                        long j2 = lVar.jx[i3];
                        long length = fileHp.length();
                        lVar.jx[i3] = length;
                        this.gu = (this.gu - j2) + length;
                    }
                } else {
                    hp(fileL);
                }
            }
            this.f17958k++;
            lVar.f17974w = null;
            if (!(lVar.f17972j | z2)) {
                this.zy.remove(lVar.f17973l);
                this.jl.write("REMOVE " + lVar.f17973l + '\n');
            } else {
                lVar.f17972j = true;
                this.jl.write("CLEAN " + lVar.f17973l + lVar.hp() + '\n');
                if (z2) {
                    long j3 = this.f17962u;
                    this.f17962u = 1 + j3;
                    lVar.f17971a = j3;
                }
            }
            this.jl.flush();
            if (this.gu > this.f17960q || w()) {
                this.f17959l.submit(this.xs);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public synchronized void hp() throws IOException {
        a();
        eb();
        this.jl.flush();
    }

    public void hp(long j2) {
        this.f17963v = j2;
        this.f17959l.submit(this.xs);
    }
}
