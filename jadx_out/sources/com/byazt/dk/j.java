package com.byazt.dk;

import androidx.core.view.PointerIconCompat;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ALL_SCROLL, 38})
/* loaded from: classes2.dex */
public class j implements eb {
    public ByteBuffer hp;

    public j() {
        jx(10240);
    }

    public void hp(byte b3) {
        this.hp.put(b3);
    }

    public void j(int i2) {
        this.hp.position(i2 + hp());
    }

    public void jx(int i2) {
        ByteBuffer byteBuffer = this.hp;
        if (byteBuffer == null || i2 > byteBuffer.capacity()) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
            this.hp = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }
        this.hp.clear();
    }

    public byte[] l() {
        return this.hp.array();
    }

    public void hp(byte[] bArr) {
        this.hp.put(bArr);
    }

    public int hp() {
        return this.hp.position();
    }
}
