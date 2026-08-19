package com.byazt.ee;

import android.text.TextUtils;
import com.byazt.iqm.l;
import com.byazt.lsx.a;
import com.byazt.rt.jx;
import com.byazt.zg.ns;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 720, 28})
/* loaded from: classes2.dex */
public abstract class hp {
    public l hp;

    public static String hp(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3) || (!TextUtils.equals(str, MediationConstant.ADN_GDT) && !TextUtils.equals(str, MediationConstant.ADN_PANGLE))) {
            return str2;
        }
        return str2 + "_" + str3;
    }

    public static String hp(String str, String str2) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        int i2 = 0;
        if (TextUtils.equals(str, MediationConstant.ADN_PANGLE)) {
            String[] strArrSplit2 = str2.split("message:");
            if (strArrSplit2 != null && strArrSplit2.length > 0) {
                String str3 = strArrSplit2[0];
                if (!TextUtils.isEmpty(str3) && (strArrSplit = str3.trim().split(":")) != null && strArrSplit.length >= 2) {
                    String str4 = strArrSplit[1];
                    if (!TextUtils.isEmpty(str4)) {
                        return str4.trim();
                    }
                }
            }
            return "";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i3 = 0;
        while (true) {
            if (i3 >= charArray.length) {
                break;
            }
            char c2 = charArray[i3];
            if (c2 >= '0' && c2 <= '9') {
                sb.append(c2);
                if (i3 == charArray.length - 1) {
                    arrayList.add(sb.toString());
                    break;
                }
            } else if (sb.length() > 0) {
                arrayList.add(sb.toString());
                sb.delete(0, sb.length());
            }
            if (arrayList.size() > 0) {
                return (String) arrayList.get(0);
            }
            i3++;
        }
        StringBuilder sb2 = new StringBuilder();
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            sb2.append((String) obj);
            sb2.append("_");
        }
        if (sb2.length() > 0) {
            sb2.delete(sb2.length() - 1, sb2.length());
        }
        return sb2.toString();
    }

    public static boolean hp() {
        boolean zJx = ns.jx(com.byazt.di.l.getContext());
        boolean zL = ns.l(com.byazt.di.l.getContext());
        if (com.byazt.di.l.l().u()) {
            return zJx || zL;
        }
        return false;
    }

    public final void hp(jx jxVar, String str, Map<String, Object> map) {
        if (jxVar == null || jxVar.getAdType() != 5) {
            return;
        }
        a.hp(jxVar, this.hp, str);
    }
}
