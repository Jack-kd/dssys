package com.byazt.qvz;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 236, 34})
/* loaded from: classes3.dex */
public class l {
    public static Map<String, Map<String, Map<String, Integer>>> hp = new HashMap();

    private static void a(String str, String str2) {
        hp(str, str2, "fb_c");
    }

    private static void e(String str, String str2) {
        hp(str, str2, "lve_c");
    }

    private static void eb(String str, String str2) {
        hp(str, str2, "pe_c");
    }

    private static void gu(String str, String str2) {
        hp(str, str2, "lvc_c");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(java.lang.String r2, com.byazt.xci.mp r3) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L8
            goto Ld3
        L8:
            java.lang.String r0 = "pitaya"
            java.lang.Object r0 = com.byazt.ym.j.getService(r0)
            com.byazt.sf.jx r0 = (com.byazt.sf.jx) r0
            if (r0 == 0) goto L1a
            boolean r0 = r0.isPitayaEnvAvailable()
            if (r0 != 0) goto L1a
            goto Ld3
        L1a:
            int r0 = com.byazt.zn.ky.jl(r3)     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r1 = "-1"
            java.lang.String r3 = com.byazt.zn.ky.hp(r3, r1)     // Catch: java.lang.Throwable -> Ld3
            int r1 = r2.hashCode()     // Catch: java.lang.Throwable -> Ld3
            switch(r1) {
                case -2093321865: goto L99;
                case -1643912491: goto L8e;
                case -1643892427: goto L84;
                case 3529469: goto L79;
                case 211925867: goto L6f;
                case 224898501: goto L65;
                case 566194974: goto L5b;
                case 578633749: goto L51;
                case 1409113254: goto L47;
                case 1912965437: goto L3c;
                case 1925938071: goto L31;
                default: goto L2f;
            }     // Catch: java.lang.Throwable -> Ld3
        L2f:
            goto La3
        L31:
            java.lang.String r1 = "play_start"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 4
            goto La4
        L3c:
            java.lang.String r1 = "play_error"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 9
            goto La4
        L47:
            java.lang.String r1 = "load_video_success"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 2
            goto La4
        L51:
            java.lang.String r1 = "feed_pause"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 7
            goto La4
        L5b:
            java.lang.String r1 = "feed_break"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 6
            goto La4
        L65:
            java.lang.String r1 = "load_video_start"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 0
            goto La4
        L6f:
            java.lang.String r1 = "load_video_error"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 3
            goto La4
        L79:
            java.lang.String r1 = "show"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 10
            goto La4
        L84:
            java.lang.String r1 = "feed_play"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 5
            goto La4
        L8e:
            java.lang.String r1 = "feed_over"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 8
            goto La4
        L99:
            java.lang.String r1 = "load_video_cancel"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto La3
            r2 = 1
            goto La4
        La3:
            r2 = -1
        La4:
            switch(r2) {
                case 0: goto Ld0;
                case 1: goto Lcc;
                case 2: goto Lc8;
                case 3: goto Lc4;
                case 4: goto Lc0;
                case 5: goto Lbc;
                case 6: goto Lb8;
                case 7: goto Lb4;
                case 8: goto Lb0;
                case 9: goto Lac;
                case 10: goto La8;
                default: goto La7;
            }     // Catch: java.lang.Throwable -> Ld3
        La7:
            goto Ld3
        La8:
            hp(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lac:
            eb(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lb0:
            j(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lb4:
            w(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lb8:
            a(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lbc:
            jx(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lc0:
            l(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lc4:
            e(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lc8:
            q(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Lcc:
            gu(r0, r3)     // Catch: java.lang.Throwable -> Ld3
            return
        Ld0:
            s(r0, r3)     // Catch: java.lang.Throwable -> Ld3
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qvz.l.hp(java.lang.String, com.byazt.xci.mp):void");
    }

    private static void j(String str, String str2) {
        hp(str, str2, "fo_c");
    }

    private static void jx(String str, String str2) {
        hp(str, str2, "fpl_c");
    }

    private static void l(String str, String str2) {
        hp(str, str2, "ps_c");
    }

    private static void q(String str, String str2) {
        hp(str, str2, "lvsu_c");
    }

    private static void s(String str, String str2) {
        hp(str, str2, "lvs_c");
    }

    private static void w(String str, String str2) {
        hp(str, str2, "fpu_c");
    }

    private static void hp(String str, String str2) {
        hp(str, str2, "show_c");
    }

    private static void hp(String str, String str2, String str3) {
        Map<String, Map<String, Integer>> map = hp.get(str);
        if (map == null) {
            map = new HashMap<>();
            hp.put(str, map);
        }
        Map<String, Integer> map2 = map.get(str2);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(str2, map2);
        }
        Integer num = map2.get(str3);
        if (num == null) {
            map2.put(str3, 1);
        } else {
            map2.put(str3, Integer.valueOf(num.intValue() + 1));
        }
    }

    public static JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!hp.isEmpty()) {
            try {
                for (Map.Entry<String, Map<String, Map<String, Integer>>> entry : hp.entrySet()) {
                    String key = entry.getKey();
                    Map<String, Map<String, Integer>> value = entry.getValue();
                    JSONObject jSONObject2 = new JSONObject();
                    if (value != null) {
                        for (Map.Entry<String, Map<String, Integer>> entry2 : value.entrySet()) {
                            String key2 = entry2.getKey();
                            Map<String, Integer> value2 = entry2.getValue();
                            JSONObject jSONObject3 = new JSONObject();
                            if (value2 != null) {
                                for (Map.Entry<String, Integer> entry3 : value2.entrySet()) {
                                    jSONObject3.put(entry3.getKey(), entry3.getValue());
                                }
                            }
                            jSONObject2.put(key2, jSONObject3);
                        }
                    }
                    jSONObject.put(key, jSONObject2);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }
}
