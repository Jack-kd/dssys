package kotlin.text;

/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f51469a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f51470b;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f51471c;

    /* renamed from: d, reason: collision with root package name */
    public static final long[] f51472d;

    static {
        int[] iArr = new int[256];
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            iArr[i3] = "0123456789abcdef".charAt(i3 & 15) | ("0123456789abcdef".charAt(i3 >> 4) << '\b');
        }
        f51469a = iArr;
        int[] iArr2 = new int[256];
        for (int i4 = 0; i4 < 256; i4++) {
            iArr2[i4] = "0123456789ABCDEF".charAt(i4 & 15) | ("0123456789ABCDEF".charAt(i4 >> 4) << '\b');
        }
        f51470b = iArr2;
        int[] iArr3 = new int[256];
        for (int i5 = 0; i5 < 256; i5++) {
            iArr3[i5] = -1;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i6)] = i7;
            i6++;
            i7++;
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i8)] = i9;
            i8++;
            i9++;
        }
        f51471c = iArr3;
        long[] jArr = new long[256];
        for (int i10 = 0; i10 < 256; i10++) {
            jArr[i10] = -1;
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i11)] = i12;
            i11++;
            i12++;
        }
        int i13 = 0;
        while (i2 < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i2)] = i13;
            i2++;
            i13++;
        }
        f51472d = jArr;
    }

    public static final int[] a() {
        return f51469a;
    }
}
