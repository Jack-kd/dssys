package com.byazt.gb;

import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 861, 28})
/* loaded from: classes2.dex */
public class hp implements q {

    /* renamed from: e, reason: collision with root package name */
    public int f20361e;
    public boolean eb;
    public int gu;

    /* renamed from: j, reason: collision with root package name */
    public a f20362j;
    public int[] jl;

    /* renamed from: k, reason: collision with root package name */
    public int f20363k;

    /* renamed from: l, reason: collision with root package name */
    public j f20364l;

    /* renamed from: q, reason: collision with root package name */
    public int f20365q;

    /* renamed from: s, reason: collision with root package name */
    public int f20366s;

    /* renamed from: v, reason: collision with root package name */
    public int f20367v;

    /* renamed from: w, reason: collision with root package name */
    public int[] f20368w;
    public int zy;
    public boolean jx = false;

    /* renamed from: a, reason: collision with root package name */
    public C0254hp f20360a = new C0254hp();

    public hp() {
        eb();
    }

    private final void eb() {
        this.f20366s = -1;
        this.f20365q = -1;
        this.f20361e = -1;
        this.gu = -1;
        this.jl = null;
        this.zy = -1;
        this.f20363k = -1;
        this.f20367v = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
    
        throw new java.io.IOException("Invalid resource ids size (" + r2 + ").");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0180, code lost:
    
        throw new java.io.IOException("Invalid chunk type (" + r5 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void s() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.gb.hp.s():void");
    }

    @Override // com.byazt.gb.eb
    public int a() {
        return -1;
    }

    public void hp(InputStream inputStream) throws IOException {
        hp();
        if (inputStream != null) {
            this.f20364l = new j(inputStream, false);
        }
    }

    @Override // com.byazt.gb.eb
    public String j() {
        return "XML line #" + jx();
    }

    @Override // com.byazt.gb.eb
    public int jx() {
        return this.f20365q;
    }

    public int l() throws IOException, s {
        if (this.f20364l == null) {
            throw new s("Parser is not opened.", this, null);
        }
        try {
            s();
            return this.f20366s;
        } catch (IOException e2) {
            hp();
            throw e2;
        }
    }

    public int w() {
        if (this.f20366s != 2) {
            return -1;
        }
        return this.jl.length / 5;
    }

    @com.byazt.kj.hp(hp = {0, 1, 861, 170})
    /* renamed from: com.byazt.gb.hp$hp, reason: collision with other inner class name */
    public static final class C0254hp {
        public int[] hp = new int[32];
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20369l;

        public final void a() {
            int i2 = this.f20369l;
            if (i2 != 0) {
                int i3 = this.hp[i2 - 1] * 2;
                if ((i2 - 2) - i3 != 0) {
                    this.f20369l = i2 - (i3 + 2);
                    this.jx--;
                }
            }
        }

        public final void hp() {
            this.f20369l = 0;
            this.jx = 0;
        }

        public final int j() {
            return this.jx;
        }

        public final boolean jx() {
            int[] iArr;
            int i2;
            int i3 = this.f20369l;
            if (i3 == 0 || (i2 = (iArr = this.hp)[i3 - 1]) == 0) {
                return false;
            }
            int i4 = i2 - 1;
            int i5 = i3 - 3;
            iArr[i5] = i4;
            iArr[i5 - ((i4 * 2) + 1)] = i4;
            this.f20369l = i3 - 2;
            return true;
        }

        public final int l() {
            int i2 = this.f20369l;
            if (i2 == 0) {
                return 0;
            }
            return this.hp[i2 - 1];
        }

        public final void w() {
            hp(2);
            int i2 = this.f20369l;
            int[] iArr = this.hp;
            iArr[i2] = 0;
            iArr[i2 + 1] = 0;
            this.f20369l = i2 + 2;
            this.jx++;
        }

        public final void hp(int i2, int i3) {
            if (this.jx == 0) {
                w();
            }
            hp(2);
            int i4 = this.f20369l;
            int i5 = i4 - 1;
            int[] iArr = this.hp;
            int i6 = iArr[i5];
            int i7 = (i4 - 2) - (i6 * 2);
            int i8 = i6 + 1;
            iArr[i7] = i8;
            iArr[i5] = i2;
            iArr[i4] = i3;
            iArr[i4 + 1] = i8;
            this.f20369l = i4 + 2;
        }

        private void hp(int i2) {
            int[] iArr = this.hp;
            int length = iArr.length;
            int i3 = this.f20369l;
            int i4 = length - i3;
            if (i4 <= i2) {
                int[] iArr2 = new int[(iArr.length + i4) * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i3);
                this.hp = iArr2;
            }
        }
    }

    private final int w(int i2) {
        if (this.f20366s != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i3 = i2 * 5;
        if (i3 < this.jl.length) {
            return i3;
        }
        throw new IndexOutOfBoundsException("Invalid attribute index (" + i2 + ").");
    }

    public String j(int i2) {
        int iW = w(i2);
        int[] iArr = this.jl;
        if (iArr[iW + 3] != 3) {
            return "";
        }
        return this.f20362j.hp(iArr[iW + 2]);
    }

    public int jx(int i2) {
        return this.jl[w(i2) + 4];
    }

    public void hp() throws IOException {
        if (this.jx) {
            this.jx = false;
            this.f20364l.hp();
            this.f20364l = null;
            this.f20362j = null;
            this.f20368w = null;
            this.f20360a.hp();
            eb();
        }
    }

    public int l(int i2) {
        return this.jl[w(i2) + 3];
    }

    public String hp(int i2) {
        int i3 = this.jl[w(i2) + 1];
        return i3 == -1 ? "" : this.f20362j.hp(i3);
    }
}
