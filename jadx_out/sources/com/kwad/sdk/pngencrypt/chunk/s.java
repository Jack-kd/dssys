package com.kwad.sdk.pngencrypt.chunk;

/* loaded from: classes4.dex */
public final class s extends p {
    private int bmk;
    private int bml;
    private int bmm;
    private int bmn;
    private int[] bmo;

    public s(com.kwad.sdk.pngencrypt.k kVar) {
        super("tRNS", kVar);
        this.bmo = new int[0];
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        com.kwad.sdk.pngencrypt.k kVar = this.bkK;
        if (kVar.bkR) {
            this.bmk = com.kwad.sdk.pngencrypt.n.f(dVar.data, 0);
            return;
        }
        if (!kVar.bkS) {
            this.bml = com.kwad.sdk.pngencrypt.n.f(dVar.data, 0);
            this.bmm = com.kwad.sdk.pngencrypt.n.f(dVar.data, 2);
            this.bmn = com.kwad.sdk.pngencrypt.n.f(dVar.data, 4);
        } else {
            int length = dVar.data.length;
            this.bmo = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                this.bmo[i2] = dVar.data[i2] & 255;
            }
        }
    }
}
