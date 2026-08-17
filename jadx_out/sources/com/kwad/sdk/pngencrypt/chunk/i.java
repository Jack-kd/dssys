package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;
import java.io.ByteArrayInputStream;

/* loaded from: classes4.dex */
public final class i extends p {
    private int bkv;
    private int bkw;
    private int blQ;
    private int blR;
    private int blS;
    private int blT;
    private int blU;

    public i(com.kwad.sdk.pngencrypt.k kVar) {
        super("IHDR", kVar);
        if (kVar != null) {
            Tw();
        }
    }

    private int SY() {
        return this.bkv;
    }

    private int SZ() {
        return this.bkw;
    }

    private int Ts() {
        return this.blQ;
    }

    private int Tt() {
        return this.blR;
    }

    private int Tu() {
        return this.blU;
    }

    private void Tw() {
        fv(this.bkK.bkw);
        fw(this.bkK.bkv);
        fx(this.bkK.bkO);
        com.kwad.sdk.pngencrypt.k kVar = this.bkK;
        int i2 = kVar.bkQ ? 4 : 0;
        if (kVar.bkS) {
            i2++;
        }
        if (!kVar.bkR) {
            i2 += 2;
        }
        fy(i2);
        fz(0);
        fA(0);
        fB(0);
    }

    private void Ty() {
        if (this.bkw <= 0 || this.bkv <= 0 || this.blS != 0 || this.blT != 0) {
            throw new PngjException("bad IHDR: col/row/compmethod/filmethod invalid");
        }
        int i2 = this.blQ;
        if (i2 != 1 && i2 != 2 && i2 != 4 && i2 != 8 && i2 != 16) {
            throw new PngjException("bad IHDR: bitdepth invalid");
        }
        int i3 = this.blU;
        if (i3 < 0 || i3 > 1) {
            throw new PngjException("bad IHDR: interlace invalid");
        }
        int i4 = this.blR;
        if (i4 != 0) {
            if (i4 != 6 && i4 != 2) {
                if (i4 == 3) {
                    if (i2 == 16) {
                        throw new PngjException("bad IHDR: bitdepth invalid");
                    }
                    return;
                } else if (i4 != 4) {
                    throw new PngjException("bad IHDR: invalid colormodel");
                }
            }
            if (i2 != 8 && i2 != 16) {
                throw new PngjException("bad IHDR: bitdepth invalid");
            }
        }
    }

    private void fA(int i2) {
        this.blT = 0;
    }

    private void fB(int i2) {
        this.blU = 0;
    }

    private void fv(int i2) {
        this.bkw = i2;
    }

    private void fw(int i2) {
        this.bkv = i2;
    }

    private void fx(int i2) {
        this.blQ = i2;
    }

    private void fy(int i2) {
        this.blR = i2;
    }

    private void fz(int i2) {
        this.blS = 0;
    }

    public final boolean Tv() {
        return Tu() == 1;
    }

    public final com.kwad.sdk.pngencrypt.k Tx() {
        Ty();
        return new com.kwad.sdk.pngencrypt.k(SZ(), SY(), Ts(), (Tt() & 4) != 0, Tt() == 0 || Tt() == 4, (Tt() & 1) != 0);
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        if (dVar.len != 13) {
            throw new PngjException("Bad IDHR len " + dVar.len);
        }
        ByteArrayInputStream byteArrayInputStreamTo = dVar.To();
        this.bkw = com.kwad.sdk.pngencrypt.n.f(byteArrayInputStreamTo);
        this.bkv = com.kwad.sdk.pngencrypt.n.f(byteArrayInputStreamTo);
        this.blQ = com.kwad.sdk.pngencrypt.n.e(byteArrayInputStreamTo);
        this.blR = com.kwad.sdk.pngencrypt.n.e(byteArrayInputStreamTo);
        this.blS = com.kwad.sdk.pngencrypt.n.e(byteArrayInputStreamTo);
        this.blT = com.kwad.sdk.pngencrypt.n.e(byteArrayInputStreamTo);
        this.blU = com.kwad.sdk.pngencrypt.n.e(byteArrayInputStreamTo);
    }
}
