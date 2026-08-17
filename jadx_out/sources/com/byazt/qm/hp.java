package com.byazt.qm;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.ek;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILE_FORMAT, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private hp() {
    }

    private static MessageDigest hp() {
        try {
            return MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static boolean hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equalsIgnoreCase(str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String hp(java.io.File r8) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            java.security.DigestInputStream r8 = new java.security.DigestInputStream     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            java.security.MessageDigest r2 = hp()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            r8.<init>(r1, r2)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            r1 = 8192(0x2000, float:1.148E-41)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
        L13:
            int r2 = r8.read(r1)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r3 = -1
            if (r2 != r3) goto L13
            java.security.MessageDigest r1 = r8.getMessageDigest()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            byte[] r1 = r1.digest()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r2.<init>()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            int r3 = r1.length     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r4 = 0
        L29:
            if (r4 >= r3) goto L45
            r5 = r1[r4]     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.String r6 = "%02x"
            java.lang.Byte r5 = java.lang.Byte.valueOf(r5)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.Object[] r5 = new java.lang.Object[]{r5}     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.String r5 = java.lang.String.format(r6, r5)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r2.append(r5)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            int r4 = r4 + 1
            goto L29
        L41:
            r0 = move-exception
            goto L5d
        L43:
            r1 = move-exception
            goto L54
        L45:
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r8.close()     // Catch: java.lang.Exception -> L4c
        L4c:
            return r0
        L4d:
            r8 = move-exception
            r7 = r0
            r0 = r8
            r8 = r7
            goto L5d
        L52:
            r1 = move-exception
            r8 = r0
        L54:
            r1.getMessage()     // Catch: java.lang.Throwable -> L41
            if (r8 == 0) goto L5c
            r8.close()     // Catch: java.lang.Exception -> L5c
        L5c:
            return r0
        L5d:
            if (r8 == 0) goto L62
            r8.close()     // Catch: java.lang.Exception -> L62
        L62:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qm.hp.hp(java.io.File):java.lang.String");
    }

    public static String hp(String str) {
        byte[] bArrDigest;
        MessageDigest messageDigestHp = hp();
        if (messageDigestHp != null && !TextUtils.isEmpty(str)) {
            byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
            synchronized (hp.class) {
                bArrDigest = messageDigestHp.digest(bytes);
            }
            return hp(bArrDigest);
        }
        return "";
    }

    public static String hp(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = hp;
            cArr[i2] = cArr2[(b3 & 240) >> 4];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }
}
