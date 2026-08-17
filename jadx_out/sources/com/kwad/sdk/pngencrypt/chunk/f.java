package com.kwad.sdk.pngencrypt.chunk;

import java.util.List;

/* loaded from: classes4.dex */
public final class f extends e {
    private final List<PngChunk> blJ;

    @Override // com.kwad.sdk.pngencrypt.chunk.e
    public final String toString() {
        return "ChunkList: written: " + Tq().size() + " queue: " + this.blJ.size();
    }
}
