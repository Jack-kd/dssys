package com.byazt.cys;

import android.util.Pair;
import com.byazt.wd.l;
import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, 1236, 28})
/* loaded from: classes2.dex */
public abstract class hp {
    public static long hp(ByteBuffer byteBuffer) {
        j(byteBuffer);
        return l(byteBuffer, byteBuffer.position() + 16);
    }

    public static void j(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static int jx(ByteBuffer byteBuffer) {
        j(byteBuffer);
        return hp(byteBuffer, byteBuffer.position() + 10);
    }

    public static long l(ByteBuffer byteBuffer) {
        j(byteBuffer);
        return l(byteBuffer, byteBuffer.position() + 12);
    }

    private static int w(ByteBuffer byteBuffer) {
        j(byteBuffer);
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i2 = iCapacity - 22;
        int iMin = Math.min(i2, 65535);
        for (int i3 = 0; i3 <= iMin; i3++) {
            int i4 = i2 - i3;
            if (byteBuffer.getInt(i4) == 101010256 && hp(byteBuffer, i4 + 20) == i3) {
                return i4;
            }
        }
        return -1;
    }

    public static Pair<ByteBuffer, Long> hp(l lVar) throws IOException {
        if (lVar.hp() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> pairHp = hp(lVar, 0);
        return pairHp != null ? pairHp : hp(lVar, 65535);
    }

    public static long l(ByteBuffer byteBuffer, int i2) {
        return byteBuffer.getInt(i2) & KeyboardMap.kValueMask;
    }

    private static Pair<ByteBuffer, Long> hp(l lVar, int i2) throws IOException {
        if (i2 >= 0 && i2 <= 65535) {
            long jHp = lVar.hp();
            if (jHp < 22) {
                return null;
            }
            int iMin = ((int) Math.min(i2, jHp - 22)) + 22;
            long j2 = jHp - iMin;
            ByteBuffer byteBufferHp = lVar.hp(j2, iMin);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferHp.order(byteOrder);
            int iW = w(byteBufferHp);
            if (iW == -1) {
                return null;
            }
            byteBufferHp.position(iW);
            ByteBuffer byteBufferSlice = byteBufferHp.slice();
            byteBufferSlice.order(byteOrder);
            return new Pair<>(byteBufferSlice, Long.valueOf(j2 + iW));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i2)));
    }

    public static int hp(ByteBuffer byteBuffer, int i2) {
        return byteBuffer.getShort(i2) & 65535;
    }
}
