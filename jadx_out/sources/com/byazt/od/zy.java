package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1768, 302})
/* loaded from: classes3.dex */
public class zy extends hp {
    public zy(Context context, com.byazt.jb.hp hpVar, String str) {
        super(context, hpVar, str);
    }

    public static String hp(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append("=");
            stringBuffer.append(URLEncoder.encode(entry.getValue()));
            stringBuffer.append("&");
        }
        String string = stringBuffer.toString();
        return string.endsWith("&") ? string.substring(0, string.length() - 1) : string;
    }

    @Override // com.byazt.od.w
    public Intent l() {
        String strJx = this.f23962l.jx("s");
        String strHp = com.byazt.wm.jx.hp(this.f23962l.jx("bb"), strJx);
        if (!TextUtils.isEmpty(strHp) && strHp.split(",").length == 2) {
            String strHp2 = com.byazt.wm.jx.hp(this.f23962l.jx("bc"), strJx);
            if (!TextUtils.isEmpty(strHp2) && strHp2.split(",").length == 2) {
                String[] strArrSplit = strHp.split(",");
                String[] strArrSplit2 = strHp2.split(",");
                String strHp3 = com.byazt.wm.jx.hp(this.f23962l.jx("bd"), strJx);
                String strHp4 = com.byazt.wm.jx.hp(this.f23962l.jx("be"), strJx);
                String strHp5 = com.byazt.wm.jx.hp(this.f23962l.jx("bf"), strJx);
                HashMap map = new HashMap();
                map.put(strArrSplit[0], strArrSplit[1]);
                map.put(strArrSplit2[0], strArrSplit2[1]);
                map.put(strHp3, this.jx);
                Intent intent = new Intent();
                intent.setAction(strHp5);
                intent.setData(Uri.parse(strHp4 + hp(map)));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
