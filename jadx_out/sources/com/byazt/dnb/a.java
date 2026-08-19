package com.byazt.dnb;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.t;
import dalvik.system.BaseDexClassLoader;
import io.flutter.embedding.android.KeyboardMap;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.CRC32;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1239, 54})
/* loaded from: classes2.dex */
public class a {
    public static final Map<String, Long> hp;
    public static final ConcurrentHashMap<String, Boolean> jx;

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, Long> f19174l;

    @com.byazt.kj.hp(hp = {0, 1, 1239, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        private static int jx(RandomAccessFile randomAccessFile, ByteOrder byteOrder) throws IOException {
            byte[] bArr = new byte[2];
            randomAccessFile.readFully(bArr);
            return ByteBuffer.wrap(bArr).order(byteOrder).getShort() & 65535;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static l l(File file) throws IOException {
            int iJx;
            int iJx2;
            int iJx3;
            int iJx4;
            int iJx5;
            long jHp;
            long jHp2;
            long jL;
            long j2;
            long j3;
            long j4;
            byte[] bArr;
            ByteOrder byteOrder;
            long j5;
            int i2;
            int i3;
            l lVar = new l();
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, t.f31269k);
            try {
                byte[] bArr2 = new byte[16];
                randomAccessFile.readFully(bArr2);
                if (bArr2[0] != 127 || bArr2[1] != 69 || bArr2[2] != 76 || bArr2[3] != 70) {
                    throw new IOException("Not ELF");
                }
                boolean z2 = bArr2[4] == 2;
                ByteOrder byteOrder2 = bArr2[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                randomAccessFile.seek(18L);
                int iJx6 = jx(randomAccessFile, byteOrder2);
                lVar.hp = iJx6 == 40;
                lVar.f19177l = iJx6 == 183;
                if (z2) {
                    randomAccessFile.seek(32L);
                    jHp2 = hp(randomAccessFile, byteOrder2);
                    randomAccessFile.seek(40L);
                    jHp = hp(randomAccessFile, byteOrder2);
                    randomAccessFile.seek(54L);
                    iJx = jx(randomAccessFile, byteOrder2);
                    iJx2 = jx(randomAccessFile, byteOrder2);
                    iJx3 = jx(randomAccessFile, byteOrder2);
                    iJx4 = jx(randomAccessFile, byteOrder2);
                    iJx5 = jx(randomAccessFile, byteOrder2);
                } else {
                    randomAccessFile.seek(28L);
                    long jL2 = l(randomAccessFile, byteOrder2);
                    randomAccessFile.seek(32L);
                    long jL3 = l(randomAccessFile, byteOrder2);
                    randomAccessFile.seek(42L);
                    iJx = jx(randomAccessFile, byteOrder2);
                    iJx2 = jx(randomAccessFile, byteOrder2);
                    iJx3 = jx(randomAccessFile, byteOrder2);
                    iJx4 = jx(randomAccessFile, byteOrder2);
                    iJx5 = jx(randomAccessFile, byteOrder2);
                    jHp = jL3;
                    jHp2 = jL2;
                }
                int i4 = iJx5;
                CRC32 crc32 = new CRC32();
                byte[] bArr3 = new byte[iJx];
                int i5 = 0;
                while (i5 < iJx2) {
                    long j6 = jHp2;
                    int i6 = i5;
                    boolean z3 = z2;
                    randomAccessFile.seek(j6 + (i5 * iJx));
                    randomAccessFile.readFully(bArr3);
                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr3).order(byteOrder2);
                    if (z3) {
                        i2 = byteBufferOrder.getInt();
                        i3 = byteBufferOrder.getInt();
                    } else {
                        i2 = byteBufferOrder.getInt();
                        byteBufferOrder.getInt();
                        byteBufferOrder.position(byteBufferOrder.position() + 8);
                        byteBufferOrder.getInt();
                        byteBufferOrder.position(byteBufferOrder.position() + 4);
                        i3 = byteBufferOrder.getInt();
                    }
                    if (i2 == 1) {
                        lVar.f19175a++;
                        if ((i3 & 1) != 0) {
                            lVar.eb++;
                        }
                        hp(crc32, i2);
                        hp(crc32, i3);
                    }
                    i5 = i6 + 1;
                    jHp2 = j6;
                    z2 = z3;
                }
                boolean z4 = z2;
                lVar.jx = crc32.getValue();
                long j7 = iJx3;
                randomAccessFile.seek((i4 * j7) + jHp);
                if (z4) {
                    randomAccessFile.skipBytes(24);
                    jL = hp(randomAccessFile, byteOrder2);
                } else {
                    randomAccessFile.skipBytes(16);
                    jL = l(randomAccessFile, byteOrder2);
                }
                byte[] bArr4 = new byte[iJx3];
                int i7 = 0;
                while (true) {
                    if (i7 >= iJx4) {
                        j2 = -1;
                        j3 = -1;
                        break;
                    }
                    randomAccessFile.seek((i7 * j7) + jHp);
                    randomAccessFile.readFully(bArr4);
                    ByteBuffer byteBufferOrder2 = ByteBuffer.wrap(bArr4).order(byteOrder2);
                    int i8 = byteBufferOrder2.getInt();
                    byteBufferOrder2.position(byteBufferOrder2.position() + 4);
                    byteBufferOrder2.position(byteBufferOrder2.position() + (z4 ? 8 : 4));
                    byteBufferOrder2.position(byteBufferOrder2.position() + (z4 ? 8 : 4));
                    if (z4) {
                        j2 = byteBufferOrder2.getLong();
                        j4 = KeyboardMap.kValueMask;
                    } else {
                        j4 = KeyboardMap.kValueMask;
                        j2 = byteBufferOrder2.getInt() & KeyboardMap.kValueMask;
                    }
                    if (z4) {
                        j5 = byteBufferOrder2.getLong();
                        bArr = bArr4;
                        byteOrder = byteOrder2;
                    } else {
                        bArr = bArr4;
                        byteOrder = byteOrder2;
                        j5 = byteBufferOrder2.getInt() & j4;
                    }
                    if (".text".equals(hp(randomAccessFile, i8 + jL))) {
                        j3 = j5;
                        break;
                    }
                    i7++;
                    byteOrder2 = byteOrder;
                    bArr4 = bArr;
                }
                if (j2 < 0) {
                    throw new IOException(".text not found");
                }
                long jHp3 = hp(randomAccessFile, j2, j3);
                lVar.f19176j = jHp3;
                lVar.f19178w = hp(lVar.jx, jHp3);
                randomAccessFile.close();
                return lVar;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        }

        private static long hp(long j2, long j3) {
            CRC32 crc32 = new CRC32();
            hp(crc32, (int) j2);
            hp(crc32, (int) j3);
            return crc32.getValue();
        }

        private static long hp(RandomAccessFile randomAccessFile, long j2, long j3) throws IOException {
            int i2;
            randomAccessFile.seek(j2);
            CRC32 crc32 = new CRC32();
            byte[] bArr = new byte[8192];
            while (j3 > 0 && (i2 = randomAccessFile.read(bArr, 0, (int) Math.min(8192L, j3))) > 0) {
                crc32.update(bArr, 0, i2);
                j3 -= i2;
            }
            return crc32.getValue();
        }

        private static void hp(CRC32 crc32, int i2) {
            crc32.update((i2 >>> 24) & 255);
            crc32.update((i2 >>> 16) & 255);
            crc32.update((i2 >>> 8) & 255);
            crc32.update(i2 & 255);
        }

        private static String hp(RandomAccessFile randomAccessFile, long j2) throws IOException {
            randomAccessFile.seek(j2);
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i2 = randomAccessFile.read();
                if (i2 > 0) {
                    sb.append((char) i2);
                } else {
                    return sb.toString();
                }
            }
        }

        private static long hp(RandomAccessFile randomAccessFile, ByteOrder byteOrder) throws IOException {
            byte[] bArr = new byte[8];
            randomAccessFile.readFully(bArr);
            return ByteBuffer.wrap(bArr).order(byteOrder).getLong();
        }

        private static long l(RandomAccessFile randomAccessFile, ByteOrder byteOrder) throws IOException {
            randomAccessFile.readFully(new byte[4]);
            return ByteBuffer.wrap(r0).order(byteOrder).getInt() & KeyboardMap.kValueMask;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1239, 897})
    public static class jx extends UnsatisfiedLinkError {
        public jx(String str) {
            super(str);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1239, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE})
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public int f19175a;
        public int eb;
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public long f19176j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public boolean f19177l;

        /* renamed from: w, reason: collision with root package name */
        public long f19178w;
    }

