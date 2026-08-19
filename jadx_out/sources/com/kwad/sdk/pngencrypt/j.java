package com.kwad.sdk.pngencrypt;

import java.util.Arrays;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes4.dex */
public final class j extends DeflatedChunksSet {
    protected final e bjO;
    protected byte[] bkI;
    protected byte[] bkJ;
    protected final k bkK;
    final p bkL;
    protected int[] bkM;

    /* renamed from: com.kwad.sdk.pngencrypt.j$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] bkN;

        static {
            int[] iArr = new int[FilterType.values().length];
            bkN = iArr;
            try {
                iArr[FilterType.FILTER_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                bkN[FilterType.FILTER_SUB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                bkN[FilterType.FILTER_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                bkN[FilterType.FILTER_AVERAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                bkN[FilterType.FILTER_PAETH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public j(String str, boolean z2, k kVar, e eVar) {
        this(str, z2, kVar, eVar, null, null);
    }

    private void Tc() {
        fo(this.bkL.bls);
    }

    private int Td() throws DataFormatException {
        int iTb;
        e eVar = this.bjO;
        int i2 = 0;
        if (eVar == null) {
            int iST = ST();
            k kVar = this.bkK;
            if (iST < kVar.bkv - 1) {
                iTb = kVar.bkW;
                i2 = iTb + 1;
            }
        } else if (eVar.SU()) {
            iTb = this.bjO.Tb();
            i2 = iTb + 1;
        }
        if (!this.bjR) {
            fk(i2);
        }
        return i2;
    }

    private void fo(int i2) {
        byte[] bArr = this.bkI;
        if (bArr == null || bArr.length < this.bkh.length) {
            byte[] bArr2 = this.bkh;
            this.bkI = new byte[bArr2.length];
            this.bkJ = new byte[bArr2.length];
        }
        if (this.bkL.blp == 0) {
            Arrays.fill(this.bkI, (byte) 0);
        }
        byte[] bArr3 = this.bkI;
        this.bkI = this.bkJ;
        this.bkJ = bArr3;
        byte b3 = this.bkh[0];
        if (!FilterType.isValidStandard(b3)) {
            throw new PngjException("Filter type " + ((int) b3) + " invalid");
        }
        FilterType byVal = FilterType.getByVal(b3);
        int[] iArr = this.bkM;
        iArr[b3] = iArr[b3] + 1;
        this.bkI[0] = this.bkh[0];
        int i3 = AnonymousClass1.bkN[byVal.ordinal()];
        if (i3 == 1) {
            fq(i2);
            return;
        }
        if (i3 == 2) {
            fs(i2);
            return;
        }
        if (i3 == 3) {
            ft(i2);
            return;
        }
        if (i3 == 4) {
            fp(i2);
        } else {
            if (i3 == 5) {
                fr(i2);
                return;
            }
            throw new PngjException("Filter type " + ((int) b3) + " not implemented");
        }
    }

    private void fp(int i2) {
        int i3 = 1;
        int i4 = 1 - this.bkK.bkV;
        while (i3 <= i2) {
            this.bkI[i3] = (byte) (this.bkh[i3] + (((i4 > 0 ? this.bkI[i4] & 255 : 0) + (this.bkJ[i3] & 255)) / 2));
            i3++;
            i4++;
        }
    }

    private void fq(int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            this.bkI[i3] = this.bkh[i3];
        }
    }

    private void fr(int i2) {
        int i3 = 1;
        int i4 = 1 - this.bkK.bkV;
        while (i3 <= i2) {
            int i5 = 0;
            int i6 = i4 > 0 ? this.bkI[i4] & 255 : 0;
            if (i4 > 0) {
                i5 = this.bkJ[i4] & 255;
            }
            this.bkI[i3] = (byte) (this.bkh[i3] + n.d(i6, this.bkJ[i3] & 255, i5));
            i3++;
            i4++;
        }
    }

    private void fs(int i2) {
        int i3;
        int i4 = 1;
        while (true) {
            i3 = this.bkK.bkV;
            if (i4 > i3) {
                break;
            }
            this.bkI[i4] = this.bkh[i4];
            i4++;
        }
        int i5 = i3 + 1;
        int i6 = 1;
        while (i5 <= i2) {
            byte[] bArr = this.bkI;
            bArr[i5] = (byte) (this.bkh[i5] + bArr[i6]);
            i5++;
            i6++;
        }
    }

    private void ft(int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            this.bkI[i3] = (byte) (this.bkh[i3] + this.bkJ[i3]);
        }
    }

    @Override // com.kwad.sdk.pngencrypt.DeflatedChunksSet
    public final void SR() {
        super.SR();
        this.bkL.update(ST());
        Tc();
        p pVar = this.bkL;
        pVar.h(this.bkI, pVar.bls + 1);
    }

    @Override // com.kwad.sdk.pngencrypt.DeflatedChunksSet
    public final int SS() {
        return Td();
    }

    @Override // com.kwad.sdk.pngencrypt.DeflatedChunksSet
    public final void close() {
        super.close();
        this.bkI = null;
        this.bkJ = null;
    }

    private j(String str, boolean z2, k kVar, e eVar, Inflater inflater, byte[] bArr) {
        super(str, z2, (eVar != null ? eVar.Tb() : kVar.bkW) + 1, kVar.bkW + 1, null, null);
        this.bkM = new int[5];
        this.bkK = kVar;
        this.bjO = eVar;
        this.bkL = new p(kVar, eVar);
    }
}
