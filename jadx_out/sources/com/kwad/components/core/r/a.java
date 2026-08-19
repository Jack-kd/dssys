package com.kwad.components.core.r;

/* loaded from: classes4.dex */
public class a {
    private static volatile a akF;
    private int aev;
    private int akG;
    private boolean akH;
    private boolean akI;
    private int akJ;
    private boolean akK;

    private a() {
    }

    public static a wm() {
        if (akF == null) {
            synchronized (a.class) {
                try {
                    if (akF == null) {
                        akF = new a();
                    }
                } finally {
                }
            }
        }
        return akF;
    }

    public final void bU(int i2) {
        this.akG = i2;
    }

    public final void bV(int i2) {
        this.akJ = i2;
    }

    public final void bW(int i2) {
        this.aev = i2;
    }

    public final void ba(boolean z2) {
        this.akH = true;
    }

    public final void bb(boolean z2) {
        this.akI = z2;
    }

    public final void bc(boolean z2) {
        this.akK = z2;
    }

    public final void clear() {
        this.akI = false;
        this.akH = false;
        this.akJ = 0;
        this.akK = false;
        this.akG = -1;
        this.aev = 0;
    }

    public final int wn() {
        return this.akG;
    }

    public final boolean wo() {
        return this.akH;
    }

    public final boolean wp() {
        return this.akI;
    }

    public final boolean wq() {
        int i2 = this.akJ;
        return i2 == 1 || i2 == 3;
    }

    public final int wr() {
        return this.akJ;
    }

    public final boolean ws() {
        return this.akK;
    }

    public final int wt() {
        return this.aev;
    }
}
