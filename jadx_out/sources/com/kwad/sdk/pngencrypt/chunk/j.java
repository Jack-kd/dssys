package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* loaded from: classes4.dex */
public final class j extends t {
    private boolean blV;
    private String blW;
    private String blX;

    public j(com.kwad.sdk.pngencrypt.k kVar) {
        super("iTXt", kVar);
        this.blV = false;
        this.blW = "";
        this.blX = "";
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        int[] iArr = new int[3];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = dVar.data;
            if (i2 >= bArr.length) {
                break;
            }
            if (bArr[i2] == 0) {
                iArr[i3] = i2;
                i3++;
                if (i3 == 1) {
                    i2 += 2;
                }
                if (i3 == 3) {
                    break;
                }
            }
            i2++;
        }
        if (i3 != 3) {
            new PngjException("Bad formed PngChunkITXT chunk");
        }
        this.key = b.c(dVar.data, 0, iArr[0]);
        int i4 = iArr[0];
        byte[] bArr2 = dVar.data;
        boolean z2 = bArr2[i4 + 1] != 0;
        this.blV = z2;
        int i5 = i4 + 2;
        if (z2 && bArr2[i5] != 0) {
            new PngjException("Bad formed PngChunkITXT chunk - bad compression method ");
        }
        this.blW = b.c(dVar.data, i5, iArr[1] - i5);
        byte[] bArr3 = dVar.data;
        int i6 = iArr[1];
        this.blX = b.d(bArr3, i6 + 1, (iArr[2] - i6) - 1);
        int i7 = iArr[2] + 1;
        if (this.blV) {
            byte[] bArr4 = dVar.data;
            this.bmp = b.n(b.b(bArr4, i7, bArr4.length - i7, false));
        } else {
            byte[] bArr5 = dVar.data;
            this.bmp = b.d(bArr5, i7, bArr5.length - i7);
        }
    }
}
