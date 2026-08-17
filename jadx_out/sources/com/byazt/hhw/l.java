package com.byazt.hhw;

import com.byazt.xk.l;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, 2140, 34})
/* loaded from: classes2.dex */
public class l {
    public static jx hp(com.byazt.wd.l lVar, com.byazt.obl.l lVar2, int i2) throws Exception {
        try {
            l.hp hpVarHp = com.byazt.xk.l.hp(lVar, lVar2);
            long jHp = hpVarHp.hp();
            com.byazt.wd.l lVarL = hpVarHp.l();
            ByteBuffer byteBufferHp = lVarL.hp(0L, (int) lVarL.hp());
            byteBufferHp.order(ByteOrder.LITTLE_ENDIAN);
            return new jx(hp(byteBufferHp, i2), jHp, lVar2.hp(), lVar2.j(), lVar2.w());
        } catch (Exception e2) {
            throw new Exception(e2.getMessage(), e2);
        }
    }

    public static byte[] jx(ByteBuffer byteBuffer) throws Exception {
        int i2 = byteBuffer.getInt();
        if (i2 < 0) {
            throw new Exception("Negative length");
        }
        if (i2 <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i2];
            byteBuffer.get(bArr);
            return bArr;
        }
        throw new Exception("Underflow while reading length-prefixed value. Length: " + i2 + ", available: " + byteBuffer.remaining());
    }

    private static ByteBuffer l(ByteBuffer byteBuffer, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("size: ".concat(String.valueOf(i2)));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i3 = i2 + iPosition;
        if (i3 < iPosition || i3 > iLimit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i3);
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            byteBuffer.position(i3);
            return byteBufferSlice;
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    public static ByteBuffer l(ByteBuffer byteBuffer) throws Exception {
        if (byteBuffer.remaining() >= 4) {
            int i2 = byteBuffer.getInt();
            if (i2 >= 0) {
                if (i2 <= byteBuffer.remaining()) {
                    return l(byteBuffer, i2);
                }
                throw new Exception("Length-prefixed field longer than remaining buffer. Field length: " + i2 + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new Exception("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static ByteBuffer hp(ByteBuffer byteBuffer, int i2) throws Exception {
        hp(byteBuffer);
        ByteBuffer byteBufferHp = hp(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i3 = 0;
        while (byteBufferHp.hasRemaining()) {
            i3++;
            if (byteBufferHp.remaining() >= 8) {
                long j2 = byteBufferHp.getLong();
                if (j2 < 4 || j2 > 2147483647L) {
                    throw new Exception("APK Signing Block entry #" + i3 + " size out of range: " + j2);
                }
                int i4 = (int) j2;
                int iPosition = byteBufferHp.position() + i4;
                if (i4 > byteBufferHp.remaining()) {
                    throw new Exception("APK Signing Block entry #" + i3 + " size out of range: " + i4 + ", available: " + byteBufferHp.remaining());
                }
                if (byteBufferHp.getInt() == i2) {
                    return l(byteBufferHp, i4 - 4);
                }
                byteBufferHp.position(iPosition);
            } else {
                throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i3)));
            }
        }
        throw new Exception("No APK Signature Scheme block in APK Signing Block with ID: ".concat(String.valueOf(i2)));
    }

    public static void hp(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static ByteBuffer hp(ByteBuffer byteBuffer, int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("start: ".concat(String.valueOf(i2)));
        }
        if (i3 >= i2) {
            int iCapacity = byteBuffer.capacity();
            if (i3 <= byteBuffer.capacity()) {
                int iLimit = byteBuffer.limit();
                int iPosition = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i3);
                    byteBuffer.position(i2);
                    ByteBuffer byteBufferSlice = byteBuffer.slice();
                    byteBufferSlice.order(byteBuffer.order());
                    return byteBufferSlice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(iLimit);
                    byteBuffer.position(iPosition);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i3 + " > " + iCapacity);
        }
        throw new IllegalArgumentException("end < start: " + i3 + " < " + i2);
    }
}
