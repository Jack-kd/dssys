package com.byazt.lt;

import android.content.Context;
import android.net.Uri;
import com.byakv.z.TTEncryptUtils;
import com.byazt.gt.zy;
import java.io.UnsupportedEncodingException;
import java.util.UUID;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1796, 28})
/* loaded from: classes3.dex */
public class hp {
    public static JSONObject hp(Context context, JSONObject jSONObject, boolean z2) throws UnsupportedEncodingException {
        byte[] bytes;
        JSONObject jSONObjectHp;
        byte[] bytes2 = new byte[0];
        try {
            bytes2 = jSONObject.toString().getBytes("UTF-8");
            String strClientPackedBase64 = TTEncryptUtils.clientPackedBase64(bytes2, bytes2.length);
            if (com.byazt.fg.hp.l()) {
                com.byazt.fg.hp.hp("__kite", "请求体整体进行sword加密：加密内容：".concat(String.valueOf(jSONObject)));
                com.byazt.fg.hp.jx("__kite", "请求体整体进行sword加密：加密结果：".concat(String.valueOf(strClientPackedBase64)));
            }
            bytes = strClientPackedBase64.getBytes("UTF-8");
        } catch (Exception e2) {
            com.byazt.fg.hp.j("__kite", "error: " + e2.getMessage());
            bytes = bytes2;
        }
        if (bytes == null) {
            com.byazt.fg.hp.jx("__kite", "data is null ");
            return new JSONObject();
        }
        try {
            jSONObjectHp = hp(context, Uri.parse("https://toblog.ctobsnssdk.com/service/2/device_sdk/kite/").buildUpon().appendQueryParameter("req_id", UUID.randomUUID().toString()).build().toString(), bytes, z2);
        } catch (Exception e3) {
            com.byazt.fg.hp.l("__kiteerror " + e3.getMessage());
            jSONObjectHp = null;
        }
        return jSONObjectHp == null ? new JSONObject() : jSONObjectHp;
    }

    public static JSONObject hp(Context context, String str, byte[] bArr, boolean z2) {
        String strHp;
        try {
            try {
                if (zy.j()) {
                    try {
                        strHp = com.byazt.et.hp.hp(context, str, bArr, null, false, false);
                    } catch (RuntimeException e2) {
                        com.byazt.fg.hp.j("__kite", "error " + e2.getMessage());
                        strHp = com.byazt.et.hp.hp(context, str, bArr, "application/json; charset=utf-8", true, true);
                    }
                } else {
                    try {
                        strHp = com.byazt.et.hp.hp(context, str, bArr, "application/json; charset=utf-8", false, true);
                    } catch (Exception e3) {
                        com.byazt.fg.hp.j("__kite", "error " + e3.getMessage());
                        strHp = "";
                        return new JSONObject(strHp);
                    }
                }
            } catch (Exception e4) {
                com.byazt.fg.hp.j("__kite", "network error " + e4.getMessage());
                strHp = "";
                return new JSONObject(strHp);
            }
            return new JSONObject(strHp);
        } catch (Exception e5) {
            com.byazt.fg.hp.j("__kite", "error: " + e5.getMessage());
            return new JSONObject();
        }
    }
}
