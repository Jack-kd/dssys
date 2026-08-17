package com.byazt.ney;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.anythink.core.common.r.g;
import com.byazt.aj.eb;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1539, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public final Map<String, String> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ctq.jx f23553l;

    public hp(String str) {
        this.f23553l = com.byazt.ry.j.hp(com.byazt.di.hp.jl().zy(), str);
        jx();
    }

    private void jx(int i2, String str, double d2) {
        if (TextUtils.isEmpty(str) || i2 != 3) {
            return;
        }
        this.f23553l.put(str, d2 + "_" + System.currentTimeMillis());
        hp(str);
    }

    public abstract Map<String, String> hp();

    public abstract JSONObject hp(com.byazt.tgw.jx jxVar);

    public void hp(int i2, String str, int i3, double d2) {
        if (i3 == 1) {
            hp(i2, str, d2);
        } else if (i3 == 3) {
            l(i2, str, d2);
        } else if (i3 == 2) {
            jx(i2, str, d2);
        }
    }

    public abstract void hp(String str, int i2, String str2);

    public abstract void hp(String str, String str2);

    public void l() {
        Map all = this.f23553l.getAll();
        if (all != null) {
            for (Map.Entry entry : all.entrySet()) {
                if (entry != null) {
                    hp(String.valueOf(entry.getKey()), String.valueOf(entry.getValue()));
                }
            }
        }
    }

    public abstract boolean l(String str, JSONObject jSONObject, Map<String, Object> map);

    public double hp(int i2, String str, int i3) {
        if (i3 == 1) {
            return BigDecimal.valueOf(Double.parseDouble(hp(i2, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        if (i3 == 3) {
            return BigDecimal.valueOf(Double.parseDouble(l(i2, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        if (i3 == 2) {
            return BigDecimal.valueOf(Double.parseDouble(jx(i2, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        return 0.0d;
    }

    private String jx(int i2, String str) throws NumberFormatException {
        if (!TextUtils.isEmpty(str) && i2 == 3) {
            String string = this.f23553l.getString(str, null);
            if (!TextUtils.isEmpty(string) && !"0".equals(string)) {
                String[] strArrSplit = string.split("_");
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if (str3.matches("[0-9]+")) {
                        try {
                            if (com.byazt.di.l.l().hp(System.currentTimeMillis() - Long.parseLong(str3))) {
                                return str2;
                            }
                            this.f23553l.remove(str);
                        } catch (NumberFormatException unused) {
                            this.f23553l.remove(str);
                            eb.hp("自定义上报 saveTime format exception valueTimestamp " + string);
                        }
                    } else {
                        this.f23553l.remove(str);
                        eb.hp("自定义上报 saveTime is not number valueTimestamp " + string);
                    }
                }
            }
        }
        return "0";
    }

    private void l(int i2, String str, double d2) {
        if (TextUtils.isEmpty(str) || i2 != 3) {
            return;
        }
        this.f23553l.put(str, d2 + "_" + System.currentTimeMillis());
        hp(str);
    }

    public void hp(double d2, double d3, String str, String str2) {
        if (this.f23553l == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        hp(str, "_last_post_cpm_", str2, d2);
        hp(str, "_last_bidding_cpm_", str2, d3);
    }

    private String l(int i2, String str) {
        if (!TextUtils.isEmpty(str) && i2 == 3) {
            String string = this.f23553l.getString(str, null);
            if (!TextUtils.isEmpty(string) && !"0".equals(string)) {
                String[] strArrSplit = string.split("_");
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if (com.byazt.di.l.l().hp(System.currentTimeMillis() - Long.parseLong(str3))) {
                        return str2;
                    }
                    this.f23553l.remove(str);
                }
            }
        }
        return "0";
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double[] hp(int r18, double r19, double r21, java.lang.String r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ney.hp.hp(int, double, double, java.lang.String, java.lang.String):double[]");
    }

    public String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (char c2 : charArray) {
            sb.append(this.hp.get(String.valueOf(c2)));
        }
        return sb.toString();
    }

    public void jx() {
        this.hp.put("0", "a");
        this.hp.put("1", "b");
        this.hp.put("2", "c");
        this.hp.put("3", "d");
        this.hp.put("4", "e");
        this.hp.put("5", "f");
        this.hp.put("6", g.f7297a);
        this.hp.put("7", "h");
        this.hp.put(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "i");
        this.hp.put("9", "j");
        this.hp.put(i.f2495E, "k");
    }

    public void hp(String str, String str2, String str3, double d2) {
        String str4 = str + str2;
        this.f23553l.put(str4, str3 + "_" + d2);
    }

    private synchronized void hp(int i2, String str, double d2) {
        String str2 = "label_size_" + str;
        int i3 = this.f23553l.getInt(str2, 0) + 1;
        String strHp = hp(str, i3);
        String strHp2 = hp(str, d2);
        hp(strHp, i2, strHp2);
        this.f23553l.put(strHp, strHp2);
        this.f23553l.put(str2, i3);
    }

    private String hp(int i2, String str) {
        if (!TextUtils.isEmpty(str) && i2 == 3) {
            double[] dArr = new double[2];
            Iterator<Map.Entry<String, String>> it = hp().entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                if (next != null) {
                    String value = next.getValue();
                    if (!TextUtils.isEmpty(value) && value.contains(str)) {
                        String[] strArrSplit = value.split("_");
                        String str2 = strArrSplit[0];
                        String str3 = strArrSplit[1];
                        String str4 = strArrSplit[2];
                        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                            if (com.byazt.di.l.l().hp(System.currentTimeMillis() - Long.parseLong(str4))) {
                                dArr[0] = dArr[0] + 1.0d;
                                dArr[1] = dArr[1] + Double.parseDouble(str3);
                            } else {
                                it.remove();
                                this.f23553l.remove(next.getKey());
                                String str5 = "label_size_" + str;
                                int i3 = this.f23553l.getInt(str5, 0);
                                if (i3 > 0) {
                                    this.f23553l.put(str5, i3 - 1);
                                }
                            }
                        }
                    }
                }
            }
            return hp(dArr);
        }
        return "0";
    }

    public void hp(String str) {
        for (int i2 = this.f23553l.getInt("label_size_" + str, 0); i2 > 0; i2--) {
            try {
                String strHp = hp(str, i2);
                this.f23553l.remove(strHp);
                hp().remove(strHp);
            } catch (Throwable th) {
                com.byazt.aw.l.j("CalculateLabelValueImpl", "clearFromSpByRit,ignore:" + th.toString());
            }
        }
    }

    private String hp(String str, int i2) {
        return "cpm_key_" + str + "_" + i2;
    }

    private String hp(String str, double d2) {
        return str + "_" + d2 + "_" + System.currentTimeMillis();
    }

    public String hp(double[] dArr) {
        double d2 = dArr[0];
        if (d2 != 0.0d) {
            return new BigDecimal(dArr[1] / d2).setScale(2, RoundingMode.HALF_UP).toString();
        }
        return "-1.0";
    }

    public static String hp(int i2) {
        switch (i2) {
            case 1:
                return "banner";
            case 2:
                return MediationConstant.RIT_TYPE_INTERSTITIAL;
            case 3:
            case 4:
                return MediationConstant.RIT_TYPE_SPLASH;
            case 5:
                return "native";
            case 6:
            default:
                return null;
            case 7:
                return MediationConstant.RIT_TYPE_REWARD_VIDEO;
            case 8:
                return "fullscreenVideo";
            case 9:
                return MediationConstant.RIT_TYPE_DRAW;
            case 10:
                return MediationConstant.RIT_TYPE_INTERSTITIAL_FULL;
        }
    }

    public void hp(String str, JSONObject jSONObject, Map<String, Object> map) throws JSONException {
        if (!com.byazt.di.l.l().qu() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (l(str, jSONObject2, map == null ? new HashMap<>() : map)) {
            try {
                jSONObject.putOpt("label", jSONObject2);
                if (map == null || map.get("cost_time") == null) {
                    return;
                }
                jSONObject.put("uvalueExcTime", map.get("cost_time"));
            } catch (JSONException unused) {
            }
        }
    }
}
