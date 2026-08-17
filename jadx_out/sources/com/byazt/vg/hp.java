package com.byazt.vg;

import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1750, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f26556a;
    public boolean eb;
    public a gu;

    /* renamed from: q, reason: collision with root package name */
    public int[] f26560q;

    /* renamed from: s, reason: collision with root package name */
    public l f26561s;

    /* renamed from: e, reason: collision with root package name */
    public boolean f26557e = false;
    public final jx jl = new jx();
    public int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f26559l = 1;
    public int jx = 2;

    /* renamed from: j, reason: collision with root package name */
    public int f26558j = 3;

    /* renamed from: w, reason: collision with root package name */
    public int f26562w = 4;

    public hp() {
        j();
    }

    private int w(int i2) {
        if (this.f26556a != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i3 = i2 * 5;
        if (i3 < this.f26560q.length) {
            return i3;
        }
        throw new IndexOutOfBoundsException("Invalid attribute index (" + i2 + ").");
    }

    public void hp(InputStream inputStream) throws IOException {
        hp();
        if (inputStream != null) {
            this.f26561s = new l(inputStream);
        }
    }

    public String j(int i2) {
        int iW = w(i2);
        int[] iArr = this.f26560q;
        if (iArr[iW + 3] != 3) {
            return "";
        }
        return this.gu.hp(iArr[iW + 2]);
    }

    public int jx() {
        if (this.f26556a != 2) {
            return -1;
        }
        return this.f26560q.length / 5;
    }

    public int l() throws IOException {
        try {
            if (this.f26561s == null) {
                throw new IOException("Parser is not opened.");
            }
            w();
            return this.f26556a;
        } catch (IOException e2) {
            hp();
            throw e2;
        }
    }

    public int jx(int i2) {
        return this.f26560q[w(i2) + 4];
    }

    public void hp() throws IOException {
        if (this.f26557e) {
            this.f26557e = false;
            this.f26561s.hp();
            this.gu = null;
            this.f26561s = null;
            this.jl.hp();
            j();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
    
        throw new java.io.IOException("Invalid resource ids size (" + r2 + ").");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x016b, code lost:
    
        throw new java.io.IOException("Invalid chunk type (" + r2 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vg.hp.w():void");
    }

    private void j() {
        this.f26560q = null;
        this.f26556a = -1;
    }

    public int l(int i2) {
        return this.f26560q[w(i2) + 3];
    }

    public String hp(int i2) {
        int i3 = this.f26560q[w(i2) + 1];
        return i3 == -1 ? "" : this.gu.hp(i3);
    }
}
