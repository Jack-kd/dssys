package com.kwad.sdk.pngencrypt;

/* loaded from: classes4.dex */
public final class k {
    public final int bkO;
    public final int bkP;
    public final boolean bkQ;
    public final boolean bkR;
    public final boolean bkS;
    public final boolean bkT;
    public final int bkU;
    public final int bkV;
    public final int bkW;
    public final int bkX;
    public final int bkY;
    public final int bkv;
    public final int bkw;
    private long bkZ = -1;
    private long bla = -1;

    public k(int i2, int i3, int i4, boolean z2, boolean z3, boolean z4) {
        this.bkw = i2;
        this.bkv = i3;
        this.bkQ = z2;
        this.bkS = z4;
        this.bkR = z3;
        if (z3 && z4) {
            throw new PngjException("palette and greyscale are mutually exclusive");
        }
        int i5 = (z3 || z4) ? z2 ? 2 : 1 : z2 ? 4 : 3;
        this.bkP = i5;
        this.bkO = i4;
        boolean z5 = i4 < 8;
        this.bkT = z5;
        int i6 = i5 * i4;
        this.bkU = i6;
        this.bkV = (i6 + 7) / 8;
        int i7 = ((i6 * i2) + 7) / 8;
        this.bkW = i7;
        int i8 = i5 * i2;
        this.bkX = i8;
        this.bkY = z5 ? i7 : i8;
        if (i4 == 1 || i4 == 2 || i4 == 4) {
            if (!z4 && !z3) {
                throw new PngjException("only indexed or grayscale can have bitdepth=" + i4);
            }
        } else if (i4 != 8) {
            if (i4 != 16) {
                throw new PngjException("invalid bitdepth=" + i4);
            }
            if (z4) {
                throw new PngjException("indexed can't have bitdepth=" + i4);
            }
        }
        if (i2 <= 0 || i2 > 16777216) {
            throw new PngjException("invalid cols=" + i2 + " ???");
        }
        if (i3 > 0 && i3 <= 16777216) {
            if (i8 <= 0) {
                throw new PngjException("invalid image parameters (overflow?)");
            }
        } else {
            throw new PngjException("invalid rows=" + i3 + " ???");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.bkQ == kVar.bkQ && this.bkO == kVar.bkO && this.bkw == kVar.bkw && this.bkR == kVar.bkR && this.bkS == kVar.bkS && this.bkv == kVar.bkv;
    }

    public final int hashCode() {
        return (((((((((((this.bkQ ? 1231 : 1237) + 31) * 31) + this.bkO) * 31) + this.bkw) * 31) + (this.bkR ? 1231 : 1237)) * 31) + (this.bkS ? 1231 : 1237)) * 31) + this.bkv;
    }

    public final String toString() {
        return "ImageInfo [cols=" + this.bkw + ", rows=" + this.bkv + ", bitDepth=" + this.bkO + ", channels=" + this.bkP + ", alpha=" + this.bkQ + ", greyscale=" + this.bkR + ", indexed=" + this.bkS + "]";
    }
}
