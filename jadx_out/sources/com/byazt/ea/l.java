package com.byazt.ea;

import android.util.Pair;
import com.byazt.lc.a;
import com.kuaishou.weapon.p0.t;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, 1626, 34})
/* loaded from: classes2.dex */
public class l {
    public static String hp = "";

    public static String[] hp(File file) {
        String str;
        String strHp = "";
        try {
            ByteBuffer byteBufferL = l(file);
            if (hp(byteBufferL)) {
                strHp = a.hp(byteBufferL.array());
                str = "";
            } else {
                str = "without v2 & v3 signature.";
            }
        } catch (Exception unused) {
            str = strHp;
        }
        return new String[]{strHp, hp, str};
    }

    private static ByteBuffer l(File file) throws Exception {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file, t.f31269k);
        } catch (Throwable th) {
            th = th;
        }
        try {
            Pair<ByteBuffer, Long> pairHp = hp(randomAccessFile);
            ByteBuffer byteBuffer = (ByteBuffer) pairHp.first;
            long jLongValue = ((Long) pairHp.second).longValue();
            if (jx.hp(randomAccessFile, jLongValue)) {
                throw new Exception("ZIP64 APK not supported");
            }
            ByteBuffer byteBuffer2 = (ByteBuffer) hp(randomAccessFile, hp(byteBuffer, jLongValue)).first;
            randomAccessFile.close();
            return byteBuffer2;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                randomAccessFile2.close();
            }
            throw th;
        }
    }

    private static Pair<ByteBuffer, Long> hp(RandomAccessFile randomAccessFile) throws Exception {
        Pair<ByteBuffer, Long> pairHp = jx.hp(randomAccessFile);
        if (pairHp != null) {
            return pairHp;
        }
        throw new Exception("Not an APK file: ZIP End of Central Directory record not found");
    }

    private static long hp(ByteBuffer byteBuffer, long j2) throws Exception {
        long jHp = jx.hp(byteBuffer);
        if (jHp <= j2) {
            if (jx.l(byteBuffer) + jHp == j2) {
                return jHp;
            }
            throw new Exception("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        throw new Exception("ZIP Central Directory offset out of range: " + jHp + ". ZIP End of Central Directory offset: " + j2);
    }

    private static void l(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static Pair<ByteBuffer, Long> hp(RandomAccessFile randomAccessFile, long j2) throws Exception {
        if (j2 >= 32) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            randomAccessFile.seek(j2 - byteBufferAllocate.capacity());
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            if (byteBufferAllocate.getLong(8) == 2334950737559900225L && byteBufferAllocate.getLong(16) == 3617552046287187010L) {
                long j3 = byteBufferAllocate.getLong(0);
                if (j3 < byteBufferAllocate.capacity() || j3 > 2147483639) {
                    throw new Exception("APK Signing Block size out of range: ".concat(String.valueOf(j3)));
                }
                int i2 = (int) (8 + j3);
                long j4 = j2 - i2;
                if (j4 >= 0) {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i2);
                    byteBufferAllocate2.order(byteOrder);
                    randomAccessFile.seek(j4);
                    randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
                    long j5 = byteBufferAllocate2.getLong(0);
                    if (j5 == j3) {
                        return Pair.create(byteBufferAllocate2, Long.valueOf(j4));
                    }
                    throw new Exception("APK Signing Block sizes in header and footer do not match: " + j5 + " vs " + j3);
                }
                throw new Exception("APK Signing Block offset out of range: ".concat(String.valueOf(j4)));
            }
            throw new Exception("No APK Signing Block before ZIP Central Directory");
        }
        throw new Exception("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(j2)));
    }

    private static boolean hp(ByteBuffer byteBuffer) throws Exception {
        l(byteBuffer);
        ByteBuffer byteBufferHp = hp(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i2 = 0;
        while (byteBufferHp.hasRemaining()) {
            i2++;
            if (byteBufferHp.remaining() >= 8) {
                long j2 = byteBufferHp.getLong();
                if (j2 < 4 || j2 > 2147483647L) {
                    throw new Exception("APK Signing Block entry #" + i2 + " size out of range: " + j2);
                }
                int i3 = (int) j2;
                int iPosition = byteBufferHp.position() + i3;
                if (i3 > byteBufferHp.remaining()) {
                    throw new Exception("APK Signing Block entry #" + i2 + " size out of range: " + i3 + ", available: " + byteBufferHp.remaining());
                }
                int i4 = byteBufferHp.getInt();
                if (i4 == -262969152) {
                    hp = "V3";
                    return true;
                }
                if (i4 == 1896449818) {
                    hp = "V2";
                    return true;
                }
                byteBufferHp.position(iPosition);
            } else {
                throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i2)));
            }
        }
        return false;
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
