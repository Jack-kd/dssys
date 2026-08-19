package com.byazt.zg;

import android.content.Context;
import android.content.pm.Signature;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static HashMap<String, ArrayList<String>> hp = new HashMap<>();

    public static ArrayList<String> hp(Context context, String str) {
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (hp.get(str) != null) {
                return hp.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : l(context, packageName)) {
                    String strHp = "error!";
                    if ("MD5".equals(str)) {
                        strHp = hp(signature, "MD5");
                    } else if ("SHA1".equals(str)) {
                        strHp = hp(signature, "SHA1");
                    } else if ("SHA256".equals(str)) {
                        strHp = hp(signature, "SHA256");
                    }
                    arrayList.add(strHp);
                }
            } catch (Exception e2) {
                com.byazt.aw.l.jx(e2.toString());
            }
            hp.put(str, arrayList);
        }
        return arrayList;
    }

    private static Signature[] l(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e2) {
            com.byazt.aw.l.jx(e2.toString());
            return null;
        }
    }

    private static String hp(Signature signature, String str) throws NoSuchAlgorithmException {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] bArrDigest = messageDigest.digest(byteArray);
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1).toString();
        } catch (Exception e2) {
            com.byazt.aw.l.jx(e2.toString());
            return "error!";
        }
    }
}