    static {
        HashMap map = new HashMap();
        hp = map;
        HashMap map2 = new HashMap();
        f19174l = map2;
        jx = new ConcurrentHashMap<>();
        map.put("pangleflipped", 2108457691L);
        map2.put("pangleflipped", 1987010392L);
        map2.put("panglearmor", 199833129L);
        map2.put("tt_ugen_layout", 4099492101L);
        map2.put("avmdl_lite", 2580523452L);
        map2.put("Pglbizssdk_ml", 2775609538L);
        map2.put("tobEmbedEncrypt", 1277933986L);
        map2.put("ttmplayer_lite", 2952398659L);
    }

    public static boolean hp(String str) {
        Boolean bool = Boolean.TRUE;
        ConcurrentHashMap<String, Boolean> concurrentHashMap = jx;
        if (bool.equals(concurrentHashMap.get(str))) {
            return true;
        }
        Map<String, Long> map = f19174l;
        if (map.get(str) == null) {
            return true;
        }
        try {
            File fileL = l(str);
            if (fileL != null && fileL.exists()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                l lVarL = hp.l(fileL);
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                if (!lVarL.f19177l) {
                    map = hp;
                }
                long jLongValue = map.get(str).longValue();
                long j2 = lVarL.f19178w;
                if (j2 == jLongValue && j2 != 0) {
                    concurrentHashMap.put(str, bool);
                    hp(str, jCurrentTimeMillis2, lVarL, jLongValue, 1);
                    return true;
                }
                if (j2 == 0) {
                    hp(str, jCurrentTimeMillis2, lVarL, jLongValue, -2);
                    return true;
                }
                hp(str, jCurrentTimeMillis2, lVarL, jLongValue, -1);
                return false;
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    private static File l(String str) {
        String strFindLibrary;
        try {
            strFindLibrary = ((BaseDexClassLoader) eb.class.getClassLoader()).findLibrary(str);
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(strFindLibrary)) {
            return new File(strFindLibrary);
        }
        String str2 = sz.getContext().getApplicationInfo().nativeLibraryDir;
        if (!TextUtils.isEmpty(str2)) {
            File file = new File(str2, "lib" + str + ".so");
            if (file.exists()) {
                return file;
            }
        }
        return null;
    }

    private static void hp(String str, long j2, l lVar, long j3, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("lib", str);
            jSONObject.put("isV8", lVar.f19177l ? 1 : 0);
            jSONObject.put("phdrCrc", lVar.jx);
            jSONObject.put("textCrc", lVar.f19176j);
            jSONObject.put("finalCrc", lVar.f19178w);
            jSONObject.put("expected", j3);
            jSONObject.put("loadCount", lVar.f19175a);
            jSONObject.put("execCount", lVar.eb);
            jSONObject.put("checkResult", i2);
            jSONObject.put("cost", j2);
        } catch (JSONException unused) {
        }
        k.hp().l("so_security_check", jSONObject);
    }
}
