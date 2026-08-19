package com.byazt.g;

import com.anythink.core.common.r.g;
import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;

@com.byazt.kj.hp(hp = {0, 1, 1352, 30})
/* loaded from: classes2.dex */
public class jx {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @com.byazt.kj.hp(hp = {0, 1, 1352, 219})
    public static class hp {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public long f20294j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20295l;

        /* renamed from: w, reason: collision with root package name */
        public String f20296w;

        private hp() {
        }
    }

    public static String hp(File file) {
        return hp(file, 9, 8192L);
    }

    private static String l(File file, int i2, long j2) throws Exception {
        return hp(new com.byazt.g.hp(file), i2, j2);
    }

    public static String hp(File file, int i2, long j2) {
        if (file != null) {
            try {
                if (file.exists()) {
                    return l(file, i2, j2);
                }
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    private static long l(String str) throws RuntimeException {
        return (Long.parseLong(str, 16) - 31) >> 4;
    }

    public static int hp(String str, File file) {
        return hp(str, file, (l) null);
    }

    public static int hp(String str, File file, l lVar) {
        int i2;
        long j2;
        String strL;
        if (str == null || str.length() == 0) {
            return 2;
        }
        try {
            if (lVar != null) {
                if (lVar.hp() <= 0) {
                    try {
                        lVar.l();
                    } catch (Throwable unused) {
                    }
                    return 5;
                }
            } else if (file == null || !file.exists()) {
                return 5;
            }
            try {
                hp hpVarHp = hp(str);
                if (hpVarHp == null) {
                    i2 = -1;
                    j2 = -1;
                } else {
                    if (hpVarHp.hp > 1) {
                        return 3;
                    }
                    i2 = hpVarHp.jx;
                    j2 = hpVarHp.f20294j;
                }
                hp hpVarHp2 = null;
                try {
                    if (lVar != null) {
                        strL = hp(lVar, i2, j2);
                    } else {
                        strL = l(file, i2, j2);
                    }
                } catch (Throwable unused2) {
                    strL = null;
                }
                if (strL != null && strL.length() != 0) {
                    if (hpVarHp != null && (hpVarHp.hp != 1 || hpVarHp.f20295l != 1)) {
                        if (hpVarHp.f20296w != null) {
                            try {
                                hpVarHp2 = hp(strL);
                            } catch (Throwable unused3) {
                            }
                            if (hpVarHp2 != null && hpVarHp.jx == hpVarHp2.jx && hpVarHp.f20294j == hpVarHp2.f20294j && hpVarHp.f20296w.equals(hpVarHp2.f20296w)) {
                                return 0;
                            }
                        }
                    } else if (strL.equals(str)) {
                        return 0;
                    }
                    return 1;
                }
                return 6;
            } catch (Throwable unused4) {
                return 4;
            }
        } catch (Throwable unused5) {
            return 99;
        }
    }

    private static String hp(l lVar, int i2, long j2) throws Exception {
        long j3;
        int i3 = i2;
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        if (messageDigest == null) {
            return "";
        }
        try {
            long jHp = lVar.hp();
            long j4 = 0;
            if (i3 <= 0 || j2 <= 0 || i3 * j2 > (8 * jHp) / 10) {
                i3 = 1;
                j3 = jHp;
            } else {
                j3 = j2;
            }
            byte[] bArr = new byte[8192];
            hp(lVar, messageDigest, bArr, 0L, j3);
            if (i3 > 2) {
                int i4 = i3 - 1;
                long j5 = (jHp - (i3 * j3)) / i4;
                int i5 = 1;
                while (i5 < i4) {
                    long j6 = j3 + j5 + j4;
                    hp(lVar, messageDigest, bArr, j6, j3);
                    i5++;
                    j4 = j6;
                }
            }
            if (i3 > 1) {
                hp(lVar, messageDigest, bArr, jHp - j3, j3);
            }
            String strHp = hp(messageDigest.digest());
            if (i3 == 1 && j3 == jHp) {
                try {
                    lVar.l();
                } catch (Throwable unused) {
                }
                return strHp;
            }
            String str = hp(i3, j3) + ";" + strHp;
            try {
                lVar.l();
            } catch (Throwable unused2) {
            }
            return str;
        } catch (Throwable th) {
            try {
                lVar.l();
            } catch (Throwable unused3) {
            }
            throw th;
        }
    }

    private static void hp(l lVar, MessageDigest messageDigest, byte[] bArr, long j2, long j3) throws IOException {
        lVar.hp(j2, j3);
        long j4 = 0;
        while (j4 < j3) {
            int iHp = lVar.hp(bArr, 0, (int) Math.min(j3 - j4, bArr.length));
            if (iHp > 0) {
                messageDigest.update(bArr, 0, iHp);
                j4 += iHp;
            } else {
                throw new IOException("updateSample unexpected readCount <= 0, readCount = " + iHp + ", readTotalCount = " + j4 + ", sampleSize = " + j3);
            }
        }
    }

    private static String hp(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length * 2;
            char[] cArr = new char[length];
            int i2 = 0;
            for (byte b3 : bArr) {
                int i3 = i2 + 1;
                char[] cArr2 = hp;
                cArr[i2] = cArr2[(b3 & 255) >> 4];
                i2 += 2;
                cArr[i3] = cArr2[b3 & ek.f49295m];
            }
            return new String(cArr, 0, length);
        }
        throw new NullPointerException("bytes is null");
    }

    private static String hp(int i2, long j2) {
        return "ttmd5:1:1:" + hp(i2) + g.f7297a + hp(j2);
    }

    private static hp hp(String str) throws Exception {
        if (!str.startsWith("ttmd5:")) {
            return null;
        }
        String[] strArrSplit = str.split(";");
        String[] strArrSplit2 = strArrSplit[0].split(":");
        hp hpVar = new hp();
        hpVar.hp = Integer.parseInt(strArrSplit2[1]);
        if (hpVar.hp > 1) {
            return hpVar;
        }
        hpVar.f20295l = Integer.parseInt(strArrSplit2[2]);
        String[] strArrSplit3 = strArrSplit2[3].split(g.f7297a);
        hpVar.jx = (int) l(strArrSplit3[0]);
        hpVar.f20294j = l(strArrSplit3[1]);
        hpVar.f20296w = strArrSplit[1];
        return hpVar;
    }

    private static String hp(long j2) {
        return Long.toHexString((j2 << 4) + 31);
    }
}
