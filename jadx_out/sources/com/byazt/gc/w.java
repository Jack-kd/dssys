package com.byazt.gc;

import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;

@com.byazt.kj.hp(hp = {0, 1, 524, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static boolean hp(String str, String str2, StringBuilder sb) {
        if (TextUtils.isEmpty(str)) {
            sb.append("apkPath null");
            return false;
        }
        try {
            v vVarHp = com.byazt.lc.q.hp() ? j.hp(str, 1) : hp.hp(str, true);
            Signature[] signatureArr = vVarHp != null ? vVarHp.f20384l : null;
            String str3 = Zeus.getPlugin(str2).mSignature;
            byte[] bArrDecode = Base64.decode(str3, 0);
            if (bArrDecode == null || bArrDecode.length == 0) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "ApkSignatureVerify get hostSignature error : ".concat(String.valueOf(str)));
                sb.append("hostSignature null ");
                if (TextUtils.isEmpty(str3)) {
                    sb.append("origin sign is null");
                }
                return false;
            }
            int length = 0;
            for (Signature signature : signatureArr) {
                length += signature.toByteArray().length;
            }
            byte[] bArr = new byte[length];
            int length2 = 0;
            for (Signature signature2 : signatureArr) {
                System.arraycopy(signature2.toByteArray(), 0, bArr, length2, signature2.toByteArray().length);
                length2 += signature2.toByteArray().length;
            }
            boolean zHp = v.hp(bArr, bArrDecode);
            if (!zHp) {
                sb.append("signature error");
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "ApkSignatureVerify verify plugin signature error : ".concat(String.valueOf(str)));
            }
            return zHp;
        } catch (xs e2) {
            sb.append("verify e");
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "ApkSignatureVerify verify plugin signature error : ".concat(String.valueOf(str)), e2);
            return false;
        }
    }
}
