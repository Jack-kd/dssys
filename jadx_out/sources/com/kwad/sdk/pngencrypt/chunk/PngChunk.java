package com.kwad.sdk.pngencrypt.chunk;

/* loaded from: classes4.dex */
public abstract class PngChunk {
    protected final com.kwad.sdk.pngencrypt.k bkK;
    public final boolean blK;
    public final boolean blL;
    public final boolean blM;
    protected d blN;
    private boolean blO = false;
    protected int blP = -1;
    public final String id;

    public enum ChunkOrderingConstraint {
        NONE,
        BEFORE_PLTE_AND_IDAT,
        AFTER_PLTE_BEFORE_IDAT,
        AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED,
        BEFORE_IDAT,
        AFTER_IDAT,
        NA;

        public final boolean isOk(int i2, boolean z2) {
            if (this == NONE) {
                return true;
            }
            return this == BEFORE_IDAT ? i2 < 4 : this == BEFORE_PLTE_AND_IDAT ? i2 < 2 : this == AFTER_PLTE_BEFORE_IDAT ? z2 ? i2 < 4 : i2 < 4 && i2 > 2 : this == AFTER_IDAT && i2 > 4;
        }

        public final boolean mustGoAfterIDAT() {
            return this == AFTER_IDAT;
        }

        public final boolean mustGoAfterPLTE() {
            return this == AFTER_PLTE_BEFORE_IDAT || this == AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED;
        }

        public final boolean mustGoBeforeIDAT() {
            return this == BEFORE_IDAT || this == BEFORE_PLTE_AND_IDAT || this == AFTER_PLTE_BEFORE_IDAT;
        }

        public final boolean mustGoBeforePLTE() {
            return this == BEFORE_PLTE_AND_IDAT;
        }
    }

    public PngChunk(String str, com.kwad.sdk.pngencrypt.k kVar) {
        this.id = str;
        this.bkK = kVar;
        this.blK = b.hq(str);
        this.blL = b.hr(str);
        this.blM = b.hs(str);
    }

    private long Tp() {
        d dVar = this.blN;
        if (dVar != null) {
            return dVar.Tp();
        }
        return -1L;
    }

    private int Tr() {
        d dVar = this.blN;
        if (dVar != null) {
            return dVar.len;
        }
        return -1;
    }

    public abstract void a(d dVar);

    public final void b(d dVar) {
        this.blN = dVar;
    }

    public final void fu(int i2) {
        this.blP = i2;
    }

    public String toString() {
        return "chunk id= " + this.id + " (len=" + Tr() + " offset=" + Tp() + ")";
    }
}
