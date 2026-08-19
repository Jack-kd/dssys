package com.byazt.zg;

import android.text.TextUtils;
import android.util.Base64;
import com.anythink.core.common.m.f;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.X509EncodedKeySpec;
import java.util.Map;
import javax.crypto.Cipher;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {
    public static boolean hp() {
        Map<String, Object> mapDi = com.byazt.di.hp.jl().di();
        Map<String, Object> mapB = com.byazt.di.hp.jl().b();
        if (mapDi != null) {
            try {
                if (mapDi.get("eefo") instanceof Boolean) {
                    return ((Boolean) mapDi.get("eefo")).booleanValue();
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        if (mapB == null || !(mapB.get("eefo") instanceof Boolean)) {
            return false;
        }
        return ((Boolean) mapB.get("eefo")).booleanValue();
    }

    private static String l(String str, String str2) {
        try {
            return hp.hp(str.getBytes(StandardCharsets.UTF_8), str2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String hp(com.byazt.dq.jx jxVar) {
        if (jxVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MediationConstant.EXTRA_ADN_NAME, jxVar.q());
            jSONObject.put("custom_adn_name", jxVar.e());
            jSONObject.put("slot_id", jxVar.gu());
            jSONObject.put("level_tag", jxVar.v());
            jSONObject.put("ecpm", jxVar.zy());
            jSONObject.put("bidding_type", jxVar.u());
            jSONObject.put("error_msg", jxVar.xs());
            jSONObject.put("request_id", jxVar.vv());
            jSONObject.put("ad_rit_type", jxVar.l());
            jSONObject.put("ad_sub_rit_type", jxVar.jx());
            jSONObject.put("segment_id", jxVar.j());
            jSONObject.put(f.f5760J, jxVar.eb());
            jSONObject.put("channel", jxVar.w());
            jSONObject.put("sub_channel", jxVar.a());
            jSONObject.put("scenario_id", jxVar.s());
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            String strHp = hp(16);
            String strL = l(string, strHp);
            String strHp2 = hp(strHp, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7aAsZzOAmVVuIl0EZtpY\nPkJGdr82VIOzPBDYNEOBK0tfk/oSWyY8yZDpeYuhNuSPySmhaN8Apn3HGfL1Eq6t\nSE3OdAovRJjnilU/5ugSM/nr5yMy6WRvJUskvQ9F3PF9MLez8ZJxVDb4tgUXjq2S\n1QKSP+NwAKdY+P/H8SD5evamqCpvzO1IwpqznNI2HGAo/Kdm5OQ+Yq47A31dDUSH\nVF/TTzTfae8j6lanqgz9DmFs+kqoy253aXlz8H0z8J3VpmOGvnOUiS00Hg5SILV0\nsoXtS9JKK/V3gXmbXWyFvZhuIvLqk3C8AdyZuDdy1GAI3GjI4wjtiMd11zSTECrV\ntQIDAQAB");
            return String.format("%04d", Integer.valueOf(strHp2.length())) + strHp2 + strL;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static String hp(String str, String str2) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2, 0)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
            cipher.init(1, publicKeyGeneratePublic);
            return Base64.encodeToString(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String hp(int i2) {
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        for (int i3 = 0; i3 < i2; i3++) {
            int iNextInt = secureRandom.nextInt(3);
            if (iNextInt == 0) {
                sb.append(secureRandom.nextInt(10));
            } else if (iNextInt == 1) {
                sb.append((char) (secureRandom.nextInt(25) + 65));
            } else if (iNextInt == 2) {
                sb.append((char) (secureRandom.nextInt(25) + 97));
            }
        }
        return sb.toString();
    }
}
