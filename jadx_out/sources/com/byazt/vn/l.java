package com.byazt.vn;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 1312, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: e, reason: collision with root package name */
    public eb f26586e;
    public int[] jl;

    /* renamed from: k, reason: collision with root package name */
    public boolean f26588k;

    /* renamed from: q, reason: collision with root package name */
    public final byte[] f26590q;

    /* renamed from: s, reason: collision with root package name */
    public final s f26591s;

    /* renamed from: u, reason: collision with root package name */
    public int[] f26592u;

    /* renamed from: v, reason: collision with root package name */
    public int f26593v;
    public int xs;
    public HashMap<Integer, Integer> hp = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public boolean f26589l = false;
    public boolean gu = false;
    public final hp zy = new hp();
    public int jx = 0;

    /* renamed from: j, reason: collision with root package name */
    public int f26587j = 1;

    /* renamed from: w, reason: collision with root package name */
    public int f26594w = 2;

    /* renamed from: a, reason: collision with root package name */
    public int f26585a = 3;
    public int eb = 4;

    public l(byte[] bArr, s sVar) {
        this.f26591s = sVar;
        this.f26590q = bArr;
        j();
    }

    private void j() {
        this.f26593v = -1;
        this.f26592u = null;
        this.xs = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e5, code lost:
    
        throw new java.io.IOException("Invalid resource ids size (" + r2 + ").");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0213, code lost:
    
        throw new java.io.IOException("Invalid chunk type (" + r2 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vn.l.w():void");
    }

    public void hp(InputStream inputStream) {
        hp();
        if (inputStream != null) {
            this.f26586e = new eb(new q(new w(inputStream)));
        }
    }

    public int jx() throws IOException {
        return l();
    }

    public int l() throws IOException {
        if (this.f26586e == null) {
            throw new RuntimeException("Parser is not opened.");
        }
        try {
            w();
            return this.f26593v;
        } catch (IOException e2) {
            hp();
            throw e2;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1312, 123})
    public static final class hp {
        public int[] hp = new int[32];
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f26595l;

        public void a() {
            int i2 = this.f26595l;
            if (i2 == 0) {
                return;
            }
            int i3 = this.hp[i2 - 1] * 2;
            if ((i2 - 2) - i3 == 0) {
                return;
            }
            this.f26595l = i2 - (i3 + 2);
            this.jx--;
        }

        public void hp() {
            this.f26595l = 0;
            this.jx = 0;
        }

        public int j() {
            return this.jx;
        }

        public boolean jx() {
            int[] iArr;
            int i2;
            int i3 = this.f26595l;
            if (i3 == 0 || (i2 = (iArr = this.hp)[i3 - 1]) == 0) {
                return false;
            }
            int i4 = i2 - 1;
            int i5 = i3 - 3;
            iArr[i5] = i4;
            iArr[i5 - ((i4 * 2) + 1)] = i4;
            this.f26595l = i3 - 2;
            return true;
        }

        public int l() {
            int i2 = this.f26595l;
            if (i2 == 0) {
                return 0;
            }
            return this.hp[i2 - 1];
        }

        public void w() {
            hp(2);
            int i2 = this.f26595l;
            int[] iArr = this.hp;
            iArr[i2] = 0;
            iArr[i2 + 1] = 0;
            this.f26595l = i2 + 2;
            this.jx++;
        }

        public void hp(int i2, int i3) {
            if (this.jx == 0) {
                w();
            }
            hp(2);
            int i4 = this.f26595l;
            int i5 = i4 - 1;
            int[] iArr = this.hp;
            int i6 = iArr[i5];
            int i7 = (i4 - 2) - (i6 * 2);
            int i8 = i6 + 1;
            iArr[i7] = i8;
            iArr[i5] = i2;
            iArr[i4] = i3;
            iArr[i4 + 1] = i8;
            this.f26595l = i4 + 2;
        }

        private void hp(int i2) {
            int[] iArr = this.hp;
            int length = iArr.length;
            int i3 = this.f26595l;
            int i4 = length - i3;
            if (i4 > i2) {
                return;
            }
            int[] iArr2 = new int[(iArr.length + i4) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.hp = iArr2;
        }
    }

    public void hp() {
        if (this.gu) {
            this.gu = false;
            this.f26586e = null;
            this.jl = null;
            this.zy.hp();
            j();
        }
    }

    public void l(InputStream inputStream) {
        hp(inputStream);
    }
}
