package com.byazt.fc;

import androidx.core.view.PointerIconCompat;
import com.anythink.core.common.m.f;
import com.byazt.ymw.a;
import com.umeng.analytics.pro.cl;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TEXT, 38})
/* loaded from: classes2.dex */
public class j {
    private static String hp(long j2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j2);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static String hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", "300012449765");
            jSONObject.put(cl.f49059n, "1.0");
            String strHp = hp(System.currentTimeMillis());
            jSONObject.put("timestamp", strHp);
            jSONObject.put("appkey", "90E4DEDAD9B1CB57EA1538871ED468A7");
            jSONObject.put("businessType", "3");
            String string = UUID.randomUUID().toString();
            jSONObject.put("traceId", string);
            jSONObject.put("msgId", string);
            jSONObject.put(f.f5775Y, a.l("3000124497653" + string + strHp + string + "1.090E4DEDAD9B1CB57EA1538871ED468A7"));
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public static String hp(String str, String str2) throws JSONException {
        StringBuilder sb = new StringBuilder(str);
        sb.append("?");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", "9386206798");
            jSONObject.put("clientType", "Android-30100");
            jSONObject.put("format", "json");
            jSONObject.put(cl.f49059n, "v1.5");
            String strHp = hp.hp(str2.getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC5se07mkN71qsSJHjZ2Z0+Z+4LlLvf2sz7Md38VAa3EmAOvI7vZp3hbAxicL724ylcmisTPtZQhT/9C+25AELqy9PN9JmzKpwoVTUoJvxG4BoyT49+gGVl6s6zo1byNoHUzTfkmRfmC9MC53HvG8GwKP5xtcdptFjAIcgIR7oAWQIDAQAB");
            jSONObject.put("paramKey", strHp);
            String strHp2 = hp.hp(true, ("timeStamp=" + System.currentTimeMillis()).getBytes(), str2);
            jSONObject.put("paramStr", strHp2);
            String[] strArr = {"9386206798", "Android-30100", "json", strHp, strHp2, "v1.5"};
            StringBuilder sb2 = new StringBuilder();
            for (int i2 = 0; i2 < 6; i2++) {
                sb2.append(strArr[i2]);
            }
            jSONObject.put(f.f5775Y, hp.hp(sb2.toString(), "tgIBkg304BUpjGHLSq1wYYb0Xs77pMIm"));
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                sb.append(next);
                sb.append("=");
                sb.append(string);
                sb.append("&");
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
