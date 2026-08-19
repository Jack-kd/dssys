package com.byazt.gc;

import android.util.ArrayMap;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 524, 54})
/* loaded from: classes2.dex */
public final class a {
    public static final HashMap<String, SparseArray<zy>> hp = new HashMap<>();

    @com.byazt.kj.hp(hp = {0, 1, 524, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp implements e {
        public final MessageDigest[] hp;

        public hp(MessageDigest[] messageDigestArr) {
            this.hp = messageDigestArr;
        }

        @Override // com.byazt.gc.e
        public void hp(ByteBuffer byteBuffer) {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            for (MessageDigest messageDigest : this.hp) {
                byteBufferSlice.position(0);
                messageDigest.update(byteBufferSlice);
            }
        }
    }

    @RequiresApi(api = 21)
    public static void hp(Map<Integer, byte[]> map, RandomAccessFile randomAccessFile, zy zyVar) throws SecurityException {
        boolean z2 = true;
        if (map.isEmpty()) {
            throw new SecurityException("No digests provided");
        }
        ArrayMap arrayMap = new ArrayMap();
        if (map.containsKey(1)) {
            arrayMap.put(1, map.get(1));
        }
        if (map.containsKey(2)) {
            arrayMap.put(2, map.get(2));
        }
        boolean z3 = false;
        if (!arrayMap.isEmpty()) {
            try {
                hp(arrayMap, randomAccessFile.getFD(), zyVar);
                z2 = false;
            } catch (IOException e2) {
                throw new SecurityException("Cannot get FD", e2);
            }
        }
        if (map.containsKey(3)) {
            hp(map.get(3), randomAccessFile, zyVar);
        } else {
            z3 = z2;
        }
        if (z3) {
            throw new SecurityException("No known digest exists for integrity check");
        }
    }

    public static Pair<String, ? extends AlgorithmParameterSpec> j(int i2) {
        if (i2 != 513) {
            if (i2 == 514) {
                return Pair.create("SHA512withECDSA", null);
            }
            if (i2 != 769) {
                if (i2 != 1057) {
                    if (i2 != 1059) {
                        if (i2 != 1061) {
                            switch (i2) {
                                case 257:
                                    return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                                case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                                    return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                                case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                                    break;
                                case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                                    return Pair.create("SHA512withRSA", null);
                                default:
                                    throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2));
                            }
                        }
                    }
                }
                return Pair.create("SHA256withRSA", null);
            }
            return Pair.create("SHA256withDSA", null);
        }
        return Pair.create("SHA256withECDSA", null);
    }

