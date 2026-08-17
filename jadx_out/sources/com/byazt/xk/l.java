package com.byazt.xk;

import android.util.Pair;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, 100, 34})
/* loaded from: classes3.dex */
public class l {

    @com.byazt.kj.hp(hp = {0, 1, 100, 123})
    public static class hp {
        public final long hp;

        /* renamed from: l, reason: collision with root package name */
        public final com.byazt.wd.l f27677l;

        public hp(long j2, com.byazt.wd.l lVar) {
            this.hp = j2;
            this.f27677l = lVar;
        }

        public long hp() {
            return this.hp;
        }

        public com.byazt.wd.l l() {
            return this.f27677l;
        }
    }

    public static com.byazt.obl.l hp(com.byazt.wd.l lVar) throws IOException, com.byazt.obl.hp {
        Pair<ByteBuffer, Long> pairHp = com.byazt.cys.hp.hp(lVar);
        if (pairHp == null) {
            throw new com.byazt.obl.hp("ZIP End of Central Directory record not found");
        }
        ByteBuffer byteBuffer = (ByteBuffer) pairHp.first;
        long jLongValue = ((Long) pairHp.second).longValue();
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        long jHp = com.byazt.cys.hp.hp(byteBuffer);
        if (jHp > jLongValue) {
            throw new com.byazt.obl.hp("ZIP Central Directory start offset out of range: " + jHp + ". ZIP End of Central Directory offset: " + jLongValue);
        }
        long jL = com.byazt.cys.hp.l(byteBuffer);
        long j2 = jHp + jL;
        if (j2 <= jLongValue) {
            return new com.byazt.obl.l(jHp, jL, com.byazt.cys.hp.jx(byteBuffer), jLongValue, byteBuffer);
        }
        throw new com.byazt.obl.hp("ZIP Central Directory overlaps with End of Central Directory. CD end: " + j2 + ", EoCD start: " + jLongValue);
    }

    public static hp hp(com.byazt.wd.l lVar, com.byazt.obl.l lVar2) throws Exception {
        long jHp = lVar2.hp();
        long jL = lVar2.l() + jHp;
        long j2 = lVar2.j();
        if (jL != j2) {
            throw new Exception("ZIP Central Directory is not immediately followed by End of Central Directory. CD end: " + jL + ", EoCD start: " + j2);
        }
        if (jHp >= 32) {
            ByteBuffer byteBufferHp = lVar.hp(jHp - 24, 24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferHp.order(byteOrder);
            if (byteBufferHp.getLong(8) == 2334950737559900225L && byteBufferHp.getLong(16) == 3617552046287187010L) {
                long j3 = byteBufferHp.getLong(0);
                if (j3 < byteBufferHp.capacity() || j3 > 2147483639) {
                    throw new Exception("APK Signing Block size out of range: ".concat(String.valueOf(j3)));
                }
                long j4 = (int) (8 + j3);
                long j5 = jHp - j4;
                if (j5 >= 0) {
                    ByteBuffer byteBufferHp2 = lVar.hp(j5, 8);
                    byteBufferHp2.order(byteOrder);
                    long j6 = byteBufferHp2.getLong(0);
                    if (j6 == j3) {
                        return new hp(j5, lVar.hp(j5, j4));
                    }
                    throw new Exception("APK Signing Block sizes in header and footer do not match: " + j6 + " vs " + j3);
                }
                throw new Exception("APK Signing Block offset out of range: ".concat(String.valueOf(j5)));
            }
            throw new Exception("No APK Signing Block before ZIP Central Directory");
        }
        throw new Exception("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(jHp)));
    }
}
