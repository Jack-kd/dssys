package com.byazt.dk;

import androidx.core.view.PointerIconCompat;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ALL_SCROLL, 30})
/* loaded from: classes2.dex */
public class jx implements a {
    public final ByteBuffer hp;

    public jx(ByteBuffer byteBuffer) {
        this.hp = byteBuffer;
        byteBuffer.position(0);
    }

    @Override // com.byazt.dk.a
    public byte c_() throws IOException {
        return this.hp.get();
    }

    @Override // com.byazt.dk.a
    public void d_() throws IOException {
        this.hp.position(0);
    }

    @Override // com.byazt.dk.a
    public long hp(long j2) throws IOException {
        this.hp.position((int) (r0.position() + j2));
        return j2;
    }

    @Override // com.byazt.dk.a
    public int j() throws IOException {
        return this.hp.limit() - this.hp.position();
    }

    @Override // com.byazt.dk.a
    public int jx() {
        return this.hp.position();
    }

    @Override // com.byazt.dk.a
    public InputStream w() throws IOException {
        return new ByteArrayInputStream(this.hp.array());
    }

    @Override // com.byazt.dk.a
    public int hp(byte[] bArr, int i2, int i3) throws IOException {
        this.hp.get(bArr, i2, i3);
        return i3;
    }
}
