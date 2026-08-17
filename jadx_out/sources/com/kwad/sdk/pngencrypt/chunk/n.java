package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* loaded from: classes4.dex */
public final class n extends k {
    private String bmd;
    private int bme;
    private int[] bmf;

    public n(com.kwad.sdk.pngencrypt.k kVar) {
        super("sPLT", kVar);
    }

    public final String Tz() {
        return this.bmd;
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        byte[] bArr;
        int iF;
        int iF2;
        int iF3;
        int iF4;
        int i2;
        int i3 = 0;
        while (true) {
            bArr = dVar.data;
            if (i3 >= bArr.length) {
                i3 = -1;
                break;
            } else if (bArr[i3] == 0) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 <= 0 || i3 > bArr.length - 2) {
            throw new PngjException("bad sPLT chunk: no separator found");
        }
        this.bmd = b.c(bArr, 0, i3);
        int iE = com.kwad.sdk.pngencrypt.n.e(dVar.data, i3 + 1);
        this.bme = iE;
        int i4 = i3 + 2;
        int length = (dVar.data.length - i4) / (iE == 8 ? 6 : 10);
        this.bmf = new int[length * 5];
        int i5 = i4;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (this.bme == 8) {
                iF = com.kwad.sdk.pngencrypt.n.e(dVar.data, i5);
                iF2 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i5 + 1);
                int i8 = i5 + 3;
                iF3 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i5 + 2);
                i2 = i5 + 4;
                iF4 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i8);
            } else {
                iF = com.kwad.sdk.pngencrypt.n.f(dVar.data, i5);
                iF2 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i5 + 2);
                iF3 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i5 + 4);
                iF4 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i5 + 6);
                i2 = i5 + 8;
            }
            int iF5 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i2);
            i5 = i2 + 2;
            int[] iArr = this.bmf;
            iArr[i6] = iF;
            iArr[i6 + 1] = iF2;
            iArr[i6 + 2] = iF3;
            int i9 = i6 + 4;
            iArr[i6 + 3] = iF4;
            i6 += 5;
            iArr[i9] = iF5;
        }
    }
}
