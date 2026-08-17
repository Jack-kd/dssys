package com.byazt.zg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.ek;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz {

    /* renamed from: l, reason: collision with root package name */
    public static final MessageDigest f28430l = hp();
    public static final Charset hp = Charset.forName("UTF-8");
    public static final char[] jx = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private sz() {
    }

    private static MessageDigest hp() {
        try {
            return MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String hp(String str) {
        byte[] bArrDigest;
        MessageDigest messageDigest = f28430l;
        if (str == null) {
            return "";
        }
        byte[] bytes = str.getBytes(hp);
        synchronized (sz.class) {
            bArrDigest = messageDigest.digest(bytes);
        }
        return hp(bArrDigest);
    }

    public static String hp(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = jx;
            cArr[i2] = cArr2[(b3 & 240) >> 4];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }
}
