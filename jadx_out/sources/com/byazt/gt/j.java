package com.byazt.gt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 38})
/* loaded from: classes2.dex */
public class j {
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x002c A[EXC_TOP_SPLITTER, PHI: r1
      0x002c: PHI (r1v3 java.util.zip.GZIPOutputStream) = (r1v2 java.util.zip.GZIPOutputStream), (r1v4 java.util.zip.GZIPOutputStream) binds: [B:20:0x0038, B:14:0x002a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] hp(java.lang.String r4) throws java.io.IOException {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r1 = 8192(0x2000, float:1.148E-41)
            r0.<init>(r1)
            r1 = 0
            boolean r2 = com.byazt.ub.hp.s()     // Catch: java.lang.Throwable -> L21
            java.lang.String r3 = "UTF-8"
            if (r2 == 0) goto L23
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L21
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L21
            byte[] r4 = r4.getBytes(r3)     // Catch: java.lang.Throwable -> L1e
            r2.write(r4)     // Catch: java.lang.Throwable -> L1e
            r1 = r2
            goto L2a
        L1e:
            r4 = move-exception
            r1 = r2
            goto L35
        L21:
            r4 = move-exception
            goto L35
        L23:
            byte[] r4 = r4.getBytes(r3)     // Catch: java.lang.Throwable -> L21
            r0.write(r4)     // Catch: java.lang.Throwable -> L21
        L2a:
            if (r1 == 0) goto L3b
        L2c:
            r1.close()     // Catch: java.io.IOException -> L30
            goto L3b
        L30:
            r4 = move-exception
            com.byazt.gt.e.l(r4)
            goto L3b
        L35:
            com.byazt.gt.e.l(r4)     // Catch: java.lang.Throwable -> L4b
            if (r1 == 0) goto L3b
            goto L2c
        L3b:
            byte[] r4 = r0.toByteArray()
            boolean r0 = com.byazt.ub.hp.s()
            if (r0 == 0) goto L4a
            int r0 = r4.length
            byte[] r4 = com.byakv.z.TTEncryptUtils.hp(r4, r0)
        L4a:
            return r4
        L4b:
            r4 = move-exception
            if (r1 == 0) goto L56
            r1.close()     // Catch: java.io.IOException -> L52
            goto L56
        L52:
            r0 = move-exception
            com.byazt.gt.e.l(r0)
        L56:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.gt.j.hp(java.lang.String):byte[]");
    }
}
