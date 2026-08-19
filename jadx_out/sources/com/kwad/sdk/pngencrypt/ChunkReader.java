package com.kwad.sdk.pngencrypt;

/* loaded from: classes4.dex */
public abstract class ChunkReader implements f {
    public final ChunkReaderMode bjt;
    private final com.kwad.sdk.pngencrypt.chunk.d bju;
    private boolean bjx;
    protected int bjv = 0;
    private int bjw = 0;
    protected ErrorBehaviour bjy = ErrorBehaviour.STRICT;

    public enum ChunkReaderMode {
        BUFFER,
        PROCESS,
        SKIP
    }

    public ChunkReader(int i2, String str, long j2, ChunkReaderMode chunkReaderMode) {
        if (chunkReaderMode == null || str.length() != 4 || i2 < 0) {
            new PngjException("Bad chunk paramenters: " + chunkReaderMode);
        }
        this.bjt = chunkReaderMode;
        com.kwad.sdk.pngencrypt.chunk.d dVar = new com.kwad.sdk.pngencrypt.chunk.d(i2, str, chunkReaderMode == ChunkReaderMode.BUFFER);
        this.bju = dVar;
        dVar.aZ(j2);
        this.bjx = chunkReaderMode != ChunkReaderMode.SKIP;
    }

    public final com.kwad.sdk.pngencrypt.chunk.d SD() {
        return this.bju;
    }

    public abstract void SE();

    @Override // com.kwad.sdk.pngencrypt.f
    public final int a(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        if (i3 == 0) {
            return 0;
        }
        if (i3 < 0) {
            new PngjException("negative length??");
        }
        if (this.bjv == 0 && this.bjw == 0 && this.bjx) {
            com.kwad.sdk.pngencrypt.chunk.d dVar = this.bju;
            dVar.e(dVar.blB, 0, 4);
        }
        com.kwad.sdk.pngencrypt.chunk.d dVar2 = this.bju;
        int i5 = dVar2.len - this.bjv;
        if (i5 > i3) {
            i5 = i3;
        }
        if (i5 > 0 || this.bjw == 0) {
            if (this.bjx && this.bjt != ChunkReaderMode.BUFFER && i5 > 0) {
                dVar2.e(bArr, i2, i5);
            }
            ChunkReaderMode chunkReaderMode = this.bjt;
            if (chunkReaderMode == ChunkReaderMode.BUFFER) {
                byte[] bArr2 = this.bju.data;
                if (bArr2 != bArr && i5 > 0) {
                    System.arraycopy(bArr, i2, bArr2, this.bjv, i5);
                }
            } else if (chunkReaderMode == ChunkReaderMode.PROCESS) {
                a(this.bjv, bArr, i2, i5);
            }
            this.bjv += i5;
            i2 += i5;
            i3 -= i5;
        }
        int i6 = this.bjv;
        com.kwad.sdk.pngencrypt.chunk.d dVar3 = this.bju;
        if (i6 == dVar3.len) {
            int i7 = this.bjw;
            int i8 = 4 - i7;
            if (i8 <= i3) {
                i3 = i8;
            }
            if (i3 > 0) {
                byte[] bArr3 = dVar3.blD;
                if (bArr != bArr3) {
                    System.arraycopy(bArr, i2, bArr3, i7, i3);
                }
                int i9 = this.bjw + i3;
                this.bjw = i9;
                if (i9 == 4) {
                    if (this.bjx) {
                        if (this.bjt == ChunkReaderMode.BUFFER) {
                            com.kwad.sdk.pngencrypt.chunk.d dVar4 = this.bju;
                            dVar4.e(dVar4.data, 0, dVar4.len);
                        }
                        this.bju.ck(this.bjy == ErrorBehaviour.STRICT);
                    }
                    SE();
                }
            }
            i4 = i3;
        }
        if (i5 > 0 || i4 > 0) {
            return i5 + i4;
        }
        return -1;
    }

    public abstract void a(int i2, byte[] bArr, int i3, int i4);

    public final void ci(boolean z2) {
        this.bjx = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ChunkReader chunkReader = (ChunkReader) obj;
        com.kwad.sdk.pngencrypt.chunk.d dVar = this.bju;
        if (dVar == null) {
            if (chunkReader.bju != null) {
                return false;
            }
        } else if (!dVar.equals(chunkReader.bju)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        com.kwad.sdk.pngencrypt.chunk.d dVar = this.bju;
        return (dVar == null ? 0 : dVar.hashCode()) + 31;
    }

    @Override // com.kwad.sdk.pngencrypt.f
    public final boolean isDone() {
        return this.bjw == 4;
    }

    public String toString() {
        return this.bju.toString();
    }
}
