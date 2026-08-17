package com.kwad.sdk.pngencrypt;

import com.kwad.sdk.pngencrypt.ChunkReader;
import java.util.zip.DataFormatException;

/* loaded from: classes4.dex */
public abstract class d extends ChunkReader {
    protected final DeflatedChunksSet bkc;
    protected boolean bkd;
    protected boolean bke;
    protected byte[] bkf;
    protected int bkg;

    public d(int i2, String str, long j2, DeflatedChunksSet deflatedChunksSet) {
        super(i2, str, j2, ChunkReader.ChunkReaderMode.PROCESS);
        this.bkd = false;
        this.bke = false;
        this.bkg = -1;
        this.bkc = deflatedChunksSet;
        deflatedChunksSet.a(this);
    }

    @Override // com.kwad.sdk.pngencrypt.ChunkReader
    public void SE() {
        int iG;
        if (!this.bke || this.bkg < 0 || (iG = n.g(this.bkf, 0)) == this.bkg) {
            return;
        }
        new PngjException("bad chunk sequence for fDAT chunk " + iG + " expected " + this.bkg);
    }

    @Override // com.kwad.sdk.pngencrypt.ChunkReader
    public final void a(int i2, byte[] bArr, int i3, int i4) throws DataFormatException {
        if (this.bke && i2 < 4) {
            while (i2 < 4 && i4 > 0) {
                this.bkf[i2] = bArr[i3];
                i2++;
                i3++;
                i4--;
            }
        }
        if (i4 > 0) {
            this.bkc.b(bArr, i3, i4);
            if (this.bkd) {
                System.arraycopy(bArr, i3, SD().data, this.bjv, i4);
            }
        }
    }

    public final void fj(int i2) {
        this.bkg = i2;
    }
}
