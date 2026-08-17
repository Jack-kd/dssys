package com.byazt.gc;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 524, 94})
/* loaded from: classes2.dex */
public abstract class eb {
    public static final byte[] hp = new byte[8];

    @com.byazt.kj.hp(hp = {0, 1, 524, 131})
    public static class hp {
        public final ByteBuffer hp;

        /* renamed from: l, reason: collision with root package name */
        public final byte[] f20372l;

        public hp(ByteBuffer byteBuffer, byte[] bArr) {
            this.hp = byteBuffer;
            this.f20372l = bArr;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 524, 846})
    public static class l implements e {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public final byte[] f20373j;
        public final MessageDigest jx;

        /* renamed from: l, reason: collision with root package name */
        public final ByteBuffer f20374l;

        /* renamed from: w, reason: collision with root package name */
        public final byte[] f20375w;

        /* JADX INFO: Access modifiers changed from: private */
        public void l() {
            int iPosition = this.f20374l.position() % 4096;
            if (iPosition == 0) {
                return;
            }
            this.f20374l.put(ByteBuffer.allocate(4096 - iPosition));
        }

        private l(byte[] bArr, ByteBuffer byteBuffer) throws NoSuchAlgorithmException {
            this.f20373j = new byte[32];
            this.f20375w = bArr;
            this.f20374l = byteBuffer.slice();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.jx = messageDigest;
            messageDigest.update(bArr);
            this.hp = 0;
        }

        @Override // com.byazt.gc.e
        public void hp(ByteBuffer byteBuffer) throws DigestException {
            byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            while (iRemaining > 0) {
                int iMin = Math.min(iRemaining, 4096 - this.hp);
                byteBuffer.limit(byteBuffer.position() + iMin);
                this.jx.update(byteBuffer);
                iRemaining -= iMin;
                int i2 = this.hp + iMin;
                this.hp = i2;
                if (i2 == 4096) {
                    MessageDigest messageDigest = this.jx;
                    byte[] bArr = this.f20373j;
                    messageDigest.digest(bArr, 0, bArr.length);
                    this.f20374l.put(this.f20373j);
                    this.jx.update(this.f20375w);
                    this.hp = 0;
                }
            }
        }

        public void hp() throws DigestException {
            if (this.hp == 0) {
                return;
            }
            throw new IllegalStateException("Buffer is not empty: " + this.hp);
        }
    }

    public static hp hp(RandomAccessFile randomAccessFile, zy zyVar, q qVar) throws NoSuchAlgorithmException, DigestException, IOException, SecurityException {
        int i2 = l(randomAccessFile.length() - (zyVar.jx - zyVar.f20387l))[r0.length - 1];
        int i3 = i2 + 4096;
        ByteBuffer byteBufferHp = qVar.hp(i3);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferHp.order(byteOrder);
        ByteBuffer byteBufferHp2 = hp(byteBufferHp, 0, i2);
        int i4 = i2 + 64;
        ByteBuffer byteBufferHp3 = hp(byteBufferHp, i2, i4);
        ByteBuffer byteBufferHp4 = hp(byteBufferHp, i4, i3);
        byte[] bArr = new byte[32];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(byteOrder);
        hp(randomAccessFile, zyVar, byteBufferHp2, byteBufferWrap, byteBufferHp3, byteBufferHp4);
        byteBufferHp.position(i4 + byteBufferHp4.limit());
        byteBufferHp.putInt(byteBufferHp4.limit() + 68);
        byteBufferHp.flip();
        return new hp(byteBufferHp, bArr);
    }

    private static int[] l(long j2) {
        ArrayList arrayList = new ArrayList();
        do {
            j2 = hp(j2, 4096L) * 32;
            arrayList.add(Long.valueOf(hp(j2, 4096L) * 4096));
        } while (j2 > 4096);
        int[] iArr = new int[arrayList.size() + 1];
        int i2 = 0;
        iArr[0] = 0;
        while (i2 < arrayList.size()) {
            int i3 = i2 + 1;
            iArr[i3] = iArr[i2] + hp(((Long) arrayList.get((arrayList.size() - i2) - 1)).longValue());
            i2 = i3;
        }
        return iArr;
    }

    private static void hp(RandomAccessFile randomAccessFile, zy zyVar, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, ByteBuffer byteBuffer4) throws NoSuchAlgorithmException, DigestException, IOException {
        hp(zyVar);
        long j2 = zyVar.jx - zyVar.f20387l;
        int[] iArrL = l(randomAccessFile.length() - j2);
        if (byteBuffer != null) {
            byte[] bArrHp = hp(randomAccessFile, zyVar, hp, iArrL, byteBuffer);
            if (byteBuffer2 != null) {
                byteBuffer2.put(bArrHp);
                byteBuffer2.flip();
            }
        }
        if (byteBuffer3 != null) {
            byteBuffer3.order(ByteOrder.LITTLE_ENDIAN);
            hp(byteBuffer3, randomAccessFile.length(), iArrL.length - 1, hp);
        }
        if (byteBuffer4 != null) {
            byteBuffer4.order(ByteOrder.LITTLE_ENDIAN);
            hp(byteBuffer4, zyVar.f20387l, j2, zyVar.f20386j);
        }
    }

