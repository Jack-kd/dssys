package com.byazt.gc;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, 524, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes2.dex */
public abstract class ec {
    public static Pair<ByteBuffer, Long> hp(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> pairHp = hp(randomAccessFile, 0);
        return pairHp != null ? pairHp : hp(randomAccessFile, 65535);
    }

    private static void j(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int jx(ByteBuffer byteBuffer) {
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

    public static long l(ByteBuffer byteBuffer) {
        j(byteBuffer);
        return l(byteBuffer, byteBuffer.position() + 12);
    }

    private static Pair<ByteBuffer, Long> hp(RandomAccessFile randomAccessFile, int i2) throws IOException {
        if (i2 >= 0 && i2 <= 65535) {
            long length = randomAccessFile.length();
            if (length < 22) {
                return null;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i2, length - 22)) + 22);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            long jCapacity = length - byteBufferAllocate.capacity();
            randomAccessFile.seek(jCapacity);
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            int iJx = jx(byteBufferAllocate);
            if (iJx == -1) {
                return null;
            }
            byteBufferAllocate.position(iJx);
            ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
            byteBufferSlice.order(byteOrder);
            return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + iJx));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i2)));
    }

    private static long l(ByteBuffer byteBuffer, int i2) {
        return byteBuffer.getInt(i2) & KeyboardMap.kValueMask;
    }

    public static final boolean hp(RandomAccessFile randomAccessFile, long j2) throws IOException {
        long j3 = j2 - 20;
        if (j3 < 0) {
            return false;
        }
        randomAccessFile.seek(j3);
        return randomAccessFile.readInt() == 1347094023;
    }

    public static long hp(ByteBuffer byteBuffer) {
        j(byteBuffer);
        return l(byteBuffer, byteBuffer.position() + 16);
    }

    public static void hp(ByteBuffer byteBuffer, long j2) {
        j(byteBuffer);
        hp(byteBuffer, byteBuffer.position() + 16, j2);
    }

    private static int hp(ByteBuffer byteBuffer, int i2) {
        return byteBuffer.getShort(i2) & 65535;
    }

    private static void hp(ByteBuffer byteBuffer, int i2, long j2) {
        if (j2 >= 0 && j2 <= KeyboardMap.kValueMask) {
            byteBuffer.putInt(byteBuffer.position() + i2, (int) j2);
            return;
        }
        throw new IllegalArgumentException("uint32 value of out range: ".concat(String.valueOf(j2)));
    }
}
