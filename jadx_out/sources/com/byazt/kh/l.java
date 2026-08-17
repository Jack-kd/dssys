package com.byazt.kh;

import com.byazt.ik.a;
import com.byazt.ll.l;
import com.byazt.qva.jx;
import com.bytedance.pangle.log.ZeusLogger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 430, 34})
/* loaded from: classes.dex */
public class l {
    public static boolean hp(String str, boolean z2, boolean z3, String str2, int i2, int i3) {
        Throwable th;
        int i4;
        int i5;
        int i6;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            new hp(new com.byazt.eg.hp().hp(str)).hp(z2, z3);
            if (i3 != 0) {
                if (i3 == 1) {
                    i6 = l.hp.hp;
                } else if (i3 == 2) {
                    i6 = l.hp.f22642l;
                } else {
                    i5 = 0;
                    String str3 = "rmSo:" + z3 + " rmDex:" + z2;
                    ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(str3)));
                    hp(i5, str2, i2, System.currentTimeMillis() - jCurrentTimeMillis, (Throwable) null, str3);
                }
                i5 = i6;
                String str32 = "rmSo:" + z3 + " rmDex:" + z2;
                ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(str32)));
                hp(i5, str2, i2, System.currentTimeMillis() - jCurrentTimeMillis, (Throwable) null, str32);
            }
            return true;
        } catch (Throwable th2) {
            try {
                i4 = 0;
                try {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "rmEntries failed. zipFile:" + str + " rmDex:" + z2 + " rmSO:" + z3, th2);
                    if (i3 != 0) {
                        int i7 = i3 == 1 ? l.hp.jx : i3 == 2 ? l.hp.f22640j : 0;
                        String str4 = "rmSo:" + z3 + " rmDex:" + z2;
                        ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(str4)));
                        hp(i7, str2, i2, System.currentTimeMillis() - jCurrentTimeMillis, th2, str4);
                    }
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    th = th2;
                    Throwable th4 = th;
                    if (i3 == 0) {
                        throw th4;
                    }
                    int i8 = i3 != 1 ? i3 == 2 ? l.hp.f22640j : i4 : l.hp.jx;
                    String str5 = "rmSo:" + z3 + " rmDex:" + z2;
                    ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(str5)));
                    hp(i8, str2, i2, System.currentTimeMillis() - jCurrentTimeMillis, th, str5);
                    throw th4;
                }
            } catch (Throwable th5) {
                th = th5;
                th = th2;
                i4 = 0;
            }
        }
    }

    private static void hp(int i2, String str, int i3, long j2, Throwable th, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", jx.hp(Integer.valueOf(i2)));
            jSONObject.putOpt("plugin_package_name", jx.hp(str));
            jSONObject.putOpt("version_code", jx.hp(Integer.valueOf(i3)));
            jSONObject3.putOpt("duration", Integer.valueOf(jx.l(Long.valueOf(j2))));
            jSONObject2.putOpt("message", str2 + jx.hp(th));
        } catch (JSONException e2) {
            a.hp(e2);
        }
        com.byazt.ll.l.hp().hp(com.byazt.ll.l.f22630e, jSONObject, jSONObject3, jSONObject2);
    }
}
