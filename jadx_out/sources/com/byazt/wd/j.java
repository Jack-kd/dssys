package com.byazt.wd;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

@com.byazt.kj.hp(hp = {0, 1, 2141, 38})
/* loaded from: classes3.dex */
public class j implements l {
    public final FileChannel hp;
    public final long jx;

    /* renamed from: l, reason: collision with root package name */
    public final long f26876l;

    public j(FileChannel fileChannel, long j2, long j3) {
        if (j2 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j3)));
        }
        if (j3 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j3)));
        }
        this.hp = fileChannel;
        this.f26876l = j2;
        this.jx = j3;
    }

    @Override // com.byazt.wd.l
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public j hp(long j2, long j3) {
        long jHp = hp();
        hp(j2, j3, jHp);
        return (j2 == 0 && j3 == jHp) ? this : new j(this.hp, this.f26876l + j2, j3);
    }

    @Override // com.byazt.wd.l
    public long hp() {
        long j2 = this.jx;
        if (j2 != -1) {
            return j2;
        }
        try {
            return this.hp.size();
        } catch (IOException unused) {
            return 0L;
        }
    }

    public void hp(long j2, int i2, ByteBuffer byteBuffer) throws IOException {
        int i3;
        hp(j2, i2, hp());
        if (i2 == 0) {
            return;
        }
        if (i2 <= byteBuffer.remaining()) {
            long j3 = this.f26876l + j2;
            int iLimit = byteBuffer.limit();
            try {
                byteBuffer.limit(byteBuffer.position() + i2);
                while (i2 > 0) {
                    synchronized (this.hp) {
                        this.hp.position(j3);
                        i3 = this.hp.read(byteBuffer);
                    }
                    j3 += i3;
                    i2 -= i3;
                }
                return;
            } finally {
                byteBuffer.limit(iLimit);
            }
        }
        throw new BufferOverflowException();
    }

    @Override // com.byazt.wd.l
    public ByteBuffer hp(long j2, int i2) throws IOException {
        if (i2 >= 0) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
            hp(j2, i2, byteBufferAllocate);
            byteBufferAllocate.flip();
            return byteBufferAllocate;
        }
        throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(i2)));
    }

    private static void hp(long j2, long j3, long j4) {
        if (j2 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j2)));
        }
        if (j3 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j3)));
        }
        if (j2 > j4) {
            throw new IndexOutOfBoundsException("offset (" + j2 + ") > source size (" + j4 + ")");
        }
        long j5 = j2 + j3;
        if (j5 < j2) {
            throw new IndexOutOfBoundsException("offset (" + j2 + ") + size (" + j3 + ") overflow");
        }
        if (j5 <= j4) {
            return;
        }
        throw new IndexOutOfBoundsException("offset (" + j2 + ") + size (" + j3 + ") > source size (" + j4 + ")");
    }
}
