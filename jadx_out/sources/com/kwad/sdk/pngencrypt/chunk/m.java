package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* loaded from: classes4.dex */
public final class m extends p {
    private int bmb;
    private int[] bmc;

    public m(com.kwad.sdk.pngencrypt.k kVar) {
        super("PLTE", kVar);
        this.bmb = 0;
    }

    private void c(int i2, int i3, int i4, int i5) {
        this.bmc[i2] = (i3 << 16) | (i4 << 8) | i5;
    }

    private void fC(int i2) {
        this.bmb = i2;
        if (i2 <= 0 || i2 > 256) {
            throw new PngjException("invalid pallette - nentries=" + this.bmb);
        }
        int[] iArr = this.bmc;
        if (iArr == null || iArr.length != i2) {
            this.bmc = new int[i2];
        }
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        fC(dVar.len / 3);
        int i2 = 0;
        for (int i3 = 0; i3 < this.bmb; i3++) {
            byte[] bArr = dVar.data;
            int i4 = bArr[i2] & 255;
            int i5 = i2 + 2;
            int i6 = bArr[i2 + 1] & 255;
            i2 += 3;
            c(i3, i4, i6, bArr[i5] & 255);
        }
    }
}