    private static void hp(e eVar, gu guVar, int i2) throws DigestException, IOException {
        long jHp = guVar.hp();
        long j2 = 0;
        while (jHp > 0) {
            int iMin = (int) Math.min(jHp, i2);
            guVar.hp(eVar, j2, iMin);
            long j3 = iMin;
            j2 += j3;
            jHp -= j3;
        }
    }

    private static void hp(RandomAccessFile randomAccessFile, zy zyVar, byte[] bArr, ByteBuffer byteBuffer) throws NoSuchAlgorithmException, DigestException, IOException {
        l lVar = new l(bArr, byteBuffer);
        hp(lVar, new jl(randomAccessFile.getFD(), 0L, zyVar.f20387l), 1048576);
        long j2 = zyVar.f20386j;
        FileDescriptor fd = randomAccessFile.getFD();
        long j3 = zyVar.jx;
        hp(lVar, new jl(fd, j3, (16 + j2) - j3), 1048576);
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(hp(zyVar.f20387l));
        byteBufferOrder.flip();
        lVar.hp(byteBufferOrder);
        long j4 = j2 + 20;
        hp(lVar, new jl(randomAccessFile.getFD(), j4, randomAccessFile.length() - j4), 1048576);
        int length = (int) (randomAccessFile.length() % 4096);
        if (length != 0) {
            lVar.hp(ByteBuffer.allocate(4096 - length));
        }
        lVar.hp();
        lVar.l();
    }

    private static byte[] hp(RandomAccessFile randomAccessFile, zy zyVar, byte[] bArr, int[] iArr, ByteBuffer byteBuffer) throws NoSuchAlgorithmException, DigestException, IOException {
        hp(randomAccessFile, zyVar, bArr, hp(byteBuffer, iArr[iArr.length - 2], iArr[iArr.length - 1]));
        int length = iArr.length - 3;
        while (true) {
            if (length >= 0) {
                int i2 = length + 1;
                ByteBuffer byteBufferHp = hp(byteBuffer, iArr[i2], iArr[length + 2]);
                ByteBuffer byteBufferHp2 = hp(byteBuffer, iArr[length], iArr[i2]);
                s sVar = new s(byteBufferHp);
                l lVar = new l(bArr, byteBufferHp2);
                hp(lVar, sVar, 4096);
                lVar.hp();
                lVar.l();
                length--;
            } else {
                byte[] bArr2 = new byte[32];
                l lVar2 = new l(bArr, ByteBuffer.wrap(bArr2));
                lVar2.hp(hp(byteBuffer, 0, 4096));
                lVar2.hp();
                return bArr2;
            }
        }
    }

    private static ByteBuffer hp(ByteBuffer byteBuffer, long j2, int i2, byte[] bArr) {
        if (bArr.length == 8) {
            byteBuffer.put("TrueBrew".getBytes());
            byteBuffer.put((byte) 1);
            byteBuffer.put((byte) 0);
            byteBuffer.put((byte) 12);
            byteBuffer.put((byte) 7);
            byteBuffer.putShort((short) 1);
            byteBuffer.putShort((short) 1);
            byteBuffer.putInt(0);
            byteBuffer.putInt(0);
            byteBuffer.putLong(j2);
            byteBuffer.put((byte) 2);
            byteBuffer.put((byte) 0);
            byteBuffer.put(bArr);
            hp(byteBuffer, 22);
            byteBuffer.flip();
            return byteBuffer;
        }
        throw new IllegalArgumentException("salt is not 8 bytes long");
    }

    private static ByteBuffer hp(ByteBuffer byteBuffer, long j2, long j3, long j4) {
        byteBuffer.putInt(24);
        byteBuffer.putShort((short) 1);
        hp(byteBuffer, 2);
        byteBuffer.putLong(j2);
        byteBuffer.putLong(j3);
        byteBuffer.putInt(20);
        byteBuffer.putShort((short) 2);
        hp(byteBuffer, 2);
        byteBuffer.putLong(j4 + 16);
        byteBuffer.putInt(hp(j2));
        hp(byteBuffer, 4);
        byteBuffer.flip();
        return byteBuffer;
    }

    private static void hp(zy zyVar) {
        long j2 = zyVar.f20387l;
        if (j2 % 4096 != 0) {
            throw new IllegalArgumentException("APK Signing Block does not start at the page  boundary: " + zyVar.f20387l);
        }
        if ((zyVar.jx - j2) % 4096 == 0) {
            return;
        }
        throw new IllegalArgumentException("Size of APK Signing Block is not a multiple of 4096: " + (zyVar.jx - zyVar.f20387l));
    }

    private static ByteBuffer hp(ByteBuffer byteBuffer, int i2, int i3) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(0);
        byteBufferDuplicate.limit(i3);
        byteBufferDuplicate.position(i2);
        return byteBufferDuplicate.slice();
    }

    private static void hp(ByteBuffer byteBuffer, int i2) {
        byteBuffer.position(byteBuffer.position() + i2);
    }

    private static long hp(long j2, long j3) {
        return ((j2 + j3) - 1) / j3;
    }

    public static int hp(long j2) {
        int i2 = (int) j2;
        if (i2 == j2) {
            return i2;
        }
        throw new ArithmeticException("integer overflow");
    }
}
