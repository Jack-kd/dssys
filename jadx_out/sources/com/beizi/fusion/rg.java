package com.beizi.fusion;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class rg implements Closeable, Flushable {

    /* renamed from: l, reason: collision with root package name */
    private static final Pattern f15966l = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* renamed from: m, reason: collision with root package name */
    private static final String[] f15967m = new String[128];

    /* renamed from: n, reason: collision with root package name */
    private static final String[] f15968n;

    /* renamed from: a, reason: collision with root package name */
    private final Writer f15969a;

    /* renamed from: b, reason: collision with root package name */
    private int[] f15970b = new int[32];

    /* renamed from: c, reason: collision with root package name */
    private int f15971c = 0;

    /* renamed from: d, reason: collision with root package name */
    private i8 f15972d;

    /* renamed from: e, reason: collision with root package name */
    private String f15973e;

    /* renamed from: f, reason: collision with root package name */
    private String f15974f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15975g;

    /* renamed from: h, reason: collision with root package name */
    private po f15976h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f15977i;

    /* renamed from: j, reason: collision with root package name */
    private String f15978j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15979k;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f15967m[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = f15967m;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f15968n = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public rg(Writer writer) {
        a(6);
        this.f15976h = po.LEGACY_STRICT;
        this.f15979k = true;
        Objects.requireNonNull(writer, "out == null");
        this.f15969a = writer;
        a(i8.f14443d);
    }

    private void j() throws IOException {
        if (this.f15975g) {
            return;
        }
        this.f15969a.write(this.f15972d.b());
        int i2 = this.f15971c;
        for (int i3 = 1; i3 < i2; i3++) {
            this.f15969a.write(this.f15972d.a());
        }
    }

    private int l() {
        int i2 = this.f15971c;
        if (i2 != 0) {
            return this.f15970b[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void m() throws IOException {
        if (this.f15978j != null) {
            a();
            b(this.f15978j);
            this.f15978j = null;
        }
    }

    public final void a(i8 i8Var) {
        Objects.requireNonNull(i8Var);
        this.f15972d = i8Var;
        this.f15974f = ",";
        if (i8Var.c()) {
            this.f15973e = ": ";
            if (this.f15972d.b().isEmpty()) {
                this.f15974f = ", ";
            }
        } else {
            this.f15973e = ":";
        }
        this.f15975g = this.f15972d.b().isEmpty() && this.f15972d.a().isEmpty();
    }

    public final void b(boolean z2) {
        this.f15979k = z2;
    }

    public rg c() throws IOException {
        m();
        return a(1, '[');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15969a.close();
        int i2 = this.f15971c;
        if (i2 > 1 || (i2 == 1 && this.f15970b[i2 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f15971c = 0;
    }

    public rg d() throws IOException {
        m();
        return a(3, '{');
    }

    public rg e() {
        return a(1, 2, ']');
    }

    public rg f() {
        return a(3, 5, '}');
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f15971c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f15969a.flush();
    }

    public final boolean g() {
        return this.f15979k;
    }

    public final po h() {
        return this.f15976h;
    }

    public final boolean i() {
        return this.f15977i;
    }

    public rg k() throws IOException {
        if (this.f15978j != null) {
            if (!this.f15979k) {
                this.f15978j = null;
                return this;
            }
            m();
        }
        b();
        this.f15969a.write("null");
        return this;
    }

    private void b(int i2) {
        this.f15970b[this.f15971c - 1] = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f15977i
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.beizi.fusion.rg.f15968n
            goto L9
        L7:
            java.lang.String[] r0 = com.beizi.fusion.rg.f15967m
        L9:
            java.io.Writer r1 = r8.f15969a
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f15969a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f15969a
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f15969a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f15969a
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.rg.b(java.lang.String):void");
    }

    public rg c(String str) throws IOException {
        if (str == null) {
            return k();
        }
        m();
        b();
        b(str);
        return this;
    }

    public rg c(boolean z2) throws IOException {
        m();
        b();
        this.f15969a.write(z2 ? "true" : "false");
        return this;
    }

    public final void a(po poVar) {
        Objects.requireNonNull(poVar);
        this.f15976h = poVar;
    }

    public final void a(boolean z2) {
        this.f15977i = z2;
    }

    private rg a(int i2, char c2) throws IOException {
        b();
        a(i2);
        this.f15969a.write(c2);
        return this;
    }

    private void b() throws IOException {
        int iL = l();
        if (iL == 1) {
            b(2);
            j();
            return;
        }
        if (iL == 2) {
            this.f15969a.append((CharSequence) this.f15974f);
            j();
        } else {
            if (iL != 4) {
                if (iL != 6) {
                    if (iL == 7) {
                        if (this.f15976h != po.LENIENT) {
                            throw new IllegalStateException("JSON must have only one top-level value.");
                        }
                    } else {
                        throw new IllegalStateException("Nesting problem.");
                    }
                }
                b(7);
                return;
            }
            this.f15969a.append((CharSequence) this.f15973e);
            b(5);
        }
    }

    private rg a(int i2, int i3, char c2) throws IOException {
        int iL = l();
        if (iL != i3 && iL != i2) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f15978j == null) {
            this.f15971c--;
            if (iL == i3) {
                j();
            }
            this.f15969a.write(c2);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f15978j);
    }

    private void a(int i2) {
        int i3 = this.f15971c;
        int[] iArr = this.f15970b;
        if (i3 == iArr.length) {
            this.f15970b = Arrays.copyOf(iArr, i3 * 2);
        }
        int[] iArr2 = this.f15970b;
        int i4 = this.f15971c;
        this.f15971c = i4 + 1;
        iArr2[i4] = i2;
    }

    public rg a(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f15978j == null) {
            int iL = l();
            if (iL != 3 && iL != 5) {
                throw new IllegalStateException("Please begin an object before writing a name.");
            }
            this.f15978j = str;
            return this;
        }
        throw new IllegalStateException("Already wrote a name, expecting a value.");
    }

    public rg a(Boolean bool) throws IOException {
        if (bool == null) {
            return k();
        }
        m();
        b();
        this.f15969a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public rg a(double d2) throws IOException {
        m();
        if (this.f15976h != po.LENIENT && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d2);
        }
        b();
        this.f15969a.append((CharSequence) Double.toString(d2));
        return this;
    }

    public rg a(long j2) throws IOException {
        m();
        b();
        this.f15969a.write(Long.toString(j2));
        return this;
    }

    public rg a(Number number) throws IOException {
        if (number == null) {
            return k();
        }
        m();
        String string = number.toString();
        Class<?> cls = number.getClass();
        if (!a(cls)) {
            if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
                if (cls != Float.class && cls != Double.class && !f15966l.matcher(string).matches()) {
                    throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + string);
                }
            } else if (this.f15976h != po.LENIENT) {
                throw new IllegalArgumentException("Numeric values must be finite, but was " + string);
            }
        }
        b();
        this.f15969a.append((CharSequence) string);
        return this;
    }

    private static boolean a(Class cls) {
        return cls == Integer.class || cls == Long.class || cls == Byte.class || cls == Short.class || cls == BigDecimal.class || cls == BigInteger.class || cls == AtomicInteger.class || cls == AtomicLong.class;
    }

    private void a() throws IOException {
        int iL = l();
        if (iL == 5) {
            this.f15969a.write(this.f15974f);
        } else if (iL != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        j();
        b(4);
    }
}
