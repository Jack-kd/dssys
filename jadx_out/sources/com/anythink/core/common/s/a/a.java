package com.anythink.core.common.s.a;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.anythink.core.common.s.a.b;
import com.anythink.core.common.s.a.e;
import io.flutter.embedding.android.KeyboardMap;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public abstract class a implements SharedPreferences, SharedPreferences.Editor {

    /* renamed from: a, reason: collision with root package name */
    protected static final String f7493a = "both files error";

    /* renamed from: b, reason: collision with root package name */
    protected static final String f7494b = "parse dara failed";

    /* renamed from: c, reason: collision with root package name */
    protected static final String f7495c = "open file failed";

    /* renamed from: d, reason: collision with root package name */
    protected static final String f7496d = "map failed";

    /* renamed from: e, reason: collision with root package name */
    protected static final String f7497e = "miss cipher";

    /* renamed from: f, reason: collision with root package name */
    protected static final String f7498f = "Encrypt failed";

    /* renamed from: g, reason: collision with root package name */
    static final String f7499g = "truncate finish";

    /* renamed from: h, reason: collision with root package name */
    static final String f7500h = "gc finish";

    /* renamed from: i, reason: collision with root package name */
    protected static final String f7501i = ".kva";

    /* renamed from: j, reason: collision with root package name */
    protected static final String f7502j = ".kvb";

    /* renamed from: k, reason: collision with root package name */
    protected static final String f7503k = ".kvc";

    /* renamed from: l, reason: collision with root package name */
    protected static final String f7504l = ".tmp";

    /* renamed from: m, reason: collision with root package name */
    protected static final int f7505m = 268435456;

    /* renamed from: n, reason: collision with root package name */
    protected static final int f7506n = 1073741824;

    /* renamed from: p, reason: collision with root package name */
    protected static final int f7508p = 12;

    /* renamed from: r, reason: collision with root package name */
    protected static final int f7509r;

    /* renamed from: s, reason: collision with root package name */
    protected static final int f7510s;

    /* renamed from: t, reason: collision with root package name */
    protected static final int f7511t = 8192;

    /* renamed from: u, reason: collision with root package name */
    protected static final int f7512u = 80;

    /* renamed from: A, reason: collision with root package name */
    protected int f7513A;

    /* renamed from: B, reason: collision with root package name */
    protected long f7514B;

    /* renamed from: E, reason: collision with root package name */
    protected f f7517E;

    /* renamed from: F, reason: collision with root package name */
    protected int f7518F;

    /* renamed from: G, reason: collision with root package name */
    protected int f7519G;

    /* renamed from: K, reason: collision with root package name */
    protected String f7523K;

    /* renamed from: P, reason: collision with root package name */
    protected int f7528P;

    /* renamed from: v, reason: collision with root package name */
    protected final String f7533v;

    /* renamed from: w, reason: collision with root package name */
    protected final String f7534w;

    /* renamed from: x, reason: collision with root package name */
    protected final Map<String, com.anythink.core.common.s.a.a.b> f7535x;

    /* renamed from: z, reason: collision with root package name */
    protected final com.anythink.core.common.s.a.a.a f7537z;

    /* renamed from: S, reason: collision with root package name */
    private static final byte[] f7492S = new byte[0];

    /* renamed from: o, reason: collision with root package name */
    protected static final int[] f7507o = {0, 1, 4, 4, 8, 8};

    /* renamed from: q, reason: collision with root package name */
    protected final int f7532q = h.f7600d;

    /* renamed from: y, reason: collision with root package name */
    protected final com.anythink.core.common.s.a.a.c f7536y = h.f7597a;

    /* renamed from: C, reason: collision with root package name */
    protected final HashMap<String, b.AbstractC0079b> f7515C = new HashMap<>();

    /* renamed from: D, reason: collision with root package name */
    protected volatile boolean f7516D = false;

    /* renamed from: H, reason: collision with root package name */
    protected final List<String> f7520H = new ArrayList();

    /* renamed from: I, reason: collision with root package name */
    protected boolean f7521I = false;

    /* renamed from: J, reason: collision with root package name */
    protected boolean f7522J = false;

    /* renamed from: L, reason: collision with root package name */
    protected final m f7524L = new m();

    /* renamed from: M, reason: collision with root package name */
    protected final m f7525M = new m();

    /* renamed from: N, reason: collision with root package name */
    protected final e f7526N = new e();

    /* renamed from: O, reason: collision with root package name */
    protected final Executor f7527O = new i();

    /* renamed from: Q, reason: collision with root package name */
    protected final ArrayList<C0078a> f7529Q = new ArrayList<>();

    /* renamed from: R, reason: collision with root package name */
    protected final ArrayList<SharedPreferences.OnSharedPreferenceChangeListener> f7530R = new ArrayList<>();

    /* renamed from: T, reason: collision with root package name */
    private final Handler f7531T = new Handler(Looper.getMainLooper());

    /* renamed from: com.anythink.core.common.s.a.a$a, reason: collision with other inner class name */
    public static class C0078a implements Comparable<C0078a> {

        /* renamed from: a, reason: collision with root package name */
        int f7547a;

        /* renamed from: b, reason: collision with root package name */
        int f7548b;

        public C0078a(int i2, int i3) {
            this.f7547a = i2;
            this.f7548b = i3;
        }

        private int a(C0078a c0078a) {
            return this.f7547a - c0078a.f7547a;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(C0078a c0078a) {
            return this.f7547a - c0078a.f7547a;
        }
    }

    static {
        int iB = l.b();
        f7509r = iB;
        f7510s = Math.max(iB, 32768);
    }

    public a(String str, String str2, com.anythink.core.common.s.a.a.b[] bVarArr, com.anythink.core.common.s.a.a.a aVar) {
        this.f7533v = str;
        this.f7534w = str2;
        this.f7537z = aVar;
        HashMap map = new HashMap();
        if (bVarArr != null) {
            for (com.anythink.core.common.s.a.a.b bVar : bVarArr) {
                String strA = bVar.a();
                if (map.containsKey(strA)) {
                    b("duplicate encoder tag:".concat(String.valueOf(strA)));
                } else {
                    map.put(strA, bVar);
                }
            }
        }
        map.put("StringSet", k.f7623a);
        this.f7535x = map;
    }

    public static long a(long j2, int i2) {
        int i3 = (i2 & 7) << 3;
        return (j2 >>> (64 - i3)) | (j2 << i3);
    }

    public static boolean b(int i2) {
        return (i2 & 1073741824) != 0;
    }

    private static int e(int i2) {
        return i2 & (-1073741825);
    }

    private static void f(int i2) {
        if (i2 > 255) {
            throw new IllegalArgumentException("key's length must less than 256");
        }
    }

    private static void h(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("key is empty");
        }
    }

    private synchronized boolean i(String str) {
        return getBoolean(str, false);
    }

    private void j() {
        f fVar = this.f7517E;
        if (fVar == null || fVar.f7579a.length != f7509r) {
            this.f7517E = new f(f7509r);
        } else {
            fVar.a(4, 0L);
        }
        this.f7517E.a(0, a(0));
    }

    private float k(String str) {
        return getFloat(str, 0.0f);
    }

    private long l(String str) {
        return getLong(str, 0L);
    }

    private double m(String str) {
        return a(str, 0.0d);
    }

    private String n(String str) {
        return getString(str, "");
    }

    private byte[] o(String str) {
        return b(str, f7492S);
    }

    private synchronized Set<String> p(String str) {
        return (Set) d(str);
    }

    public abstract void a(byte b3, int i2);

    public abstract void a(int i2, int i3, int i4);

    public abstract void a(int i2, long j2, int i3);

    public abstract void a(long j2, long j3, int i2);

    public abstract void a(g gVar);

    public final void c(int i2) {
        ArrayList<C0078a> arrayList = this.f7529Q;
        Collections.sort(arrayList);
        C0078a c0078a = arrayList.get(0);
        int size = arrayList.size();
        boolean z2 = true;
        int i3 = 0;
        for (int i4 = 1; i4 < size; i4++) {
            C0078a c0078a2 = arrayList.get(i4);
            if (c0078a2.f7547a == c0078a.f7548b) {
                c0078a.f7548b = c0078a2.f7548b;
            } else {
                i3++;
                if (i3 != i4) {
                    arrayList.set(i3, c0078a2);
                }
                c0078a = c0078a2;
            }
        }
        int i5 = i3 + 1;
        if (size > i5) {
            arrayList.subList(i5, size).clear();
        }
        C0078a c0078a3 = this.f7529Q.get(0);
        int i6 = c0078a3.f7547a;
        int i7 = this.f7513A;
        int i8 = i7 - this.f7528P;
        int i9 = i8 - 12;
        int i10 = i8 - i6;
        int i11 = i7 - i6;
        boolean z3 = i9 < i11 + i10;
        if (!z3) {
            this.f7514B ^= this.f7517E.b(i6, i11);
        }
        int size2 = this.f7529Q.size();
        int i12 = size2 - 1;
        int i13 = this.f7513A - this.f7529Q.get(i12).f7548b;
        int i14 = i13 > 0 ? size2 : i12;
        int[] iArr = new int[i14];
        int[] iArr2 = new int[i14];
        int i15 = c0078a3.f7547a;
        int i16 = c0078a3.f7548b;
        int i17 = 1;
        while (i17 < size2) {
            boolean z4 = z2;
            C0078a c0078a4 = this.f7529Q.get(i17);
            int i18 = i17;
            int i19 = c0078a4.f7547a - i16;
            int i20 = size2;
            byte[] bArr = this.f7517E.f7579a;
            System.arraycopy(bArr, i16, bArr, i15, i19);
            int i21 = i18 - 1;
            iArr[i21] = i16;
            iArr2[i21] = i16 - i15;
            i15 += i19;
            i16 = c0078a4.f7548b;
            i17 = i18 + 1;
            z2 = z4;
            size2 = i20;
        }
        if (i13 > 0) {
            byte[] bArr2 = this.f7517E.f7579a;
            System.arraycopy(bArr2, i16, bArr2, i15, i13);
            iArr[i12] = i16;
            iArr2[i12] = i16 - i15;
        }
        e();
        if (z3) {
            this.f7514B = this.f7517E.b(12, i9);
        } else {
            this.f7514B ^= this.f7517E.b(i6, i10);
        }
        this.f7513A = i8;
        a(i6, i2, i10);
        for (b.AbstractC0079b abstractC0079b : this.f7515C.values()) {
            int i22 = abstractC0079b.f7549a;
            if (i22 > i6) {
                int i23 = i14 - 1;
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
                abstractC0079b.f7549a -= i27;
                if (abstractC0079b.a() >= 6) {
                    ((b.j) abstractC0079b).f7557d -= i27;
                }
            }
        }
        c(f7500h);
    }

    @Override // android.content.SharedPreferences
    public synchronized boolean contains(String str) {
        return this.f7515C.containsKey(str);
    }

    public void d() {
        this.f7513A = 12;
        this.f7514B = 0L;
        this.f7515C.clear();
        this.f7525M.a();
        this.f7524L.a();
        e();
    }

    public abstract void d(int i2);

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    public abstract void f(String str);

    public void g() {
    }

    public abstract void g(String str);

    @Override // android.content.SharedPreferences
    public synchronized Map<String, Object> getAll() {
        Object objValueOf;
        int size = this.f7515C.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap map = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, b.AbstractC0079b> entry : this.f7515C.entrySet()) {
            String key = entry.getKey();
            b.AbstractC0079b value = entry.getValue();
            switch (value.a()) {
                case 1:
                    objValueOf = Boolean.valueOf(((b.c) value).f7550b);
                    break;
                case 2:
                    objValueOf = Integer.valueOf(((b.f) value).f7553b);
                    break;
                case 3:
                    objValueOf = Float.valueOf(((b.e) value).f7552b);
                    break;
                case 4:
                    objValueOf = Long.valueOf(((b.g) value).f7554b);
                    break;
                case 5:
                    objValueOf = Double.valueOf(((b.d) value).f7551b);
                    break;
                case 6:
                    b.i iVar = (b.i) value;
                    if (iVar.f7559f) {
                        objValueOf = a(iVar, this.f7537z);
                        break;
                    } else {
                        objValueOf = iVar.f7556c;
                        break;
                    }
                case 7:
                    b.a aVar = (b.a) value;
                    if (aVar.f7559f) {
                        objValueOf = a(aVar, this.f7537z);
                        break;
                    } else {
                        objValueOf = aVar.f7556c;
                        break;
                    }
                case 8:
                    b.h hVar = (b.h) value;
                    if (hVar.f7559f) {
                        objValueOf = a(hVar, this.f7537z);
                        break;
                    } else {
                        objValueOf = ((b.h) value).f7556c;
                        break;
                    }
                default:
                    objValueOf = null;
                    break;
            }
            if (objValueOf != null) {
                map.put(key, objValueOf);
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public synchronized boolean getBoolean(String str, boolean z2) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 1) {
            return ((b.c) abstractC0079b).f7550b;
        }
        return z2;
    }

    @Override // android.content.SharedPreferences
    public synchronized float getFloat(String str, float f2) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 3) {
            return ((b.e) abstractC0079b).f7552b;
        }
        return f2;
    }

    @Override // android.content.SharedPreferences
    public synchronized int getInt(String str, int i2) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 2) {
            return ((b.f) abstractC0079b).f7553b;
        }
        return i2;
    }

    @Override // android.content.SharedPreferences
    public synchronized long getLong(String str, long j2) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 4) {
            return ((b.g) abstractC0079b).f7554b;
        }
        return j2;
    }

    @Override // android.content.SharedPreferences
    public synchronized String getString(String str, String str2) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 6) {
            b.i iVar = (b.i) abstractC0079b;
            if (!iVar.f7559f) {
                return (String) iVar.f7556c;
            }
            Object objA = this.f7525M.a(str);
            if (objA instanceof String) {
                return (String) objA;
            }
            String strA = a(iVar, this.f7537z);
            if (strA != null && !strA.isEmpty()) {
                this.f7525M.a(str, strA);
                return strA;
            }
            remove(str);
            return str2;
        }
        return str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> setP = p(str);
        return setP != null ? setP : set;
    }

    public abstract void h();

    public abstract void i();

    @Override // android.content.SharedPreferences.Editor
    public synchronized SharedPreferences.Editor putBoolean(String str, boolean z2) {
        try {
            if (this.f7522J) {
                return this;
            }
            h(str);
            g();
            b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
            if (abstractC0079b != null && abstractC0079b.a() != 1) {
                remove(str);
                abstractC0079b = null;
            }
            b.c cVar = (b.c) abstractC0079b;
            if (cVar == null) {
                if (!a(str, (byte) 1)) {
                    return this;
                }
                f fVar = this.f7517E;
                int i2 = fVar.f7580b;
                fVar.a(z2 ? (byte) 1 : (byte) 0);
                i();
                this.f7515C.put(str, new b.c(i2, z2));
                f(str);
            } else if (cVar.f7550b != z2) {
                cVar.f7550b = z2;
                a(z2 ? (byte) 1 : (byte) 0, cVar.f7549a);
                f(str);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public synchronized SharedPreferences.Editor putFloat(String str, float f2) {
        try {
            if (this.f7522J) {
                return this;
            }
            h(str);
            g();
            b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
            if (abstractC0079b != null && abstractC0079b.a() != 3) {
                remove(str);
                abstractC0079b = null;
            }
            b.e eVar = (b.e) abstractC0079b;
            if (eVar == null) {
                if (!a(str, (byte) 3)) {
                    return this;
                }
                f fVar = this.f7517E;
                int i2 = fVar.f7580b;
                fVar.b(a(f2));
                i();
                this.f7515C.put(str, new b.e(i2, f2));
                f(str);
            } else if (eVar.f7552b != f2) {
                int iA = a(f2);
                long jA = (this.f7517E.a(eVar.f7549a) ^ iA) & KeyboardMap.kValueMask;
                eVar.f7552b = f2;
                a(iA, jA, eVar.f7549a);
                f(str);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public synchronized SharedPreferences.Editor putInt(String str, int i2) {
        try {
            if (this.f7522J) {
                return this;
            }
            h(str);
            g();
            b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
            if (abstractC0079b != null && abstractC0079b.a() != 2) {
                remove(str);
                abstractC0079b = null;
            }
            b.f fVar = (b.f) abstractC0079b;
            if (fVar == null) {
                if (!a(str, (byte) 2)) {
                    return this;
                }
                f fVar2 = this.f7517E;
                int i3 = fVar2.f7580b;
                com.anythink.core.common.s.a.a.a aVar = this.f7537z;
                fVar2.b(aVar != null ? aVar.c() : i2);
                i();
                this.f7515C.put(str, new b.f(i3, i2));
                f(str);
            } else if (fVar.f7553b != i2) {
                com.anythink.core.common.s.a.a.a aVar2 = this.f7537z;
                int iC = aVar2 != null ? aVar2.c() : i2;
                long jA = ((this.f7537z != null ? this.f7517E.a(fVar.f7549a) : fVar.f7553b) ^ iC) & KeyboardMap.kValueMask;
                fVar.f7553b = i2;
                a(iC, jA, fVar.f7549a);
                f(str);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public synchronized SharedPreferences.Editor putLong(String str, long j2) throws Throwable {
        Throwable th;
        a aVar;
        try {
            try {
                if (this.f7522J) {
                    return this;
                }
                h(str);
                g();
                b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
                if (abstractC0079b != null) {
                    try {
                        if (abstractC0079b.a() != 4) {
                            remove(str);
                            abstractC0079b = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                b.g gVar = (b.g) abstractC0079b;
                if (gVar != null) {
                    if (gVar.f7554b != j2) {
                        com.anythink.core.common.s.a.a.a aVar2 = this.f7537z;
                        long jE = aVar2 != null ? aVar2.e() : j2;
                        long jC = (this.f7537z != null ? this.f7517E.c(gVar.f7549a) : gVar.f7554b) ^ jE;
                        gVar.f7554b = j2;
                        aVar = this;
                        aVar.a(jE, jC, gVar.f7549a);
                        f(str);
                    }
                    return aVar;
                }
                if (!a(str, (byte) 4)) {
                    return this;
                }
                f fVar = this.f7517E;
                int i2 = fVar.f7580b;
                com.anythink.core.common.s.a.a.a aVar3 = this.f7537z;
                fVar.a(aVar3 != null ? aVar3.e() : j2);
                i();
                this.f7515C.put(str, new b.g(i2, j2));
                f(str);
                aVar = this;
                return aVar;
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
    public synchronized SharedPreferences.Editor putString(String str, String str2) {
        try {
            if (this.f7522J) {
                return this;
            }
            h(str);
            if (str2 == null) {
                remove(str);
            } else {
                b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
                b.AbstractC0079b abstractC0079b2 = abstractC0079b;
                if (abstractC0079b != null) {
                    byte bA = abstractC0079b.a();
                    abstractC0079b2 = abstractC0079b;
                    if (bA != 6) {
                        remove(str);
                        abstractC0079b2 = null;
                    }
                }
                b.i iVar = (b.i) abstractC0079b2;
                if (iVar != null && !iVar.f7559f && str2.equals(iVar.f7556c)) {
                    return this;
                }
                g();
                if (this.f7537z != null || str2.length() * 3 >= this.f7532q) {
                    byte[] bytes = str2.isEmpty() ? f7492S : str2.getBytes(StandardCharsets.UTF_8);
                    com.anythink.core.common.s.a.a.a aVar = this.f7537z;
                    if (aVar != null) {
                        bytes = aVar.a();
                    }
                    byte[] bArr = bytes;
                    if (bArr == null) {
                        a(new Exception(f7498f));
                        return this;
                    }
                    a(str, str2, bArr, iVar, (byte) 6);
                } else {
                    int iB = f.b(str2);
                    if (iVar == null) {
                        int iB2 = f.b(str);
                        f(iB2);
                        int i2 = iB2 + 4;
                        this.f7519G = i2 + iB;
                        k();
                        this.f7517E.a((byte) 6);
                        a(str, iB2);
                        b(str2, iB);
                        HashMap<String, b.AbstractC0079b> map = this.f7515C;
                        int i3 = this.f7518F;
                        map.put(str, new b.i(i3, i2 + i3, str2, iB, false));
                        i();
                    } else {
                        int i4 = iVar.f7549a;
                        int i5 = i4 - iVar.f7557d;
                        int i6 = iVar.f7558e;
                        boolean z2 = false;
                        if (i6 == iB) {
                            this.f7514B = this.f7517E.b(i4, i6) ^ this.f7514B;
                            if (iB == str2.length()) {
                                str2.getBytes(0, iB, this.f7517E.f7579a, iVar.f7549a);
                            } else {
                                f fVar = this.f7517E;
                                fVar.f7580b = iVar.f7549a;
                                fVar.a(str2);
                            }
                            this.f7518F = iVar.f7549a;
                            this.f7519G = iB;
                        } else {
                            this.f7519G = i5 + iB;
                            k();
                            this.f7517E.a((byte) 6);
                            int i7 = i5 - 3;
                            f fVar2 = this.f7517E;
                            byte[] bArr2 = fVar2.f7579a;
                            System.arraycopy(bArr2, iVar.f7557d + 1, bArr2, fVar2.f7580b, i7);
                            this.f7517E.f7580b += i7;
                            b(str2, iB);
                            a((byte) 6, iVar.f7557d, iVar.f7549a + iVar.f7558e);
                            str = iVar.f7559f ? (String) iVar.f7556c : null;
                            iVar.f7559f = false;
                            int i8 = this.f7518F;
                            iVar.f7557d = i8;
                            iVar.f7549a = i8 + i5;
                            iVar.f7558e = iB;
                            z2 = true;
                        }
                        iVar.f7556c = str2;
                        i();
                        if (z2) {
                            h();
                        }
                        if (str != null) {
                            g(str);
                        }
                    }
                }
                f(str);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public synchronized SharedPreferences.Editor putStringSet(String str, Set<String> set) {
        try {
            if (this.f7522J) {
                return this;
            }
            if (set == null) {
                remove(str);
            } else {
                a(str, (String) set, (com.anythink.core.common.s.a.a.b<String>) k.f7623a);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.SharedPreferences
    public synchronized void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        if (onSharedPreferenceChangeListener == null) {
            return;
        }
        if (!this.f7530R.contains(onSharedPreferenceChangeListener)) {
            this.f7530R.add(onSharedPreferenceChangeListener);
        }
    }

    @Override // android.content.SharedPreferences
    public synchronized void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f7530R.remove(onSharedPreferenceChangeListener);
    }

    private void k() {
        d(this.f7519G);
        int i2 = this.f7513A;
        this.f7518F = i2;
        this.f7513A = this.f7519G + i2;
        this.f7517E.f7580b = i2;
    }

    public final int a(int i2) {
        return this.f7537z == null ? i2 : i2 | 1073741824;
    }

    public final void b() {
        try {
            l.c(new File(this.f7533v, this.f7534w + f7503k));
            l.c(new File(this.f7533v, this.f7534w + ".tmp"));
        } catch (Exception e2) {
            a(e2);
        }
    }

    public final void e() {
        this.f7528P = 0;
        this.f7529Q.clear();
    }

    public final int f() {
        return this.f7513A <= 16384 ? 8192 : 16384;
    }

    public static int a(int i2, int i3) {
        if (i3 < 268435456) {
            int i4 = f7509r;
            if (i3 <= i4) {
                return i4;
            }
            while (i2 < i3) {
                i2 <<= 1;
            }
            return i2;
        }
        throw new IllegalStateException("data size out of limit");
    }

    public final synchronized void e(final String str) {
        if (this.f7530R.isEmpty()) {
            return;
        }
        ArrayList<SharedPreferences.OnSharedPreferenceChangeListener> arrayList = this.f7530R;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = arrayList.get(i2);
            i2++;
            final SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener2 = onSharedPreferenceChangeListener;
            this.f7531T.post(new Runnable() { // from class: com.anythink.core.common.s.a.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    onSharedPreferenceChangeListener2.onSharedPreferenceChanged(a.this, str);
                }
            });
        }
    }

    private void b(int i2, int i3) {
        this.f7528P += i3 - i2;
        this.f7529Q.add(new C0078a(i2, i3));
    }

    private int j(String str) {
        return getInt(str, 0);
    }

    public final void a() throws Throwable {
        com.anythink.core.common.s.a.a.b bVar;
        com.anythink.core.common.s.a.a.b[] bVarArr = (com.anythink.core.common.s.a.a.b[]) this.f7535x.values().toArray(new com.anythink.core.common.s.a.a.b[this.f7535x.size()]);
        String str = "temp_" + this.f7534w;
        g gVar = new g(this.f7533v, str, bVarArr, this.f7537z, 2);
        gVar.f7586V = false;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, b.AbstractC0079b> entry : this.f7515C.entrySet()) {
            String key = entry.getKey();
            b.AbstractC0079b value = entry.getValue();
            if (value instanceof b.i) {
                b.i iVar = (b.i) value;
                if (iVar.f7559f) {
                    arrayList.add((String) iVar.f7556c);
                    String strA = a(iVar, (com.anythink.core.common.s.a.a.a) null);
                    if (strA != null) {
                        gVar.putString(key, strA);
                    }
                } else {
                    gVar.putString(key, (String) iVar.f7556c);
                }
            } else if (value instanceof b.c) {
                gVar.putBoolean(key, ((b.c) value).f7550b);
            } else if (value instanceof b.f) {
                gVar.putInt(key, ((b.f) value).f7553b);
            } else if (value instanceof b.g) {
                gVar.putLong(key, ((b.g) value).f7554b);
            } else if (value instanceof b.e) {
                gVar.putFloat(key, ((b.e) value).f7552b);
            } else if (value instanceof b.d) {
                gVar.b(key, ((b.d) value).f7551b);
            } else if (value instanceof b.a) {
                b.a aVar = (b.a) value;
                if (aVar.f7559f) {
                    arrayList.add((String) aVar.f7556c);
                    byte[] bArrA = a(aVar, (com.anythink.core.common.s.a.a.a) null);
                    if (bArrA != null) {
                        gVar.a(key, bArrA);
                    }
                } else {
                    gVar.a(key, (byte[]) aVar.f7556c);
                }
            } else if (value instanceof b.h) {
                b.h hVar = (b.h) value;
                if (hVar.f7559f) {
                    arrayList.add((String) hVar.f7556c);
                    Object objA = a(hVar, (com.anythink.core.common.s.a.a.a) null);
                    if (objA != null && (bVar = hVar.f7555b) != null) {
                        gVar.a(key, (String) objA, (com.anythink.core.common.s.a.a.b<String>) bVar);
                    }
                } else {
                    com.anythink.core.common.s.a.a.b bVar2 = hVar.f7555b;
                    if (bVar2 != null) {
                        gVar.a(key, (String) hVar.f7556c, (com.anythink.core.common.s.a.a.b<String>) bVar2);
                    }
                }
            }
        }
        gVar.contains("");
        this.f7517E = gVar.f7517E;
        this.f7514B = gVar.f7514B;
        this.f7513A = gVar.f7513A;
        e();
        this.f7515C.clear();
        this.f7515C.putAll(gVar.f7515C);
        a(gVar);
        while (gVar.f7526N.a()) {
            try {
                Thread.sleep(10L);
            } catch (Exception unused) {
            }
        }
        File file = new File(this.f7533v, str);
        String str2 = this.f7533v + this.f7534w;
        l.a(file, str2);
        l.c(file);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            l.c(new File(str2, (String) obj));
        }
        this.f7521I = false;
    }

    public final void b(String str) {
        com.anythink.core.common.s.a.a.c cVar = this.f7536y;
        if (cVar != null) {
            cVar.b(this.f7534w, new Exception(str));
        }
    }

    public final synchronized <T> T d(String str) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 8) {
            b.h hVar = (b.h) abstractC0079b;
            if (hVar.f7559f) {
                T t2 = (T) this.f7525M.a(str);
                if (t2 != null) {
                    return t2;
                }
                T t3 = (T) a(hVar, this.f7537z);
                if (t3 == null) {
                    remove(str);
                    return null;
                }
                this.f7525M.a(str, t3);
                return t3;
            }
            return (T) hVar.f7556c;
        }
        return null;
    }

    public final void b(Exception exc) {
        com.anythink.core.common.s.a.a.c cVar = this.f7536y;
        if (cVar != null) {
            cVar.a(this.f7534w, exc);
        }
    }

    private synchronized byte[] b(String str, byte[] bArr) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 7) {
            b.a aVar = (b.a) abstractC0079b;
            if (aVar.f7559f) {
                Object objA = this.f7525M.a(str);
                if (objA instanceof byte[]) {
                    return (byte[]) objA;
                }
                byte[] bArrA = a(aVar, this.f7537z);
                if (bArrA != null && bArrA.length != 0) {
                    this.f7525M.a(str, bArrA);
                    return bArrA;
                }
                remove(str);
                return bArr;
            }
            return (byte[]) aVar.f7556c;
        }
        return bArr;
    }

    public final synchronized SharedPreferences.Editor b(String str, double d2) throws Throwable {
        Throwable th;
        a aVar;
        try {
            try {
                if (this.f7522J) {
                    return this;
                }
                h(str);
                g();
                b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
                if (abstractC0079b != null) {
                    try {
                        if (abstractC0079b.a() != 5) {
                            remove(str);
                            abstractC0079b = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                b.d dVar = (b.d) abstractC0079b;
                if (dVar != null) {
                    if (dVar.f7551b != d2) {
                        long jA = a(d2);
                        long jC = jA ^ this.f7517E.c(dVar.f7549a);
                        dVar.f7551b = d2;
                        aVar = this;
                        aVar.a(jA, jC, dVar.f7549a);
                        f(str);
                    }
                    return aVar;
                }
                if (!a(str, (byte) 5)) {
                    return this;
                }
                f fVar = this.f7517E;
                int i2 = fVar.f7580b;
                fVar.a(a(d2));
                i();
                this.f7515C.put(str, new b.d(i2, d2));
                f(str);
                aVar = this;
                return aVar;
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

    public final void c() {
        d();
        j();
    }

    public final void c(String str) {
        com.anythink.core.common.s.a.a.c cVar = this.f7536y;
        if (cVar != null) {
            cVar.a(this.f7534w, str);
        }
    }

    private void b(String str, int i2) {
        this.f7517E.a((short) i2);
        if (i2 == str.length()) {
            f fVar = this.f7517E;
            str.getBytes(0, i2, fVar.f7579a, fVar.f7580b);
        } else {
            this.f7517E.a(str);
        }
    }

    private int b(String str, byte[] bArr, byte b3) {
        if (!a(str, b3, bArr.length + 2)) {
            return 0;
        }
        this.f7517E.a((short) bArr.length);
        f fVar = this.f7517E;
        int i2 = fVar.f7580b;
        fVar.a(bArr);
        return i2;
    }

    public final boolean a(File file) {
        long length = file.length();
        if (length != 0 && length < com.anythink.china.a.c.f1379C) {
            int i2 = (int) length;
            int iA = a(f7509r, i2);
            f fVar = this.f7517E;
            if (fVar != null && fVar.f7579a.length == iA) {
                fVar.f7580b = 0;
            } else {
                fVar = new f(new byte[iA]);
                this.f7517E = fVar;
            }
            l.a(file, fVar.f7579a, i2);
            int iC = fVar.c();
            if (iC < 0) {
                return false;
            }
            int i3 = (-1073741825) & iC;
            boolean zB = b(iC);
            long jD = fVar.d();
            this.f7513A = i3 + 12;
            if (i3 >= 0 && i3 <= i2 - 12 && jD == fVar.b(12, i3) && a(zB)) {
                this.f7514B = jD;
                return true;
            }
        }
        return false;
    }

    public final void a(final String str) {
        h.a().execute(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dB, new Runnable() { // from class: com.anythink.core.common.s.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.f7526N.a(str)) {
                    return;
                }
                l.c(new File(a.this.f7533v + a.this.f7534w, str));
            }
        }));
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x01cb, code lost:
    
        throw new java.lang.Exception(com.anythink.core.common.s.a.a.f7494b);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(boolean r17) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.s.a.a.a(boolean):boolean");
    }

    private void a(int i2, String str, int i3, int i4, com.anythink.core.common.s.a.a.a aVar) throws Exception {
        int length;
        f fVar;
        if (aVar == null) {
            fVar = this.f7517E;
            length = i2;
        } else {
            f fVar2 = this.f7517E;
            System.arraycopy(fVar2.f7579a, fVar2.f7580b, new byte[i2], 0, i2);
            byte[] bArrB = aVar.b();
            f fVar3 = new f(bArrB);
            length = bArrB.length;
            fVar = fVar3;
        }
        int iA = fVar.a() & 255;
        String strD = fVar.d(iA);
        com.anythink.core.common.s.a.a.b bVar = this.f7535x.get(strD);
        int i5 = length - (iA + 1);
        if (i5 < 0) {
            throw new Exception(f7494b);
        }
        if (bVar != null) {
            try {
                b.h hVar = new b.h(i3, i4 + 2, bVar.a(fVar.f7579a, fVar.f7580b, i5), i2, false);
                hVar.f7555b = bVar;
                this.f7515C.put(str, hVar);
                return;
            } catch (Exception e2) {
                a(e2);
                return;
            }
        }
        b("object with tag: " + strD + " without encoder");
    }

    private static void a(ArrayList<C0078a> arrayList) {
        Collections.sort(arrayList);
        int i2 = 0;
        C0078a c0078a = arrayList.get(0);
        int size = arrayList.size();
        for (int i3 = 1; i3 < size; i3++) {
            C0078a c0078a2 = arrayList.get(i3);
            if (c0078a2.f7547a == c0078a.f7548b) {
                c0078a.f7548b = c0078a2.f7548b;
            } else {
                i2++;
                if (i2 != i3) {
                    arrayList.set(i2, c0078a2);
                }
                c0078a = c0078a2;
            }
        }
        int i4 = i2 + 1;
        if (size > i4) {
            arrayList.subList(i4, size).clear();
        }
    }

    private void a(int i2, int[] iArr, int[] iArr2) {
        for (b.AbstractC0079b abstractC0079b : this.f7515C.values()) {
            int i3 = abstractC0079b.f7549a;
            if (i3 > i2) {
                int length = iArr.length - 1;
                int i4 = 0;
                while (true) {
                    if (i4 > length) {
                        break;
                    }
                    int i5 = (i4 + length) >>> 1;
                    int i6 = iArr[i5];
                    if (i6 >= i3) {
                        if (i6 <= i3) {
                            length = i5;
                            break;
                        }
                        length = i5 - 1;
                    } else {
                        i4 = i5 + 1;
                    }
                }
                int i7 = iArr2[length];
                abstractC0079b.f7549a -= i7;
                if (abstractC0079b.a() >= 6) {
                    ((b.j) abstractC0079b).f7557d -= i7;
                }
            }
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
        c();
        try {
            if (a(file2)) {
                return;
            }
        } catch (IOException e3) {
            b(e3);
        }
        c();
    }

    public final void a(Exception exc) {
        com.anythink.core.common.s.a.a.c cVar = this.f7536y;
        if (cVar != null) {
            cVar.b(this.f7534w, exc);
        }
    }

    public final synchronized double a(String str, double d2) {
        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
        if (abstractC0079b != null && abstractC0079b.a() == 5) {
            return ((b.d) abstractC0079b).f7551b;
        }
        return d2;
    }

    private String a(b.i iVar, com.anythink.core.common.s.a.a.a aVar) {
        String str = (String) iVar.f7556c;
        byte[] bArrB = (byte[]) this.f7524L.a(str);
        if (bArrB == null) {
            try {
                bArrB = l.b(new File(this.f7533v + this.f7534w, str));
            } catch (Exception e2) {
                a(e2);
            }
        }
        if (bArrB != null) {
            if (aVar != null) {
                bArrB = aVar.b();
            }
            if (bArrB != null) {
                return new String(bArrB, StandardCharsets.UTF_8);
            }
            return null;
        }
        return null;
    }

    private byte[] a(b.a aVar, com.anythink.core.common.s.a.a.a aVar2) {
        String str = (String) aVar.f7556c;
        byte[] bArrB = (byte[]) this.f7524L.a(str);
        if (bArrB == null) {
            try {
                bArrB = l.b(new File(this.f7533v + this.f7534w, str));
            } catch (Exception e2) {
                a(e2);
                return null;
            }
        }
        if (bArrB != null) {
            return aVar2 != null ? aVar2.b() : bArrB;
        }
        return null;
    }

    private Object a(b.h hVar, com.anythink.core.common.s.a.a.a aVar) {
        String str = (String) hVar.f7556c;
        byte[] bArrB = (byte[]) this.f7524L.a(str);
        if (bArrB == null) {
            try {
                bArrB = l.b(new File(this.f7533v + this.f7534w, str));
            } catch (Exception e2) {
                a(e2);
                return null;
            }
        }
        if (bArrB != null) {
            if (aVar != null) {
                bArrB = aVar.b();
            }
            int i2 = bArrB[0] & 255;
            String strA = this.f7517E.a(bArrB, 1, i2);
            com.anythink.core.common.s.a.a.b bVar = this.f7535x.get(strA);
            if (bVar != null) {
                hVar.f7555b = bVar;
                int i3 = i2 + 1;
                return bVar.a(bArrB, i3, bArrB.length - i3);
            }
            b(new Exception("No encoder for tag:".concat(String.valueOf(strA))));
            return null;
        }
        b(new Exception("Read object data failed"));
        return null;
    }

    private void a(String str, String str2, b.i iVar) {
        int iB = f.b(str2);
        if (iVar == null) {
            int iB2 = f.b(str);
            f(iB2);
            int i2 = iB2 + 4;
            this.f7519G = i2 + iB;
            k();
            this.f7517E.a((byte) 6);
            a(str, iB2);
            b(str2, iB);
            HashMap<String, b.AbstractC0079b> map = this.f7515C;
            int i3 = this.f7518F;
            map.put(str, new b.i(i3, i2 + i3, str2, iB, false));
            i();
            return;
        }
        int i4 = iVar.f7549a;
        int i5 = i4 - iVar.f7557d;
        int i6 = iVar.f7558e;
        boolean z2 = false;
        if (i6 == iB) {
            this.f7514B = this.f7517E.b(i4, i6) ^ this.f7514B;
            if (iB == str2.length()) {
                str2.getBytes(0, iB, this.f7517E.f7579a, iVar.f7549a);
            } else {
                f fVar = this.f7517E;
                fVar.f7580b = iVar.f7549a;
                fVar.a(str2);
            }
            this.f7518F = iVar.f7549a;
            this.f7519G = iB;
        } else {
            this.f7519G = i5 + iB;
            k();
            this.f7517E.a((byte) 6);
            int i7 = i5 - 3;
            f fVar2 = this.f7517E;
            byte[] bArr = fVar2.f7579a;
            System.arraycopy(bArr, iVar.f7557d + 1, bArr, fVar2.f7580b, i7);
            this.f7517E.f7580b += i7;
            b(str2, iB);
            a((byte) 6, iVar.f7557d, iVar.f7549a + iVar.f7558e);
            str = iVar.f7559f ? (String) iVar.f7556c : null;
            iVar.f7559f = false;
            int i8 = this.f7518F;
            iVar.f7557d = i8;
            iVar.f7549a = i8 + i5;
            iVar.f7558e = iB;
            z2 = true;
        }
        iVar.f7556c = str2;
        i();
        if (z2) {
            h();
        }
        if (str != null) {
            g(str);
        }
    }

    public final synchronized SharedPreferences.Editor a(String str, byte[] bArr) throws Throwable {
        Throwable th;
        a aVar;
        try {
            try {
                if (this.f7522J) {
                    return this;
                }
                h(str);
                try {
                    if (bArr == null) {
                        remove(str);
                        aVar = this;
                    } else {
                        g();
                        b.AbstractC0079b abstractC0079b = this.f7515C.get(str);
                        b.AbstractC0079b abstractC0079b2 = abstractC0079b;
                        if (abstractC0079b != null) {
                            byte bA = abstractC0079b.a();
                            abstractC0079b2 = abstractC0079b;
                            if (bA != 7) {
                                remove(str);
                                abstractC0079b2 = null;
                            }
                        }
                        b.a aVar2 = (b.a) abstractC0079b2;
                        com.anythink.core.common.s.a.a.a aVar3 = this.f7537z;
                        byte[] bArrA = aVar3 != null ? aVar3.a() : bArr;
                        if (bArrA == null) {
                            a(new Exception(f7498f));
                            return this;
                        }
                        aVar = this;
                        aVar.a(str, bArr, bArrA, aVar2, (byte) 7);
                        f(str);
                    }
                    return aVar;
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

    public final synchronized <T> SharedPreferences.Editor a(String str, T t2, com.anythink.core.common.s.a.a.b<T> bVar) throws Throwable {
        Throwable th;
        byte[] bArrA;
        try {
            try {
                if (this.f7522J) {
                    return this;
                }
                h(str);
                if (bVar != null) {
                    String strA = bVar.a();
                    if (!strA.isEmpty() && strA.length() <= 50) {
                        if (!this.f7535x.containsKey(strA)) {
                            throw new IllegalArgumentException("Encoder hasn't been registered");
                        }
                        try {
                            if (t2 == null) {
                                remove(str);
                                return this;
                            }
                            b.AbstractC0079b abstractC0079b = null;
                            try {
                                bArrA = bVar.a(t2);
                            } catch (Exception e2) {
                                a(e2);
                                bArrA = null;
                            }
                            if (bArrA == null) {
                                remove(str);
                                return this;
                            }
                            g();
                            b.AbstractC0079b abstractC0079b2 = this.f7515C.get(str);
                            if (abstractC0079b2 == null || abstractC0079b2.a() == 8) {
                                abstractC0079b = abstractC0079b2;
                            } else {
                                remove(str);
                            }
                            b.h hVar = (b.h) abstractC0079b;
                            int iB = f.b(strA);
                            f fVar = new f(iB + 1 + bArrA.length);
                            fVar.a((byte) iB);
                            fVar.a(strA);
                            fVar.a(bArrA);
                            byte[] bArrA2 = fVar.f7579a;
                            com.anythink.core.common.s.a.a.a aVar = this.f7537z;
                            if (aVar != null) {
                                bArrA2 = aVar.a();
                            }
                            byte[] bArr = bArrA2;
                            if (bArr == null) {
                                return this;
                            }
                            a(str, t2, bArr, hVar, (byte) 8);
                            f(str);
                            return this;
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    throw new IllegalArgumentException("Invalid encoder tag:".concat(strA));
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

    public synchronized void a(Map<String, Object> map, Map<Class, com.anythink.core.common.s.a.a.b> map2) {
        try {
            if (this.f7522J) {
                return;
            }
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
                        b(key, ((Double) value).doubleValue());
                    } else if (value instanceof byte[]) {
                        a(key, (byte[]) value);
                    } else {
                        if (value instanceof Set) {
                            Set<String> set = (Set) value;
                            if (set.isEmpty() || (set.iterator().next() instanceof String)) {
                                putStringSet(key, set);
                            }
                        }
                        if (map2 != null) {
                            com.anythink.core.common.s.a.a.b bVar = map2.get(value.getClass());
                            if (bVar != null) {
                                a(key, (String) value, (com.anythink.core.common.s.a.a.b<String>) bVar);
                            } else {
                                b(new Exception("missing encoder for type:" + value.getClass()));
                            }
                        } else {
                            b(new Exception("missing encoders"));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(Map<String, Object> map) {
        a(map, (Map<Class, com.anythink.core.common.s.a.a.b>) null);
    }

    private void a(String str, Object obj, Map<Class, com.anythink.core.common.s.a.a.b> map) throws Throwable {
        if (obj instanceof Set) {
            Set<String> set = (Set) obj;
            if (set.isEmpty() || (set.iterator().next() instanceof String)) {
                putStringSet(str, set);
                return;
            }
        }
        if (map != null) {
            com.anythink.core.common.s.a.a.b bVar = map.get(obj.getClass());
            if (bVar != null) {
                a(str, (String) obj, (com.anythink.core.common.s.a.a.b<String>) bVar);
                return;
            }
            b(new Exception("missing encoder for type:" + obj.getClass()));
            return;
        }
        b(new Exception("missing encoders"));
    }

    private boolean a(String str, byte b3) {
        return a(str, b3, f7507o[b3]);
    }

    private boolean a(String str, byte b3, int i2) {
        com.anythink.core.common.s.a.a.a aVar = this.f7537z;
        if (aVar != null) {
            str.getBytes(StandardCharsets.UTF_8);
            byte[] bArrA = aVar.a();
            if (bArrA == null) {
                a(new Exception(f7498f));
                return false;
            }
            int length = bArrA.length;
            a(length, i2, b3);
            this.f7517E.a((byte) length);
            f fVar = this.f7517E;
            System.arraycopy(bArrA, 0, fVar.f7579a, fVar.f7580b, length);
            this.f7517E.f7580b += length;
            return true;
        }
        int iB = f.b(str);
        a(iB, i2, b3);
        a(str, iB);
        return true;
    }

    private void a(int i2, int i3, byte b3) {
        f(i2);
        this.f7519G = i2 + 2 + i3;
        k();
        this.f7517E.a(b3);
    }

    private void a(String str, int i2) {
        this.f7517E.a((byte) i2);
        if (i2 == str.length()) {
            f fVar = this.f7517E;
            str.getBytes(0, i2, fVar.f7579a, fVar.f7580b);
            this.f7517E.f7580b += i2;
            return;
        }
        this.f7517E.a(str);
    }

    public void a(byte b3, int i2, int i3) {
        b(i2, i3);
        byte b4 = (byte) (b3 | c.f7560a);
        byte[] bArr = this.f7517E.f7579a;
        this.f7514B = (((bArr[i2] ^ b4) & 255) << ((i2 & 7) << 3)) ^ this.f7514B;
        bArr[i2] = b4;
    }

    public void a(int i2, byte[] bArr) {
        int length = bArr.length;
        this.f7514B ^= this.f7517E.b(i2, length);
        f fVar = this.f7517E;
        fVar.f7580b = i2;
        fVar.a(bArr);
        this.f7514B = this.f7517E.b(i2, length) ^ this.f7514B;
    }

    private int a(float f2) {
        int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
        com.anythink.core.common.s.a.a.a aVar = this.f7537z;
        return aVar != null ? aVar.c() : iFloatToRawIntBits;
    }

    private long a(double d2) {
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        com.anythink.core.common.s.a.a.a aVar = this.f7537z;
        return aVar != null ? aVar.e() : jDoubleToRawLongBits;
    }

    private void a(String str, Object obj, byte[] bArr, b.j jVar, byte b3) {
        if (jVar == null) {
            a(str, obj, bArr, b3);
        } else if (!jVar.f7559f && jVar.f7558e == bArr.length) {
            a(jVar.f7549a, bArr);
            jVar.f7556c = obj;
        } else {
            a(str, obj, bArr, jVar);
        }
    }

    private void a(String str, Object obj, byte[] bArr, byte b3) {
        int length;
        b.AbstractC0079b hVar;
        int iA = a(str, bArr, b3);
        if (iA > 0) {
            boolean z2 = this.f7523K != null;
            if (z2) {
                this.f7525M.a(str, obj);
                obj = this.f7523K;
                this.f7523K = null;
                length = 32;
            } else {
                length = bArr.length;
            }
            Object obj2 = obj;
            int i2 = length;
            if (b3 == 6) {
                hVar = new b.i(this.f7518F, iA, (String) obj2, i2, z2);
            } else if (b3 == 7) {
                hVar = new b.a(this.f7518F, iA, obj2, i2, z2);
            } else {
                hVar = new b.h(this.f7518F, iA, obj2, i2, z2);
            }
            this.f7515C.put(str, hVar);
            i();
        }
    }

    private void a(String str, Object obj, byte[] bArr, b.j jVar) {
        int iA = a(str, bArr, jVar.a());
        if (iA > 0) {
            String str2 = jVar.f7559f ? (String) jVar.f7556c : null;
            a(jVar.a(), jVar.f7557d, jVar.f7549a + jVar.f7558e);
            boolean z2 = this.f7523K != null;
            jVar.f7557d = this.f7518F;
            jVar.f7549a = iA;
            jVar.f7559f = z2;
            if (z2) {
                this.f7525M.a(str, obj);
                jVar.f7556c = this.f7523K;
                jVar.f7558e = 32;
                this.f7523K = null;
            } else {
                jVar.f7556c = obj;
                jVar.f7558e = bArr.length;
            }
            i();
            h();
            if (str2 != null) {
                g(str2);
            }
        }
    }

    private int a(final String str, final byte[] bArr, byte b3) {
        this.f7523K = null;
        if (bArr.length < this.f7532q) {
            return b(str, bArr, b3);
        }
        c("Large value, key: " + str + ", size: " + bArr.length);
        final String strA = l.a();
        byte[] bArr2 = new byte[32];
        strA.getBytes(0, 32, bArr2, 0);
        int iB = b(str, bArr2, (byte) (b3 | c.f7561b));
        if (iB > 0) {
            this.f7524L.a(strA, bArr);
            this.f7526N.a(strA, new e.a() { // from class: com.anythink.core.common.s.a.a.3
                @Override // com.anythink.core.common.s.a.e.a
                public final void a(AtomicBoolean atomicBoolean) {
                    if (atomicBoolean == null || atomicBoolean.get()) {
                        return;
                    }
                    if (l.a(new File(a.this.f7533v + a.this.f7534w, strA), bArr, atomicBoolean)) {
                        return;
                    }
                    a.this.c("Write large value with key:" + str + " failed");
                }
            });
            this.f7523K = strA;
        }
        return iB;
    }
}
