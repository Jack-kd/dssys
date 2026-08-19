package com.smartdigimkt.w4;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.bykv.vk.component.ttvideo.player.C;
import com.umeng.analytics.pro.ek;
import io.flutter.embedding.android.KeyboardMap;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public abstract class b implements SharedPreferences, SharedPreferences.Editor {

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f44944u = new byte[0];

    /* renamed from: v, reason: collision with root package name */
    public static final int[] f44945v = {0, 1, 4, 4, 8, 8};

    /* renamed from: w, reason: collision with root package name */
    public static final int f44946w;

    /* renamed from: x, reason: collision with root package name */
    public static final int f44947x;

    /* renamed from: a, reason: collision with root package name */
    public final String f44948a;

    /* renamed from: b, reason: collision with root package name */
    public final String f44949b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f44950c;

    /* renamed from: e, reason: collision with root package name */
    public int f44952e;

    /* renamed from: f, reason: collision with root package name */
    public long f44953f;

    /* renamed from: h, reason: collision with root package name */
    public q f44955h;

    /* renamed from: i, reason: collision with root package name */
    public int f44956i;

    /* renamed from: j, reason: collision with root package name */
    public int f44957j;

    /* renamed from: l, reason: collision with root package name */
    public String f44959l;

    /* renamed from: q, reason: collision with root package name */
    public int f44964q;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.x4.a f44951d = s.f44991a;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f44954g = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f44958k = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final e0 f44960m = new e0();

    /* renamed from: n, reason: collision with root package name */
    public final e0 f44961n = new e0();

    /* renamed from: o, reason: collision with root package name */
    public final p f44962o = new p();

    /* renamed from: p, reason: collision with root package name */
    public final t f44963p = new t();

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f44965r = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList f44966s = new ArrayList();

    /* renamed from: t, reason: collision with root package name */
    public final Handler f44967t = new Handler(Looper.getMainLooper());

    static {
        int iA = c0.a();
        f44946w = iA;
        f44947x = Math.max(iA, 32768);
    }

    public b(String str, String str2, a0[] a0VarArr) {
        this.f44948a = str;
        this.f44949b = str2;
        HashMap map = new HashMap();
        if (a0VarArr != null) {
            for (a0 a0Var : a0VarArr) {
                a0Var.getClass();
                if (map.containsKey("StringSet")) {
                    c("duplicate encoder tag:StringSet");
                } else {
                    map.put("StringSet", a0Var);
                }
            }
        }
        map.put("StringSet", a0.f44943a);
        this.f44950c = map;
    }

    public static long a(int i2, long j2) {
        int i3 = (i2 & 7) << 3;
        return (j2 >>> (64 - i3)) | (j2 << i3);
    }

    public static boolean c(int i2) {
        return (i2 & C.ENCODING_PCM_32BIT) != 0;
    }

    public abstract void a();

    public abstract void a(byte b3, int i2);

    public abstract void a(int i2);

    public abstract void a(int i2, int i3, int i4);

    public abstract void a(int i2, int i3, long j2);

    public abstract void a(int i2, long j2, long j3);

    public abstract void a(int i2, byte[] bArr);

    public final void b(final String str) {
        s.a().execute(new Runnable() { // from class: f1.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f50701b.g(str);
            }
        });
    }

    public abstract void c();

    @Override // android.content.SharedPreferences
    public final synchronized boolean contains(String str) {
        return this.f44954g.containsKey(str);
    }

    public void d() {
        this.f44952e = 12;
        this.f44953f = 0L;
        this.f44954g.clear();
        e0 e0Var = this.f44961n;
        synchronized (e0Var) {
            e0Var.f44973a.clear();
            e0Var.a();
        }
        this.f44960m.b();
        this.f44964q = 0;
        this.f44965r.clear();
    }

    public final void e() {
        d();
        q qVar = this.f44955h;
        if (qVar == null || qVar.f44989b.length != f44946w) {
            this.f44955h = new q(0, new byte[f44946w]);
        } else {
            qVar.a(4, 0L);
        }
        this.f44955h.b(0, 0);
    }

    public abstract void e(String str);

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return this;
    }

    public abstract void f();

    public final void f(String str) {
        com.smartdigimkt.x4.a aVar = this.f44951d;
        if (aVar != null) {
            aVar.a(this.f44949b, str);
        }
    }

    public final void g(String str) {
        n nVar = (n) this.f44962o.f44987a.get(str);
        if (nVar != null) {
            nVar.f44985c.set(true);
            return;
        }
        c0.a(new File(this.f44948a + this.f44949b, str));
    }

    @Override // android.content.SharedPreferences
    public final synchronized Map getAll() {
        Object objValueOf;
        int size = this.f44954g.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap map = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry entry : this.f44954g.entrySet()) {
            String str = (String) entry.getKey();
            d dVar = (d) entry.getValue();
            switch (dVar.a()) {
                case 1:
                    objValueOf = Boolean.valueOf(((e) dVar).f44972b);
                    break;
                case 2:
                    objValueOf = Integer.valueOf(((h) dVar).f44977b);
                    break;
                case 3:
                    objValueOf = Float.valueOf(((g) dVar).f44976b);
                    break;
                case 4:
                    objValueOf = Long.valueOf(((i) dVar).f44978b);
                    break;
                case 5:
                    objValueOf = Double.valueOf(((f) dVar).f44975b);
                    break;
                case 6:
                    k kVar = (k) dVar;
                    if (kVar.f44982e) {
                        objValueOf = a(kVar);
                        break;
                    } else {
                        objValueOf = kVar.f44979b;
                        break;
                    }
                case 7:
                    c cVar = (c) dVar;
                    if (cVar.f44982e) {
                        objValueOf = a(cVar);
                        break;
                    } else {
                        objValueOf = cVar.f44979b;
                        break;
                    }
                case 8:
                    j jVar = (j) dVar;
                    if (jVar.f44982e) {
                        objValueOf = a(jVar);
                        break;
                    } else {
                        objValueOf = jVar.f44979b;
                        break;
                    }
                default:
                    objValueOf = null;
                    break;
            }
            if (objValueOf != null) {
                map.put(str, objValueOf);
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public final synchronized boolean getBoolean(String str, boolean z2) {
        d dVar = (d) this.f44954g.get(str);
        if (dVar != null && dVar.a() == 1) {
            z2 = ((e) dVar).f44972b;
        }
        return z2;
    }

    @Override // android.content.SharedPreferences
    public final synchronized float getFloat(String str, float f2) {
        d dVar = (d) this.f44954g.get(str);
        if (dVar != null && dVar.a() == 3) {
            f2 = ((g) dVar).f44976b;
        }
        return f2;
    }

    @Override // android.content.SharedPreferences
    public final synchronized int getInt(String str, int i2) {
        d dVar = (d) this.f44954g.get(str);
        if (dVar != null && dVar.a() == 2) {
            i2 = ((h) dVar).f44977b;
        }
        return i2;
    }

    @Override // android.content.SharedPreferences
    public final synchronized long getLong(String str, long j2) {
        d dVar = (d) this.f44954g.get(str);
        if (dVar != null && dVar.a() == 4) {
            j2 = ((i) dVar).f44978b;
        }
        return j2;
    }

    @Override // android.content.SharedPreferences
    public final synchronized String getString(String str, String str2) {
        d dVar = (d) this.f44954g.get(str);
        if (dVar != null && dVar.a() == 6) {
            k kVar = (k) dVar;
            if (!kVar.f44982e) {
                return (String) kVar.f44979b;
            }
            Object objA = this.f44961n.a(str);
            if (objA instanceof String) {
                return (String) objA;
            }
            String strA = a(kVar);
            if (strA != null && !strA.isEmpty()) {
                this.f44961n.a(strA, str);
                return strA;
            }
            remove(str);
            return str2;
        }
        return str2;
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Set set2;
        synchronized (this) {
            set2 = (Set) d(str);
        }
        return set2 != null ? set2 : set;
    }

    public final synchronized void h(final String str) {
        if (this.f44966s.isEmpty()) {
            return;
        }
        ArrayList arrayList = this.f44966s;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            final SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = (SharedPreferences.OnSharedPreferenceChangeListener) obj;
            this.f44967t.post(new Runnable() { // from class: f1.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f50694b.a(onSharedPreferenceChangeListener, str);
                }
            });
        }
    }

    public abstract void i(String str);

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor putBoolean(String str, boolean z2) {
        try {
            a(str);
            c();
            d dVar = (d) this.f44954g.get(str);
            if (dVar != null && dVar.a() != 1) {
                remove(str);
                dVar = null;
            }
            e eVar = (e) dVar;
            if (eVar == null) {
                a(str, (byte) 1, f44945v[1]);
                q qVar = this.f44955h;
                int i2 = qVar.f44990c;
                qVar.a(z2 ? (byte) 1 : (byte) 0);
                f();
                this.f44954g.put(str, new e(i2, z2));
                e(str);
            } else if (eVar.f44972b != z2) {
                eVar.f44972b = z2;
                a(z2 ? (byte) 1 : (byte) 0, eVar.f44970a);
                e(str);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor putFloat(String str, float f2) {
        try {
            a(str);
            c();
            d dVar = (d) this.f44954g.get(str);
            if (dVar != null && dVar.a() != 3) {
                remove(str);
                dVar = null;
            }
            g gVar = (g) dVar;
            if (gVar == null) {
                a(str, (byte) 3, f44945v[3]);
                q qVar = this.f44955h;
                int i2 = qVar.f44990c;
                int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
                byte[] bArr = qVar.f44989b;
                int i3 = qVar.f44990c;
                bArr[i3] = (byte) iFloatToRawIntBits;
                bArr[i3 + 1] = (byte) (iFloatToRawIntBits >> 8);
                bArr[i3 + 2] = (byte) (iFloatToRawIntBits >> 16);
                qVar.f44990c = i3 + 4;
                bArr[i3 + 3] = (byte) (iFloatToRawIntBits >> 24);
                f();
                this.f44954g.put(str, new g(i2, f2));
                e(str);
            } else if (gVar.f44976b != f2) {
                int iFloatToRawIntBits2 = Float.floatToRawIntBits(f2);
                q qVar2 = this.f44955h;
                int i4 = gVar.f44970a;
                byte[] bArr2 = qVar2.f44989b;
                long j2 = (((bArr2[i4 + 3] << 24) | ((((bArr2[i4 + 1] & 255) << 8) | (bArr2[i4] & 255)) | ((bArr2[i4 + 2] & 255) << 16))) ^ iFloatToRawIntBits2) & KeyboardMap.kValueMask;
                gVar.f44976b = f2;
                a(iFloatToRawIntBits2, i4, j2);
                e(str);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor putInt(String str, int i2) {
        try {
            a(str);
            c();
            d dVar = (d) this.f44954g.get(str);
            if (dVar != null && dVar.a() != 2) {
                remove(str);
                dVar = null;
            }
            h hVar = (h) dVar;
            if (hVar == null) {
                a(str, (byte) 2, f44945v[2]);
                q qVar = this.f44955h;
                int i3 = qVar.f44990c;
                byte[] bArr = qVar.f44989b;
                bArr[i3] = (byte) i2;
                bArr[i3 + 1] = (byte) (i2 >> 8);
                bArr[i3 + 2] = (byte) (i2 >> 16);
                qVar.f44990c = i3 + 4;
                bArr[i3 + 3] = (byte) (i2 >> 24);
                f();
                this.f44954g.put(str, new h(i3, i2));
                e(str);
            } else {
                if (hVar.f44977b != i2) {
                    long j2 = (r1 ^ i2) & KeyboardMap.kValueMask;
                    hVar.f44977b = i2;
                    a(i2, hVar.f44970a, j2);
                    e(str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor putLong(String str, long j2) throws Throwable {
        Throwable th;
        b bVar;
        try {
            try {
                a(str);
                c();
                d dVar = (d) this.f44954g.get(str);
                if (dVar != null) {
                    try {
                        if (dVar.a() != 4) {
                            remove(str);
                            dVar = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                i iVar = (i) dVar;
                if (iVar != null) {
                    long j3 = iVar.f44978b;
                    if (j3 != j2) {
                        long j4 = j2 ^ j3;
                        iVar.f44978b = j2;
                        bVar = this;
                        bVar.a(iVar.f44970a, j2, j4);
                        e(str);
                    }
                    return bVar;
                }
                a(str, (byte) 4, f44945v[4]);
                q qVar = this.f44955h;
                int i2 = qVar.f44990c;
                qVar.a(i2, j2);
                qVar.f44990c += 8;
                f();
                this.f44954g.put(str, new i(i2, j2));
                e(str);
                bVar = this;
                return bVar;
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

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor putString(String str, String str2) {
        try {
            a(str);
            if (str2 == null) {
                remove(str);
            } else {
                d dVar = (d) this.f44954g.get(str);
                if (dVar != null && dVar.a() != 6) {
                    remove(str);
                    dVar = null;
                }
                k kVar = (k) dVar;
                if (kVar != null && !kVar.f44982e && str2.equals(kVar.f44979b)) {
                    return this;
                }
                c();
                if (str2.length() * 3 < 4096) {
                    int iA = q.a(str2);
                    boolean z2 = false;
                    if (kVar == null) {
                        int iA2 = q.a(str);
                        if (iA2 > 255) {
                            throw new IllegalArgumentException("key's length must less than 256");
                        }
                        int i2 = iA2 + 4;
                        int i3 = i2 + iA;
                        this.f44957j = i3;
                        a(i3);
                        int i4 = this.f44952e;
                        this.f44956i = i4;
                        this.f44952e = this.f44957j + i4;
                        q qVar = this.f44955h;
                        qVar.f44990c = i4;
                        qVar.a((byte) 6);
                        this.f44955h.a((byte) iA2);
                        if (iA2 == str.length()) {
                            q qVar2 = this.f44955h;
                            str.getBytes(0, iA2, qVar2.f44989b, qVar2.f44990c);
                            this.f44955h.f44990c += iA2;
                        } else {
                            this.f44955h.b(str);
                        }
                        q qVar3 = this.f44955h;
                        short s2 = (short) iA;
                        byte[] bArr = qVar3.f44989b;
                        int i5 = qVar3.f44990c;
                        bArr[i5] = (byte) s2;
                        qVar3.f44990c = i5 + 2;
                        bArr[i5 + 1] = (byte) (s2 >> 8);
                        if (iA == str2.length()) {
                            q qVar4 = this.f44955h;
                            str2.getBytes(0, iA, qVar4.f44989b, qVar4.f44990c);
                        } else {
                            this.f44955h.b(str2);
                        }
                        HashMap map = this.f44954g;
                        int i6 = this.f44956i;
                        map.put(str, new k(i6, i2 + i6, str2, iA, false));
                        f();
                    } else {
                        int i7 = kVar.f44970a;
                        int i8 = i7 - kVar.f44980c;
                        int i9 = kVar.f44981d;
                        if (i9 == iA) {
                            this.f44953f = this.f44955h.a(i7, i9) ^ this.f44953f;
                            if (iA == str2.length()) {
                                str2.getBytes(0, iA, this.f44955h.f44989b, kVar.f44970a);
                            } else {
                                q qVar5 = this.f44955h;
                                qVar5.f44990c = kVar.f44970a;
                                qVar5.b(str2);
                            }
                            this.f44956i = kVar.f44970a;
                            this.f44957j = iA;
                        } else {
                            int i10 = i8 + iA;
                            this.f44957j = i10;
                            a(i10);
                            int i11 = this.f44952e;
                            this.f44956i = i11;
                            this.f44952e = this.f44957j + i11;
                            q qVar6 = this.f44955h;
                            qVar6.f44990c = i11;
                            qVar6.a((byte) 6);
                            int i12 = i8 - 3;
                            q qVar7 = this.f44955h;
                            byte[] bArr2 = qVar7.f44989b;
                            System.arraycopy(bArr2, kVar.f44980c + 1, bArr2, qVar7.f44990c, i12);
                            q qVar8 = this.f44955h;
                            int i13 = qVar8.f44990c + i12;
                            qVar8.f44990c = i13;
                            short s3 = (short) iA;
                            byte[] bArr3 = qVar8.f44989b;
                            bArr3[i13] = (byte) s3;
                            qVar8.f44990c = i13 + 2;
                            bArr3[i13 + 1] = (byte) (s3 >> 8);
                            if (iA == str2.length()) {
                                q qVar9 = this.f44955h;
                                str2.getBytes(0, iA, qVar9.f44989b, qVar9.f44990c);
                            } else {
                                this.f44955h.b(str2);
                            }
                            a((byte) 6, kVar.f44980c, kVar.f44970a + kVar.f44981d);
                            str = kVar.f44982e ? (String) kVar.f44979b : null;
                            kVar.f44982e = false;
                            int i14 = this.f44956i;
                            kVar.f44980c = i14;
                            kVar.f44970a = i14 + i8;
                            kVar.f44981d = iA;
                            z2 = true;
                        }
                        kVar.f44979b = str2;
                        f();
                        if (z2) {
                            a();
                        }
                        if (str != null) {
                            i(str);
                        }
                    }
                } else {
                    byte[] bytes = str2.isEmpty() ? f44944u : str2.getBytes(StandardCharsets.UTF_8);
                    if (bytes == null) {
                        a(new Exception("Encrypt failed"));
                        return this;
                    }
                    a(str, str2, bytes, kVar, (byte) 6);
                }
                e(str);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final synchronized SharedPreferences.Editor putStringSet(String str, Set set) {
        try {
            if (set == null) {
                remove(str);
            } else {
                a(str, set, a0.f44943a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    @Override // android.content.SharedPreferences
    public final synchronized void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        if (onSharedPreferenceChangeListener == null) {
            return;
        }
        if (!this.f44966s.contains(onSharedPreferenceChangeListener)) {
            this.f44966s.add(onSharedPreferenceChangeListener);
        }
    }

    @Override // android.content.SharedPreferences
    public final synchronized void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f44966s.remove(onSharedPreferenceChangeListener);
    }

    public static int a(int i2, int i3) {
        if (i3 >= 268435456) {
            throw new IllegalStateException("data size out of limit");
        }
        int i4 = f44946w;
        if (i3 <= i4) {
            return i4;
        }
        while (i2 < i3) {
            i2 <<= 1;
        }
        return i2;
    }

    public final void b() {
        try {
            c0.a(new File(this.f44948a, this.f44949b + ".kvc"));
            c0.a(new File(this.f44948a, this.f44949b + ".tmp"));
        } catch (Exception e2) {
            a(e2);
        }
    }

    public final void c(String str) {
        com.smartdigimkt.x4.a aVar = this.f44951d;
        if (aVar != null) {
            aVar.b(this.f44949b, new Exception(str));
        }
    }

    public final boolean a(File file) {
        long length = file.length();
        if (length != 0 && length < com.anythink.china.a.c.f1379C) {
            int i2 = (int) length;
            int iA = a(f44946w, i2);
            q qVar = this.f44955h;
            if (qVar != null && qVar.f44989b.length == iA) {
                qVar.f44990c = 0;
            } else {
                qVar = new q(0, new byte[iA]);
                this.f44955h = qVar;
            }
            byte[] bArr = qVar.f44989b;
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            int i3 = 0;
            while (i3 < i2) {
                try {
                    int i4 = randomAccessFile.read(bArr, i3, i2 - i3);
                    if (i4 < 0) {
                        break;
                    }
                    i3 += i4;
                } catch (Throwable th) {
                    c0.a(randomAccessFile);
                    throw th;
                }
            }
            c0.a(randomAccessFile);
            int iA2 = qVar.a();
            if (iA2 < 0) {
                return false;
            }
            int i5 = (-1073741825) & iA2;
            boolean zC = c(iA2);
            long jA = qVar.a(qVar.f44990c);
            qVar.f44990c += 8;
            this.f44952e = i5 + 12;
            if (i5 >= 0 && i5 <= i2 - 12 && jA == qVar.a(12, i5) && a(zC)) {
                this.f44953f = jA;
                return true;
            }
        }
        return false;
    }

    public final void b(int i2) {
        ArrayList arrayList = this.f44965r;
        Collections.sort(arrayList);
        a aVar = (a) arrayList.get(0);
        int size = arrayList.size();
        int i3 = 1;
        int i4 = 0;
        for (int i5 = 1; i5 < size; i5++) {
            a aVar2 = (a) arrayList.get(i5);
            if (aVar2.f44941a == aVar.f44942b) {
                aVar.f44942b = aVar2.f44942b;
            } else {
                i4++;
                if (i4 != i5) {
                    arrayList.set(i4, aVar2);
                }
                aVar = aVar2;
            }
        }
        int i6 = i4 + 1;
        if (size > i6) {
            arrayList.subList(i6, size).clear();
        }
        a aVar3 = (a) this.f44965r.get(0);
        int i7 = aVar3.f44941a;
        int i8 = this.f44952e;
        int i9 = i8 - this.f44964q;
        int i10 = i9 - 12;
        int i11 = i9 - i7;
        int i12 = i8 - i7;
        boolean z2 = i10 < i12 + i11;
        if (!z2) {
            this.f44953f ^= this.f44955h.a(i7, i12);
        }
        int size2 = this.f44965r.size();
        int i13 = size2 - 1;
        int i14 = this.f44952e - ((a) this.f44965r.get(i13)).f44942b;
        int i15 = i14 > 0 ? size2 : i13;
        int[] iArr = new int[i15];
        int[] iArr2 = new int[i15];
        int i16 = aVar3.f44941a;
        int i17 = aVar3.f44942b;
        while (i3 < size2) {
            a aVar4 = (a) this.f44965r.get(i3);
            int i18 = size2;
            int i19 = aVar4.f44941a - i17;
            int i20 = i3;
            byte[] bArr = this.f44955h.f44989b;
            System.arraycopy(bArr, i17, bArr, i16, i19);
            int i21 = i20 - 1;
            iArr[i21] = i17;
            iArr2[i21] = i17 - i16;
            i16 += i19;
            i17 = aVar4.f44942b;
            i3 = i20 + 1;
            size2 = i18;
        }
        if (i14 > 0) {
            byte[] bArr2 = this.f44955h.f44989b;
            System.arraycopy(bArr2, i17, bArr2, i16, i14);
            iArr[i13] = i17;
            iArr2[i13] = i17 - i16;
        }
        this.f44964q = 0;
        this.f44965r.clear();
        if (z2) {
            this.f44953f = this.f44955h.a(12, i10);
        } else {
            this.f44953f ^= this.f44955h.a(i7, i11);
        }
        this.f44952e = i9;
        a(i7, i2, i11);
        for (d dVar : this.f44954g.values()) {
            int i22 = dVar.f44970a;
            if (i22 > i7) {
                int i23 = i15 - 1;
                int i24 = 0;
                while (true) {
                    if (i24 > i23) {
                        break;
                    }
                    int i25 = (i24 + i23) >>> 1;
                    int i26 = iArr[i25];
                    if (i26 >= i22) {
                        if (i26 <= i22) {
                            i23 = i25;
                            break;
                        }
                        i23 = i25 - 1;
                    } else {
                        i24 = i25 + 1;
                    }
                }
                int i27 = iArr2[i23];
                dVar.f44970a -= i27;
                if (dVar.a() >= 6) {
                    ((l) dVar).f44980c -= i27;
                }
            }
        }
        f("gc finish");
    }

    public final synchronized Object d(String str) {
        d dVar = (d) this.f44954g.get(str);
        if (dVar != null && dVar.a() == 8) {
            j jVar = (j) dVar;
            if (jVar.f44982e) {
                Object objA = this.f44961n.a(str);
                if (objA != null) {
                    return objA;
                }
                LinkedHashSet linkedHashSetA = a(jVar);
                if (linkedHashSetA == null) {
                    remove(str);
                    return null;
                }
                this.f44961n.a(linkedHashSetA, str);
                return linkedHashSetA;
            }
            return jVar.f44979b;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0181, code lost:
    
        throw new java.lang.Exception("parse dara failed");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(boolean r14) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w4.b.a(boolean):boolean");
    }

    public final void b(Exception exc) {
        com.smartdigimkt.x4.a aVar = this.f44951d;
        if (aVar != null) {
            aVar.a(this.f44949b, exc);
        }
    }

    public final void a(int i2, String str, int i3, int i4) throws Exception {
        q qVar = this.f44955h;
        byte[] bArr = qVar.f44989b;
        int i5 = qVar.f44990c;
        qVar.f44990c = i5 + 1;
        int i6 = bArr[i5] & 255;
        String strC = qVar.c(i6);
        a0 a0Var = (a0) this.f44950c.get(strC);
        int i7 = i2 - (i6 + 1);
        if (i7 < 0) {
            throw new Exception("parse dara failed");
        }
        if (a0Var != null) {
            try {
                this.f44954g.put(str, new j(i3, i4 + 2, a0Var.a(qVar.f44989b, qVar.f44990c, i7), i2, false));
                return;
            } catch (Exception e2) {
                a(e2);
                return;
            }
        }
        c("object with tag: " + strC + " without encoder");
    }

    public static void a(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("key is empty");
        }
    }

    public final void a(File file, File file2) {
        try {
            if (a(file)) {
                return;
            }
        } catch (IOException e2) {
            b(e2);
        }
        e();
        try {
            if (a(file2)) {
                return;
            }
        } catch (IOException e3) {
            b(e3);
        }
        e();
    }

    public void a(byte b3, int i2, int i3) {
        this.f44964q = (i3 - i2) + this.f44964q;
        this.f44965r.add(new a(i2, i3));
        byte b4 = (byte) (b3 | com.anythink.core.common.s.a.c.f7560a);
        byte[] bArr = this.f44955h.f44989b;
        this.f44953f = (((bArr[i2] ^ b4) & 255) << ((i2 & 7) << 3)) ^ this.f44953f;
        bArr[i2] = b4;
    }

    public final void a(Exception exc) {
        com.smartdigimkt.x4.a aVar = this.f44951d;
        if (aVar != null) {
            aVar.b(this.f44949b, exc);
        }
    }

    public final String a(k kVar) {
        String str = (String) kVar.f44979b;
        byte[] bArrC = (byte[]) this.f44960m.a(str);
        if (bArrC == null) {
            try {
                bArrC = c0.c(new File(this.f44948a + this.f44949b, str));
            } catch (Exception e2) {
                a(e2);
                return null;
            }
        }
        if (bArrC != null) {
            return new String(bArrC, StandardCharsets.UTF_8);
        }
        return null;
    }

    public final byte[] a(c cVar) {
        String str = (String) cVar.f44979b;
        byte[] bArrC = (byte[]) this.f44960m.a(str);
        if (bArrC == null) {
            try {
                bArrC = c0.c(new File(this.f44948a + this.f44949b, str));
            } catch (Exception e2) {
                a(e2);
                return null;
            }
        }
        if (bArrC != null) {
            return bArrC;
        }
        return null;
    }

    public final LinkedHashSet a(j jVar) {
        String str = (String) jVar.f44979b;
        byte[] bArrC = (byte[]) this.f44960m.a(str);
        if (bArrC == null) {
            try {
                bArrC = c0.c(new File(this.f44948a + this.f44949b, str));
            } catch (Exception e2) {
                a(e2);
                return null;
            }
        }
        if (bArrC != null) {
            int i2 = bArrC[0] & 255;
            String strA = this.f44955h.a(bArrC, 1, i2);
            a0 a0Var = (a0) this.f44950c.get(strA);
            if (a0Var != null) {
                int i3 = i2 + 1;
                return a0Var.a(bArrC, i3, bArrC.length - i3);
            }
            b(new Exception("No encoder for tag:".concat(strA)));
            return null;
        }
        b(new Exception("Read object data failed"));
        return null;
    }

    public final synchronized void a(String str, double d2) throws Throwable {
        Throwable th;
        try {
            try {
                a(str);
                c();
                d dVar = (d) this.f44954g.get(str);
                if (dVar != null) {
                    try {
                        if (dVar.a() != 5) {
                            remove(str);
                            dVar = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                f fVar = (f) dVar;
                if (fVar != null) {
                    if (fVar.f44975b != d2) {
                        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
                        long jA = jDoubleToRawLongBits ^ this.f44955h.a(fVar.f44970a);
                        fVar.f44975b = d2;
                        a(fVar.f44970a, jDoubleToRawLongBits, jA);
                        e(str);
                    }
                }
                a(str, (byte) 5, f44945v[5]);
                q qVar = this.f44955h;
                int i2 = qVar.f44990c;
                qVar.a(qVar.f44990c, Double.doubleToRawLongBits(d2));
                qVar.f44990c += 8;
                f();
                this.f44954g.put(str, new f(i2, d2));
                e(str);
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

    public final synchronized void a(String str, byte[] bArr) throws Throwable {
        Throwable th;
        try {
            try {
                a(str);
            } catch (Throwable th2) {
                th = th2;
                th = th;
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            th = th;
            throw th;
        }
        try {
            if (bArr == null) {
                remove(str);
            } else {
                c();
                d dVar = (d) this.f44954g.get(str);
                d dVar2 = dVar;
                if (dVar != null) {
                    byte bA = dVar.a();
                    dVar2 = dVar;
                    if (bA != 7) {
                        remove(str);
                        dVar2 = null;
                    }
                }
                a(str, bArr, bArr, (c) dVar2, (byte) 7);
                e(str);
            }
        } catch (Throwable th4) {
            th = th4;
            throw th;
        }
    }

    public final synchronized void a(String str, Object obj, a0 a0Var) throws Throwable {
        Throwable th;
        byte[] bArrA;
        try {
            try {
                a(str);
                if (a0Var != null) {
                    if (!this.f44950c.containsKey("StringSet")) {
                        throw new IllegalArgumentException("Encoder hasn't been registered");
                    }
                    try {
                        if (obj == null) {
                            remove(str);
                            return;
                        }
                        d dVar = null;
                        try {
                            bArrA = a0Var.a(obj);
                        } catch (Exception e2) {
                            a(e2);
                            bArrA = null;
                        }
                        if (bArrA == null) {
                            remove(str);
                            return;
                        }
                        c();
                        d dVar2 = (d) this.f44954g.get(str);
                        if (dVar2 == null || dVar2.a() == 8) {
                            dVar = dVar2;
                        } else {
                            remove(str);
                        }
                        j jVar = (j) dVar;
                        int iA = q.a("StringSet");
                        q qVar = new q(0, new byte[iA + 1 + bArrA.length]);
                        qVar.a((byte) iA);
                        qVar.b("StringSet");
                        int length = bArrA.length;
                        if (length > 0) {
                            System.arraycopy(bArrA, 0, qVar.f44989b, qVar.f44990c, length);
                            qVar.f44990c += length;
                        }
                        byte[] bArr = qVar.f44989b;
                        if (bArr == null) {
                            return;
                        }
                        a(str, obj, bArr, jVar, (byte) 8);
                        e(str);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                throw new IllegalArgumentException("Encoder is null");
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

    public final /* synthetic */ void a(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener, String str) {
        onSharedPreferenceChangeListener.onSharedPreferenceChanged(this, str);
    }

    public synchronized void a(Map map) {
        try {
            for (Map.Entry entry : ((HashMap) map).entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (str != null && !str.isEmpty()) {
                    if (value instanceof String) {
                        putString(str, (String) value);
                    } else if (value instanceof Boolean) {
                        putBoolean(str, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        putInt(str, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        putLong(str, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        putFloat(str, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        a(str, ((Double) value).doubleValue());
                    } else if (value instanceof byte[]) {
                        a(str, (byte[]) value);
                    } else {
                        if (value instanceof Set) {
                            Set set = (Set) value;
                            if (set.isEmpty() || (set.iterator().next() instanceof String)) {
                                putStringSet(str, set);
                            }
                        }
                        b(new Exception("missing encoders"));
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(String str, byte b3, int i2) {
        int iA = q.a(str);
        if (iA <= 255) {
            int i3 = iA + 2 + i2;
            this.f44957j = i3;
            a(i3);
            int i4 = this.f44952e;
            this.f44956i = i4;
            this.f44952e = this.f44957j + i4;
            q qVar = this.f44955h;
            qVar.f44990c = i4;
            qVar.a(b3);
            this.f44955h.a((byte) iA);
            if (iA == str.length()) {
                q qVar2 = this.f44955h;
                str.getBytes(0, iA, qVar2.f44989b, qVar2.f44990c);
                this.f44955h.f44990c += iA;
                return;
            }
            this.f44955h.b(str);
            return;
        }
        throw new IllegalArgumentException("key's length must less than 256");
    }

    public final void a(String str, Object obj, byte[] bArr, l lVar, byte b3) {
        l jVar;
        int length = 32;
        if (lVar == null) {
            int iA = a(str, bArr, b3);
            if (iA > 0) {
                boolean z2 = this.f44959l != null;
                if (z2) {
                    this.f44961n.a(obj, str);
                    obj = this.f44959l;
                    this.f44959l = null;
                } else {
                    length = bArr.length;
                }
                Object obj2 = obj;
                int i2 = length;
                if (b3 == 6) {
                    jVar = new k(this.f44956i, iA, (String) obj2, i2, z2);
                } else if (b3 == 7) {
                    jVar = new c(this.f44956i, iA, obj2, i2, z2);
                } else {
                    jVar = new j(this.f44956i, iA, obj2, i2, z2);
                }
                this.f44954g.put(str, jVar);
                f();
                return;
            }
            return;
        }
        if (!lVar.f44982e && lVar.f44981d == bArr.length) {
            a(lVar.f44970a, bArr);
            lVar.f44979b = obj;
            return;
        }
        int iA2 = a(str, bArr, lVar.a());
        if (iA2 > 0) {
            String str2 = lVar.f44982e ? (String) lVar.f44979b : null;
            a(lVar.a(), lVar.f44980c, lVar.f44970a + lVar.f44981d);
            boolean z3 = this.f44959l != null;
            lVar.f44980c = this.f44956i;
            lVar.f44970a = iA2;
            lVar.f44982e = z3;
            if (z3) {
                this.f44961n.a(obj, str);
                lVar.f44979b = this.f44959l;
                lVar.f44981d = 32;
                this.f44959l = null;
            } else {
                lVar.f44979b = obj;
                lVar.f44981d = bArr.length;
            }
            f();
            a();
            if (str2 != null) {
                i(str2);
            }
        }
    }

    public final int a(final String str, final byte[] bArr, byte b3) {
        this.f44959l = null;
        if (bArr.length < 4096) {
            a(str, b3, bArr.length + 2);
            q qVar = this.f44955h;
            short length = (short) bArr.length;
            byte[] bArr2 = qVar.f44989b;
            int i2 = qVar.f44990c;
            int i3 = i2 + 1;
            bArr2[i2] = (byte) length;
            int i4 = i2 + 2;
            qVar.f44990c = i4;
            bArr2[i3] = (byte) (length >> 8);
            int length2 = bArr.length;
            if (length2 > 0) {
                System.arraycopy(bArr, 0, bArr2, i4, length2);
                qVar.f44990c += length2;
            }
            return i4;
        }
        f("Large value, key: " + str + ", size: " + bArr.length);
        byte[] bArr3 = new byte[16];
        b0.f44968a.nextBytes(bArr3);
        char[] cArr = new char[32];
        for (int i5 = 0; i5 < 16; i5++) {
            byte b4 = bArr3[i5];
            int i6 = i5 << 1;
            char[] cArr2 = b0.f44969b;
            cArr[i6] = cArr2[(b4 >> 4) & 15];
            cArr[i6 + 1] = cArr2[b4 & ek.f49295m];
        }
        final String str2 = new String(cArr);
        byte[] bArr4 = new byte[32];
        str2.getBytes(0, 32, bArr4, 0);
        a(str, (byte) (b3 | com.anythink.core.common.s.a.c.f7561b), 34);
        q qVar2 = this.f44955h;
        short s2 = (short) 32;
        byte[] bArr5 = qVar2.f44989b;
        int i7 = qVar2.f44990c;
        int i8 = i7 + 1;
        bArr5[i7] = (byte) s2;
        int i9 = i7 + 2;
        qVar2.f44990c = i9;
        bArr5[i8] = (byte) (s2 >> 8);
        System.arraycopy(bArr4, 0, bArr5, i9, 32);
        qVar2.f44990c += 32;
        if (i9 > 0) {
            this.f44960m.a(bArr, str2);
            p pVar = this.f44962o;
            o oVar = new o() { // from class: f1.b
                @Override // com.smartdigimkt.w4.o
                public final void a(AtomicBoolean atomicBoolean) {
                    this.f50697a.a(str2, bArr, str, atomicBoolean);
                }
            };
            pVar.getClass();
            n nVar = new n(pVar, str2, oVar);
            pVar.f44987a.put(str2, nVar);
            s.a().execute(nVar);
            this.f44959l = str2;
        }
        return i9;
    }

    public final /* synthetic */ void a(String str, byte[] bArr, String str2, AtomicBoolean atomicBoolean) {
        if (atomicBoolean.get()) {
            return;
        }
        if (c0.a(new File(this.f44948a + this.f44949b, str), bArr, atomicBoolean)) {
            return;
        }
        f("Write large value with key:" + str2 + " failed");
    }
}
