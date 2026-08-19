package com.smartdigimkt.r2;

import android.view.View;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Random;

/* loaded from: classes5.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public int f43002a;

    /* renamed from: b, reason: collision with root package name */
    public int f43003b;

    /* renamed from: c, reason: collision with root package name */
    public int f43004c;

    /* renamed from: d, reason: collision with root package name */
    public int f43005d;

    /* renamed from: e, reason: collision with root package name */
    public int f43006e;

    /* renamed from: f, reason: collision with root package name */
    public int f43007f;

    /* renamed from: g, reason: collision with root package name */
    public int f43008g;

    /* renamed from: h, reason: collision with root package name */
    public int f43009h;

    /* renamed from: i, reason: collision with root package name */
    public long f43010i;

    /* renamed from: j, reason: collision with root package name */
    public long f43011j;

    /* renamed from: k, reason: collision with root package name */
    public int f43012k;

    /* renamed from: l, reason: collision with root package name */
    public int f43013l;

    /* renamed from: m, reason: collision with root package name */
    public int f43014m;

    /* renamed from: n, reason: collision with root package name */
    public long f43015n = -1;

    /* renamed from: o, reason: collision with root package name */
    public long f43016o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f43017p;

    /* renamed from: q, reason: collision with root package name */
    public int f43018q;

    /* renamed from: r, reason: collision with root package name */
    public int f43019r;

    /* renamed from: s, reason: collision with root package name */
    public int f43020s;

    public static int b(int i2, int i3) {
        if (i2 == 4) {
            return 2;
        }
        if (i2 != 18) {
            if (i2 == 19) {
                return 5;
            }
            switch (i2) {
                case 11:
                    if (i3 == 15 || i3 == 16 || i3 == 21 || i3 == 48 || i3 == 45 || i3 == 46) {
                    }
                    break;
            }
            return 0;
        }
        return 1;
    }

    public final void a(int i2, int i3, int i4, int i5) {
        this.f43002a = i2;
        this.f43003b = i3;
        this.f43006e = i4;
        this.f43007f = i5;
        this.f43010i = System.currentTimeMillis();
        if (this.f43004c == 0 && this.f43005d == 0 && this.f43008g == 0 && this.f43009h == 0 && this.f43011j == 0) {
            this.f43004c = i2;
            this.f43005d = i3;
            this.f43008g = i4;
            this.f43009h = i5;
            this.f43011j = System.currentTimeMillis() + new Random().nextInt(10) + 5;
        }
    }

    public final com.smartdigimkt.i0.a a(int i2, int i3) {
        float[] fArr;
        com.smartdigimkt.i0.a aVar = new com.smartdigimkt.i0.a();
        aVar.f40613a = this.f43002a;
        aVar.f40614b = this.f43003b;
        int i4 = this.f43004c;
        aVar.f40615c = i4;
        int i5 = this.f43005d;
        aVar.f40616d = i5;
        aVar.f40617e = this.f43006e;
        aVar.f40618f = this.f43007f;
        int i6 = this.f43008g;
        aVar.f40619g = i6;
        int i7 = this.f43009h;
        aVar.f40620h = i7;
        aVar.f40623k = this.f43010i;
        aVar.f40624l = this.f43011j;
        aVar.f40631s = i2;
        aVar.f40632t = i3;
        if (i2 == 0) {
            aVar.f40613a = i4;
            aVar.f40614b = i5;
            aVar.f40617e = i6;
            aVar.f40618f = i7;
        }
        if (i2 == 2) {
            com.smartdigimkt.e1.a aVarA = com.smartdigimkt.e1.a.a();
            synchronized (aVarA) {
                fArr = aVarA.f40047c;
            }
            aVar.f40625m = fArr;
        }
        if (i2 == 5) {
            long j2 = this.f43015n;
            if (j2 >= 0) {
                aVar.f40626n = this.f43012k;
                aVar.f40627o = this.f43013l;
                aVar.f40628p = this.f43014m;
                aVar.f40629q = j2;
                aVar.f40630r = this.f43016o;
            }
        }
        return aVar;
    }

    public final com.smartdigimkt.i0.a a(View view, View view2, int i2, int i3, int i4) {
        int iB = b(i2, i3);
        if (i2 == 5 || i2 == 6 || i2 == 7) {
            a(view, view2, i4);
            iB = 0;
        }
        return a(iB, i3);
    }

    public final void a(View view, View view2, int i2) {
        float f2;
        float f3;
        float f4;
        float f5;
        int iNextInt;
        int iNextInt2;
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        int width = view.getWidth();
        int height = view.getHeight();
        if (width == 0) {
            width = com.smartdigimkt.c5.h.j(SDKContext.getInstance().d());
            i3 = 0;
        }
        if (height == 0) {
            height = com.smartdigimkt.c5.h.i(SDKContext.getInstance().d());
            i4 = 0;
        }
        if (i2 == 3) {
            f2 = 0.08f;
            f3 = 0.92f;
            f4 = 0.25f;
            f5 = 0.75f;
        } else if (i2 != 4) {
            f3 = 0.9f;
            f2 = 0.1f;
            f4 = 0.6f;
            f5 = 0.9f;
        } else {
            f3 = 1.0f;
            f2 = 0.0f;
            f5 = 1.0f;
            f4 = 0.0f;
        }
        Random random = new Random();
        if (width > 0) {
            float f6 = width;
            iNextInt = (int) (f2 * f6);
            int i5 = (int) (f6 * f3);
            if (i5 > iNextInt) {
                iNextInt += random.nextInt((i5 - iNextInt) + 1);
            }
        } else {
            iNextInt = 0;
        }
        Random random2 = new Random();
        if (height > 0) {
            float f7 = height;
            iNextInt2 = (int) (f4 * f7);
            int i6 = (int) (f7 * f5);
            if (i6 > iNextInt2) {
                iNextInt2 += random2.nextInt((i6 - iNextInt2) + 1);
            }
        } else {
            iNextInt2 = 0;
        }
        int i7 = i3 + iNextInt;
        int i8 = i4 + iNextInt2;
        if (view2 == null) {
            view2 = view;
        }
        if (view2 != view) {
            int[] iArr2 = new int[2];
            view2.getLocationInWindow(iArr2);
            iNextInt = i7 - iArr2[0];
            iNextInt2 = i8 - iArr2[1];
        }
        a(i7, i8, iNextInt, iNextInt2);
        this.f43004c = i7;
        this.f43005d = i8;
        this.f43008g = iNextInt;
        this.f43009h = iNextInt2;
        this.f43011j = System.currentTimeMillis();
    }
}
