package com.kwad.sdk.pngencrypt;

import com.kwad.sdk.pngencrypt.ChunkReader;
import java.io.Closeable;
import java.util.Arrays;

/* loaded from: classes4.dex */
public abstract class b implements f, Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final int bjA;
    private byte[] bjB;
    private int bjC;
    protected boolean bjD;
    protected boolean bjE;
    private int bjF;
    private long bjG;
    private DeflatedChunksSet bjH;
    private ChunkReader bjI;
    private long bjJ;
    private ErrorBehaviour bjK;
    private final byte[] bjz;
    protected boolean closed;

    public b() {
        this(n.Tg());
    }

    private static String SI() {
        return "IHDR";
    }

    private static String SJ() {
        return "IEND";
    }

    private static void l(byte[] bArr) {
        if (Arrays.equals(bArr, n.Tg())) {
            return;
        }
        new PngjException("Bad signature:" + Arrays.toString(bArr));
    }

    public boolean D(int i2, String str) {
        return false;
    }

    public boolean SF() {
        return true;
    }

    public final long SG() {
        return this.bjG;
    }

    public final DeflatedChunksSet SH() {
        return this.bjH;
    }

    @Override // com.kwad.sdk.pngencrypt.f
    public int a(byte[] bArr, int i2, int i3) {
        if (this.closed) {
            return -1;
        }
        if (i3 == 0) {
            return 0;
        }
        if (i3 < 0) {
            new PngjException("This should not happen. Bad length: " + i3);
        }
        if (!this.bjD) {
            int i4 = this.bjA;
            int i5 = this.bjC;
            int i6 = i4 - i5;
            if (i6 <= i3) {
                i3 = i6;
            }
            System.arraycopy(bArr, i2, this.bjB, i5, i3);
            int i7 = this.bjC + i3;
            this.bjC = i7;
            if (i7 == this.bjA) {
                l(this.bjB);
                this.bjC = 0;
                this.bjD = true;
            }
            this.bjG += i3;
            return i3;
        }
        ChunkReader chunkReader = this.bjI;
        if (chunkReader != null && !chunkReader.isDone()) {
            int iA = this.bjI.a(bArr, i2, i3);
            if (iA < 0) {
                return -1;
            }
            this.bjG += iA;
            return iA;
        }
        int i8 = this.bjC;
        int i9 = 8 - i8;
        if (i9 <= i3) {
            i3 = i9;
        }
        System.arraycopy(bArr, i2, this.bjB, i8, i3);
        int i10 = this.bjC + i3;
        this.bjC = i10;
        this.bjG += i3;
        if (i10 == 8) {
            this.bjF++;
            c(n.g(this.bjB, 0), com.kwad.sdk.pngencrypt.chunk.b.i(this.bjB, 4), this.bjG - 8);
            this.bjC = 0;
        }
        return i3;
    }

    public void c(int i2, String str, long j2) {
        b bVar;
        if (str.length() != 4 || !com.kwad.sdk.pngencrypt.chunk.b.blA.matcher(str).matches()) {
            new PngjException("Bad chunk id: " + str);
        }
        if (i2 < 0) {
            new PngjException("Bad chunk len: " + i2);
        }
        if (str.equals("IDAT")) {
            this.bjJ += i2;
        }
        boolean zSF = SF();
        boolean zD = D(i2, str);
        boolean zHl = hl(str);
        DeflatedChunksSet deflatedChunksSet = this.bjH;
        boolean zHo = (deflatedChunksSet == null || deflatedChunksSet.isClosed()) ? false : this.bjH.ho(str);
        if (!zHl || zD) {
            bVar = this;
            bVar.bjI = bVar.a(str, i2, j2, zD);
        } else {
            if (!zHo) {
                DeflatedChunksSet deflatedChunksSet2 = this.bjH;
                if (deflatedChunksSet2 != null && !deflatedChunksSet2.isDone()) {
                    new PngjException("new IDAT-like chunk when previous was not done");
                }
                this.bjH = hk(str);
            }
            bVar = this;
            bVar.bjI = new d(i2, str, zSF, j2, this.bjH) { // from class: com.kwad.sdk.pngencrypt.b.1
                @Override // com.kwad.sdk.pngencrypt.d, com.kwad.sdk.pngencrypt.ChunkReader
                public final void SE() {
                    super.SE();
                    b.this.a(this);
                }
            };
        }
        ChunkReader chunkReader = bVar.bjI;
        if (chunkReader == null || zSF) {
            return;
        }
        chunkReader.ci(false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        DeflatedChunksSet deflatedChunksSet = this.bjH;
        if (deflatedChunksSet != null) {
            deflatedChunksSet.close();
        }
        this.closed = true;
    }

    public abstract DeflatedChunksSet hk(String str);

    public boolean hl(String str) {
        return false;
    }

    @Override // com.kwad.sdk.pngencrypt.f
    public final boolean isDone() {
        return this.bjE;
    }

    private b(byte[] bArr) {
        this.bjB = new byte[8];
        this.bjC = 0;
        this.bjD = false;
        this.bjE = false;
        this.closed = false;
        this.bjF = 0;
        this.bjG = 0L;
        this.bjK = ErrorBehaviour.STRICT;
        this.bjz = bArr;
        int length = bArr == null ? 0 : bArr.length;
        this.bjA = length;
        this.bjD = length <= 0;
    }

    private ChunkReader a(String str, int i2, long j2, boolean z2) {
        return new ChunkReader(i2, str, j2, z2 ? ChunkReader.ChunkReaderMode.SKIP : ChunkReader.ChunkReaderMode.BUFFER) { // from class: com.kwad.sdk.pngencrypt.b.2
            @Override // com.kwad.sdk.pngencrypt.ChunkReader
            public final void SE() {
                b.this.a(this);
            }

            @Override // com.kwad.sdk.pngencrypt.ChunkReader
            public final void a(int i3, byte[] bArr, int i4, int i5) {
                new PngjException("should never happen");
            }
        };
    }

    public void a(ChunkReader chunkReader) {
        if (this.bjF == 1 && !SI().equals(chunkReader.SD().id)) {
            String str = "Bad first chunk: " + chunkReader.SD().id + " expected: " + SI();
            if (this.bjK.f31478c < ErrorBehaviour.SUPER_LENIENT.f31478c) {
                new PngjException(str);
            }
        }
        SJ();
        if (chunkReader.SD().id.equals(SJ())) {
            this.bjE = true;
            close();
        }
    }
}
