package com.byazt.lca;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.pg.jl;
import com.byazt.uid.eb;
import com.byazt.zn.ec;
import com.byazt.zn.o;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 957, 28})
/* loaded from: classes3.dex */
public class hp {
    public static long hp = -1;

    /* renamed from: j, reason: collision with root package name */
    public static volatile String f22419j = null;
    public static AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public static boolean f22420l = false;

    public static String jx() {
        if (!TextUtils.isEmpty(f22419j)) {
            return f22419j;
        }
        String strHp = j.hp().hp((String) null);
        f22419j = strHp;
        return strHp;
    }

    public static boolean l() {
        if (f22420l) {
            return true;
        }
        if (hp == -1) {
            return false;
        }
        boolean z2 = SystemClock.elapsedRealtime() - hp > 60000;
        f22420l = z2;
        return z2;
    }

    public static void hp() {
        if (hp > -1) {
            return;
        }
        hp = SystemClock.elapsedRealtime();
    }

    public static JSONObject hp(Context context, int i2) {
        return l(context, i2);
    }

    private static void hp(int i2, Throwable th) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("type", Integer.valueOf(i2));
            k.hp().hp("b_ad_req", jSONObject, th);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x0389 A[Catch: all -> 0x002f, TryCatch #1 {all -> 0x002f, blocks: (B:3:0x0009, B:5:0x0026, B:12:0x0033, B:15:0x0045, B:17:0x004f, B:20:0x0056, B:27:0x0073, B:29:0x007d, B:32:0x0084, B:37:0x0095, B:40:0x00a2, B:42:0x00ac, B:45:0x00b3, B:50:0x00c8, B:53:0x00d4, B:57:0x00eb, B:59:0x00f5, B:62:0x00fc, B:67:0x0115, B:70:0x01b2, B:72:0x01bc, B:75:0x01c3, B:80:0x01dd, B:82:0x02a1, B:85:0x02ae, B:87:0x02b8, B:90:0x02bf, B:98:0x02d5, B:100:0x02df, B:103:0x02e6, B:111:0x02fc, B:113:0x0306, B:116:0x030d, B:124:0x0323, B:126:0x032d, B:130:0x0336, B:138:0x034c, B:140:0x0356, B:145:0x0367, B:148:0x0377, B:150:0x0385, B:152:0x0390, B:154:0x03a3, B:155:0x03a8, B:157:0x03b7, B:158:0x03bc, B:162:0x03d8, B:161:0x03d5, B:151:0x0389, B:141:0x035a, B:144:0x0364, B:131:0x033a, B:135:0x0345, B:117:0x0311, B:121:0x031c, B:104:0x02ea, B:108:0x02f5, B:91:0x02c3, B:95:0x02ce, B:76:0x01c7, B:79:0x01da, B:63:0x0100, B:66:0x0112, B:54:0x00dc, B:46:0x00b7, B:49:0x00c5, B:33:0x0088, B:36:0x0092, B:21:0x005a, B:24:0x006c), top: B:168:0x0009, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject l(android.content.Context r19, int r20) {
        /*
            Method dump skipped, instructions count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.lca.hp.l(android.content.Context, int):org.json.JSONObject");
    }

    public static void hp(JSONObject jSONObject, int i2) throws JSONException {
        if (!jx.hp().hp(i2)) {
            l(jSONObject);
            return;
        }
        JSONArray jSONArrayV = j.hp().v();
        if (jSONArrayV != null) {
            if (jSONArrayV.length() > 0) {
                jSONObject.put("scheme_success_list", jSONArrayV);
            }
            if (jx.get()) {
                return;
            }
            jx.set(true);
            com.byazt.uid.w.l(new eb("tt-scheme") { // from class: com.byazt.lca.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        hp.l(null);
                    } catch (Exception unused) {
                    }
                    hp.jx.set(false);
                }
            });
            return;
        }
        l(jSONObject);
    }

    public static String[] hp(int i2) {
        try {
            return ((jl) com.byazt.ym.j.getService("device_info_new")).getNewIpAddrs(!l());
        } catch (Exception unused) {
            return new String[]{"", ""};
        }
    }

    public static String hp(String str, int i2) {
        return ec.l(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(JSONObject jSONObject) throws JSONException {
        Set<String> setEq = sz.l().eq();
        if (setEq == null || setEq.size() <= 0) {
            return;
        }
        Map<String, Boolean> mapHp = o.hp(259200000L);
        final JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        for (Map.Entry<String, Boolean> entry : mapHp.entrySet()) {
            String key = entry.getKey();
            if (setEq.contains(key)) {
                String scheme = Uri.parse(key).getScheme();
                if (entry.getValue().booleanValue()) {
                    jSONArray.put(scheme);
                } else {
                    jSONArray2.put(scheme);
                }
            }
        }
        if (jSONObject != null && jSONArray.length() > 0) {
            jSONObject.put("scheme_success_list", jSONArray);
        }
        if (jSONObject != null && jSONArray2.length() > 0) {
            jSONObject.put("scheme_fail_list", jSONArray2);
        }
        if (jSONObject == null) {
            j.hp().hp(jSONArray);
        } else {
            com.byazt.uid.w.l(new eb("tt-scheme-save") { // from class: com.byazt.lca.hp.2
                @Override // java.lang.Runnable
                public void run() {
                    j.hp().hp(jSONArray);
                }
            });
        }
    }
}