    public static String jx(int i2) {
        if (i2 == 513 || i2 == 514) {
            return "EC";
        }
        if (i2 == 769) {
            return "DSA";
        }
        if (i2 == 1057) {
            return "RSA";
        }
        if (i2 == 1059) {
            return "EC";
        }
        if (i2 == 1061) {
            return "DSA";
        }
        switch (i2) {
            case 257:
            case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return "RSA";
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2));
        }
    }

    private static int l(int i2, int i3) {
        if (i2 == 1) {
            if (i3 == 1) {
                return 0;
            }
            if (i3 == 2 || i3 == 3) {
                return -1;
            }
            throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(i3)));
        }
        if (i2 == 2) {
            if (i3 != 1) {
                if (i3 == 2) {
                    return 0;
                }
                if (i3 != 3) {
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(i3)));
                }
            }
            return 1;
        }
        if (i2 != 3) {
            throw new IllegalArgumentException("Unknown digestAlgorithm1: ".concat(String.valueOf(i2)));
        }
        if (i3 == 1) {
            return 1;
        }
        if (i3 == 2) {
            return -1;
        }
        if (i3 == 3) {
            return 0;
        }
        throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(i3)));
    }

    private static int w(int i2) {
        if (i2 == 1) {
            return 32;
        }
        if (i2 == 2) {
            return 64;
        }
        if (i2 == 3) {
            return 32;
        }
        throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i2)));
    }

    private static void jx(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static String l(int i2) {
        if (i2 == 1) {
            return "SHA-256";
        }
        if (i2 == 2) {
            return "SHA-512";
        }
        if (i2 != 3) {
            throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i2)));
        }
        return "SHA-256";
    }

    public static byte[] l(ByteBuffer byteBuffer) throws IOException {
        int i2 = byteBuffer.getInt();
        if (i2 >= 0) {
            if (i2 <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i2];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new IOException("Underflow while reading length-prefixed value. Length: " + i2 + ", available: " + byteBuffer.remaining());
        }
        throw new IOException("Negative length");
    }

    private static void hp(Map<Integer, byte[]> map, FileDescriptor fileDescriptor, zy zyVar) throws SecurityException {
        jl jlVar = new jl(fileDescriptor, 0L, zyVar.f20387l);
        long j2 = zyVar.jx;
        jl jlVar2 = new jl(fileDescriptor, j2, zyVar.f20386j - j2);
        ByteBuffer byteBufferDuplicate = zyVar.f20388w.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        ec.hp(byteBufferDuplicate, zyVar.f20387l);
        s sVar = new s(byteBufferDuplicate);
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        try {
            byte[][] bArrHp = hp(iArr, new gu[]{jlVar, jlVar2, sVar});
            for (int i3 = 0; i3 < size; i3++) {
                int i4 = iArr[i3];
                if (!MessageDigest.isEqual(map.get(Integer.valueOf(i4)), bArrHp[i3])) {
                    throw new SecurityException(l(i4) + " digest of contents did not verify");
                }
            }
        } catch (DigestException e2) {
            throw new SecurityException("Failed to compute digest(s) of contents", e2);
        }
    }

    private static byte[][] hp(int[] iArr, gu[] guVarArr) throws DigestException {
        char c2;
        gu[] guVarArr2 = guVarArr;
        long jHp = 0;
        for (gu guVar : guVarArr2) {
            jHp += hp(guVar.hp());
        }
        if (jHp < 2097151) {
            int i2 = (int) jHp;
            byte[][] bArr = new byte[iArr.length][];
            int i3 = 0;
            while (true) {
                c2 = 5;
                if (i3 >= iArr.length) {
                    break;
                }
                byte[] bArr2 = new byte[(w(iArr[i3]) * i2) + 5];
                bArr2[0] = 90;
                hp(i2, bArr2, 1);
                bArr[i3] = bArr2;
                i3++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            int length = iArr.length;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                String strL = l(iArr[i4]);
                try {
                    messageDigestArr[i4] = MessageDigest.getInstance(strL);
                } catch (NoSuchAlgorithmException e2) {
                    throw new RuntimeException(strL + " digest not supported", e2);
                }
            }
            hp hpVar = new hp(messageDigestArr);
            int length2 = guVarArr2.length;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i5 < length2) {
                gu guVar2 = guVarArr2[i5];
                byte[][] bArr4 = bArr;
                long jHp2 = guVar2.hp();
                int i8 = i7;
                long j2 = 0;
                while (jHp2 > 0) {
                    char c3 = c2;
                    int iMin = (int) Math.min(jHp2, 1048576L);
                    hp(iMin, bArr3, 1);
                    for (int i9 = 0; i9 < length; i9++) {
                        messageDigestArr[i9].update(bArr3);
                    }
                    byte[] bArr5 = bArr3;
                    long j3 = j2;
                    try {
                        guVar2.hp(hpVar, j3, iMin);
                        int i10 = 0;
                        while (i10 < iArr.length) {
                            int i11 = iArr[i10];
                            byte[] bArr6 = bArr4[i10];
                            int iW = w(i11);
                            gu guVar3 = guVar2;
                            MessageDigest messageDigest = messageDigestArr[i10];
                            long j4 = jHp2;
                            int iDigest = messageDigest.digest(bArr6, (i8 * iW) + 5, iW);
                            if (iDigest != iW) {
                                throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + iDigest);
                            }
                            i10++;
                            guVar2 = guVar3;
                            jHp2 = j4;
                        }
                        long j5 = iMin;
                        j2 = j3 + j5;
                        jHp2 -= j5;
                        i8++;
                        c2 = c3;
                        bArr3 = bArr5;
                    } catch (IOException e3) {
                        throw new DigestException("Failed to digest chunk #" + i8 + " of section #" + i6, e3);
                    }
                }
                i6++;
                i5++;
                guVarArr2 = guVarArr;
                i7 = i8;
                bArr = bArr4;
            }
            byte[][] bArr7 = bArr;
            byte[][] bArr8 = new byte[iArr.length][];
            for (int i12 = 0; i12 < iArr.length; i12++) {
                int i13 = iArr[i12];
                byte[] bArr9 = bArr7[i12];
                String strL2 = l(i13);
                try {
                    bArr8[i12] = MessageDigest.getInstance(strL2).digest(bArr9);
                } catch (NoSuchAlgorithmException e4) {
                    throw new RuntimeException(strL2 + " digest not supported", e4);
                }
            }
            return bArr8;
        }
        throw new DigestException("Too many chunks: ".concat(String.valueOf(jHp)));
    }

    public static byte[] hp(byte[] bArr, long j2, zy zyVar) throws SecurityException {
        if (bArr.length == 40) {
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.position(32);
            if (byteBufferOrder.getLong() == j2 - (zyVar.jx - zyVar.f20387l)) {
                return Arrays.copyOfRange(bArr, 0, 32);
            }
            throw new SecurityException("APK content size did not verify");
        }
        throw new SecurityException("Verity digest size is wrong: " + bArr.length);
    }

    private static void hp(byte[] bArr, RandomAccessFile randomAccessFile, zy zyVar) throws SecurityException {
        try {
            if (Arrays.equals(hp(bArr, randomAccessFile.length(), zyVar), eb.hp(randomAccessFile, zyVar, new q() { // from class: com.byazt.gc.a.1
                @Override // com.byazt.gc.q
                public ByteBuffer hp(int i2) {
                    return ByteBuffer.allocate(i2);
                }
            }).f20372l)) {
            } else {
                throw new SecurityException("APK verity digest of contents did not verify");
            }
        } catch (IOException | DigestException | NoSuchAlgorithmException e2) {
            throw new SecurityException("Error during verification", e2);
        }
    }

    public static Pair<ByteBuffer, Long> hp(RandomAccessFile randomAccessFile) throws IOException, k {
        Pair<ByteBuffer, Long> pairHp = ec.hp(randomAccessFile);
        if (pairHp != null) {
            return pairHp;
        }
        throw new k("Not an APK file: ZIP End of Central Directory record not found");
    }

    public static long hp(ByteBuffer byteBuffer, long j2) throws k {
        long jHp = ec.hp(byteBuffer);
        if (jHp <= j2) {
            if (ec.l(byteBuffer) + jHp == j2) {
                return jHp;
            }
            throw new k("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        throw new k("ZIP Central Directory offset out of range: " + jHp + ". ZIP End of Central Directory offset: " + j2);
    }

    private static long hp(long j2) {
        return (j2 + 1048575) / 1048576;
    }

    public static int hp(int i2, int i3) {
        return l(hp(i2), hp(i3));
    }

    public static int hp(int i2) {
        if (i2 == 513) {
            return 1;
        }
        if (i2 == 514) {
            return 2;
        }
        if (i2 == 769) {
            return 1;
        }
        if (i2 == 1057 || i2 == 1059 || i2 == 1061) {
            return 3;
        }
        switch (i2) {
            case 257:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                return 1;
            case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2));
        }
    }

    public static ByteBuffer hp(ByteBuffer byteBuffer, int i2, int i3) {
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

    public static ByteBuffer hp(ByteBuffer byteBuffer, int i2) throws BufferUnderflowException {
        if (i2 >= 0) {
            int iLimit = byteBuffer.limit();
            int iPosition = byteBuffer.position();
            int i3 = i2 + iPosition;
            if (i3 >= iPosition && i3 <= iLimit) {
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
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: ".concat(String.valueOf(i2)));
    }

    public static ByteBuffer hp(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i2 = byteBuffer.getInt();
            if (i2 >= 0) {
                if (i2 <= byteBuffer.remaining()) {
                    return hp(byteBuffer, i2);
                }
                throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i2 + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static void hp(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) (i2 & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 3] = (byte) ((i2 >>> 24) & 255);
    }

    public static Pair<ByteBuffer, Long> hp(RandomAccessFile randomAccessFile, long j2) throws IOException, k {
        if (j2 >= 32) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            randomAccessFile.seek(j2 - byteBufferAllocate.capacity());
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            if (byteBufferAllocate.getLong(8) != 2334950737559900225L || byteBufferAllocate.getLong(16) != 3617552046287187010L) {
                return null;
            }
            long j3 = byteBufferAllocate.getLong(0);
            if (j3 < byteBufferAllocate.capacity() || j3 > 2147483639) {
                throw new k("APK Signing Block size out of range: ".concat(String.valueOf(j3)));
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
                throw new k("APK Signing Block sizes in header and footer do not match: " + j5 + " vs " + j3);
            }
            throw new k("APK Signing Block offset out of range: ".concat(String.valueOf(j4)));
        }
        throw new k("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(j2)));
    }

    public static void hp(String str, RandomAccessFile randomAccessFile, int... iArr) throws IOException, k {
        hp.put(str, new SparseArray<>());
        Pair<ByteBuffer, Long> pairHp = hp(randomAccessFile);
        ByteBuffer byteBuffer = (ByteBuffer) pairHp.first;
        long jLongValue = ((Long) pairHp.second).longValue();
        if (!ec.hp(randomAccessFile, jLongValue)) {
            long jHp = hp(byteBuffer, jLongValue);
            Pair<ByteBuffer, Long> pairHp2 = hp(randomAccessFile, jHp);
            if (pairHp2 == null) {
                return;
            }
            ByteBuffer byteBuffer2 = (ByteBuffer) pairHp2.first;
            long jLongValue2 = ((Long) pairHp2.second).longValue();
            jx(byteBuffer2);
            ByteBuffer byteBufferHp = hp(byteBuffer2, 8, byteBuffer2.capacity() - 24);
            HashSet hashSet = new HashSet();
            for (int i2 : iArr) {
                hashSet.add(Integer.valueOf(i2));
            }
            while (byteBufferHp.hasRemaining() && byteBufferHp.remaining() >= 8) {
                long j2 = byteBufferHp.getLong();
                if (j2 < 4 || j2 > 2147483647L) {
                    return;
                }
                int i3 = (int) j2;
                int iPosition = byteBufferHp.position() + i3;
                if (i3 > byteBufferHp.remaining()) {
                    return;
                }
                int i4 = byteBufferHp.getInt();
                if (hashSet.contains(Integer.valueOf(i4))) {
                    hp.get(str).put(i4, new zy(hp(byteBufferHp, i3 - 4), jLongValue2, jHp, jLongValue, byteBuffer));
                }
                byteBufferHp.position(iPosition);
            }
            return;
        }
        throw new k("ZIP64 APK not supported");
    }
}
