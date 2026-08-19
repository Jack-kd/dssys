package com.byazt.xci;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.anythink.core.common.g.c;
import com.byazt.uhg.q;
import com.byazt.zn.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 572})
/* loaded from: classes3.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public static final Set<String> f27446a;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f27447e;
    public static final Set<String> eb;
    public static final Map<String, String> gu;
    public static final Set<String> hp;
    public static volatile boolean jl;

    /* renamed from: q, reason: collision with root package name */
    public static final Set<String> f27449q;

    /* renamed from: s, reason: collision with root package name */
    public static final Set<String> f27450s;

    /* renamed from: w, reason: collision with root package name */
    public static final Set<String> f27451w;

    /* renamed from: l, reason: collision with root package name */
    public int f27452l;
    public static final Set<String> jx = new HashSet();

    /* renamed from: j, reason: collision with root package name */
    public static final Set<String> f27448j = new CopyOnWriteArraySet();

    static {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        f27451w = copyOnWriteArraySet;
        f27446a = new CopyOnWriteArraySet();
        eb = new CopyOnWriteArraySet();
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        f27450s = copyOnWriteArraySet2;
        f27449q = new CopyOnWriteArraySet();
        f27447e = false;
        gu = new HashMap();
        hp = new CopyOnWriteArraySet();
        jl = false;
        copyOnWriteArraySet2.addAll(Arrays.asList(".*thefatherofsalmon\\.com.*@3", ".*qallzmx\\.quicklyopen\\.com.*@3", ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*@3", ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*@3"));
        copyOnWriteArraySet.addAll(Arrays.asList("^hap://app", "^hwfastapp://", ".*thefatherofsalmon\\.com.*", ".*qallzmx\\.quicklyopen\\.com.*", ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*", ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*"));
    }

    public r(JSONObject jSONObject) {
        this.f27452l = jSONObject.optInt("block_auto_open");
    }

    public static void l(JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("turn_up_white_list");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                f27448j.clear();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        f27448j.add(strOptString);
                    }
                }
            }
        } catch (Exception unused) {
        }
        try {
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("turn_up_black_list_1");
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                f27451w.clear();
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    String strOptString2 = jSONArrayOptJSONArray2.optString(i3);
                    if (!TextUtils.isEmpty(strOptString2)) {
                        f27451w.add(strOptString2);
                    }
                }
            }
        } catch (Exception unused2) {
        }
        try {
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("turn_up_black_list_2");
            if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                f27446a.clear();
                for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                    String strOptString3 = jSONArrayOptJSONArray3.optString(i4);
                    if (!TextUtils.isEmpty(strOptString3)) {
                        f27446a.add(strOptString3);
                    }
                }
            }
        } catch (Exception unused3) {
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject.optJSONArray("url_report_rule_list");
                if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                    eb.clear();
                    for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                        String strOptString4 = jSONArrayOptJSONArray4.optString(i5);
                        if (!TextUtils.isEmpty(strOptString4)) {
                            eb.add(strOptString4);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject.optJSONArray("net_url_block_list");
                if (jSONArrayOptJSONArray5 != null && jSONArrayOptJSONArray5.length() > 0) {
                    f27450s.clear();
                    for (int i6 = 0; i6 < jSONArrayOptJSONArray5.length(); i6++) {
                        String strOptString5 = jSONArrayOptJSONArray5.optString(i6);
                        if (!TextUtils.isEmpty(strOptString5)) {
                            f27450s.add(strOptString5);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject.optJSONArray("dialog_black_list");
                if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() > 0) {
                    f27449q.clear();
                    for (int i7 = 0; i7 < jSONArrayOptJSONArray6.length(); i7++) {
                        String strOptString6 = jSONArrayOptJSONArray6.optString(i7);
                        if (!TextUtils.isEmpty(strOptString6)) {
                            f27449q.add(strOptString6);
                        }
                    }
                }
            } catch (Exception unused4) {
            }
        }
        f27447e = true;
    }

    public void hp(JSONObject jSONObject) {
        try {
            jSONObject.put("block_auto_open", this.f27452l);
        } catch (JSONException unused) {
        }
    }

    public static void hp(com.byazt.ctq.w wVar) {
        wVar.put("turn_up_white_list", f27448j);
        wVar.put("turn_up_black_list_1", f27451w);
        wVar.put("turn_up_black_list_2", f27446a);
        wVar.put("url_report_rule_list", eb);
        wVar.put("net_url_block_list", f27450s);
        wVar.put("_turn_up_is_get_list", f27447e);
        wVar.put("dialog_black_list", f27449q);
    }

    public static int hp(mp mpVar) {
        r rVarBj;
        if (mpVar == null || (rVarBj = mpVar.bj()) == null) {
            return 0;
        }
        return rVarBj.f27452l;
    }

    public static boolean hp(WebView webView, AtomicInteger atomicInteger, com.byazt.jz.ud udVar, String str, boolean z2, boolean z3) {
        if (!str.startsWith("bytedance") && !str.startsWith("nativeapp") && !str.startsWith("bds")) {
            if (!com.byazt.zn.ky.hp(str, atomicInteger) && hp(webView, atomicInteger, str, true)) {
                return true;
            }
            if (udVar == null || !TextUtils.isEmpty(l(str, jx)) || !TextUtils.isEmpty(l(str, f27448j))) {
                return false;
            }
            String strL = l(str, eb);
            if (!TextUtils.isEmpty(strL)) {
                l(udVar.s(), str, strL);
            }
            String strHp = hp(str, udVar.w(z3), z2, z3);
            if (!TextUtils.isEmpty(strHp) && f27447e) {
                hp(udVar.s(), str, strHp);
            }
            if (!TextUtils.isEmpty(strHp)) {
                return true;
            }
        }
        return false;
    }

    private static boolean hp(WebView webView, AtomicInteger atomicInteger, String str, boolean z2) {
        if (TextUtils.isEmpty(str) || webView == null) {
            return false;
        }
        final String[] strArr = {""};
        try {
            final String path = Uri.parse(str).getPath();
            Map<String, String> map = gu;
            if (map.containsKey(path)) {
                return hp(atomicInteger, map.get(path), str, webView, z2);
            }
            if (!jl) {
                for (String str2 : com.byazt.zn.nu.hp("cloud_path_check_res").get("cloud_path_check_res", new HashSet())) {
                    if (!TextUtils.isEmpty(str2)) {
                        String[] strArrSplit = str2.split(",");
                        gu.put(strArrSplit[0], strArrSplit[1]);
                    }
                }
                Map<String, String> map2 = gu;
                if (map2.containsKey(path)) {
                    return hp(atomicInteger, map2.get(path), str, webView, z2);
                }
            }
            com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
            wVarL.hp(Uri.parse("https://scc.bytedance.com/scc_sdk/url_scan_v4").buildUpon().appendQueryParameter("aid", "1181").appendQueryParameter("device_platform", "android").appendQueryParameter("device_id", com.byazt.zn.v.hp()).appendQueryParameter("scc_mode", "raw").appendQueryParameter("scc_from", "App").toString());
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put(com.umeng.ccg.a.f49756j, com.anythink.core.common.m.f.f5776Z);
            jSONObject.put("url", str);
            jSONObject.put("extra", "");
            wVarL.hp(jSONObject);
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.xci.r.1
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    try {
                        strArr[0] = new JSONObject(lVar.w()).optJSONObject("data").optString("label");
                    } catch (Throwable unused) {
                    }
                    if (TextUtils.isEmpty(strArr[0])) {
                        return;
                    }
                    if (r.gu.size() > 1000) {
                        Iterator it = r.gu.entrySet().iterator();
                        for (int i2 = 0; i2 < 200; i2++) {
                            it.next();
                            it.remove();
                        }
                    }
                    r.gu.put(path, strArr[0]);
                    if (!r.jl) {
                        boolean unused2 = r.jl = true;
                        com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.xci.r.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.byazt.ow.w wVarHp = com.byazt.zn.nu.hp("cloud_path_check_res");
                                wVarHp.clear();
                                HashSet hashSet = new HashSet();
                                for (Map.Entry entry : r.gu.entrySet()) {
                                    hashSet.add(((String) entry.getKey()) + "," + ((String) entry.getValue()));
                                }
                                wVarHp.put("cloud_path_check_res", hashSet);
                                boolean unused3 = r.jl = false;
                            }
                        }, c.f3507a);
                    }
                    countDownLatch.countDown();
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    countDownLatch.countDown();
                }
            });
            countDownLatch.await();
            return hp(atomicInteger, strArr[0], str, webView, z2);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void l(com.byazt.ctq.w wVar) {
        Set<String> set = f27448j;
        set.addAll(wVar.get("turn_up_white_list", set));
        Set<String> set2 = f27451w;
        set2.addAll(wVar.get("turn_up_black_list_1", set2));
        Set<String> set3 = f27446a;
        set3.addAll(wVar.get("turn_up_black_list_2", set3));
        Set<String> set4 = eb;
        set4.addAll(wVar.get("url_report_rule_list", set4));
        Set<String> set5 = f27450s;
        set5.addAll(wVar.get("net_url_block_list", set5));
        f27447e = wVar.get("_turn_up_is_get_list", false);
        Set<String> set6 = f27449q;
        set6.addAll(wVar.get("dialog_black_list", set6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l(String str, Set<String> set) {
        if (str == null) {
            return null;
        }
        try {
            for (String str2 : set) {
                if (!TextUtils.isEmpty(str2) && Pattern.compile(str2).matcher(str).find()) {
                    return str2;
                }
            }
            return null;
        } catch (Exception e2) {
            com.byazt.ymw.u.l("JumpModel", e2.getMessage());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static boolean hp(AtomicInteger atomicInteger, String str, String str2, WebView webView, boolean z2) {
        String str3;
        if (webView == null || TextUtils.isEmpty(str) || atomicInteger == null) {
            return false;
        }
        if (atomicInteger.get() == 1) {
            return true;
        }
        switch (str.hashCode()) {
            case -284840886:
                str3 = "unknown";
                str.equals(str3);
                break;
            case 3181155:
                str3 = "gray";
                str.equals(str3);
                break;
            case 93818879:
                if (str.equals("black")) {
                    atomicInteger.set(1);
                    com.byazt.zn.w.hp(webView.getContext(), (String) null, true, (w.hp) null);
                    break;
                }
                break;
            case 113101865:
                str3 = "white";
                str.equals(str3);
                break;
        }
        return false;
    }

    public static void l(final mp mpVar, final String str, final String str2) {
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.r.4
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("url", str);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("aid", mpVar.cx());
                jSONObject2.put("cid", mpVar.j());
                jSONObject2.put("req_id", mpVar.ns());
                jSONObject2.put("customer_id", com.byazt.zn.ky.v(mpVar));
                jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, jSONObject2.toString());
                jSONObject.putOpt("pattern", str2);
                return com.byazt.jlb.l.l().hp("stats_url_report_rule").s(mpVar.w_()).l(jSONObject.toString());
            }
        }, "stats_url_report_rule");
    }

    public static com.byazt.uhg.q l() {
        return new com.byazt.uhg.q() { // from class: com.byazt.xci.r.5
            @Override // com.byazt.uhg.q
            public com.byazt.uhg.u hp(q.hp hpVar) throws IOException, NumberFormatException {
                String str;
                com.byazt.uhg.u uVarHp = hpVar.hp(hpVar.hp());
                String str2 = "";
                final String strHp = uVarHp.hp("csj-location-record", "");
                final String strHp2 = uVarHp.hp("csj-source-from", "");
                final String strHp3 = uVarHp.hp("csj-extra-info", "");
                if (uVarHp.jx() == 8848) {
                    final String strW = uVarHp.w();
                    com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.r.5.1
                        @Override // com.byazt.fq.hp
                        public com.byazt.jlb.hp hp() throws Exception {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.putOpt("url", strW);
                            jSONObject.putOpt("sourceFrom", strHp2);
                            jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, strHp3);
                            return com.byazt.jlb.l.l().hp("stats_net_block_url").l(jSONObject.toString());
                        }
                    }, "stats_net_block_url");
                }
                int i2 = 0;
                try {
                    String[] strArrHp = r.hp(strHp);
                    if (strArrHp == null || strArrHp.length <= 1) {
                        str = "";
                    } else {
                        String str3 = strArrHp[0];
                        try {
                            str = strArrHp[strArrHp.length - 1];
                            str2 = str3;
                        } catch (Exception unused) {
                            str = "";
                            str2 = str3;
                        }
                    }
                    try {
                        i2 = Integer.parseInt(strHp2);
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    str = "";
                }
                final String str4 = str2;
                final String str5 = str;
                if (!TextUtils.isEmpty(strHp) && i2 != 0 && TextUtils.isEmpty(r.l(str4, r.f27448j))) {
                    com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.r.5.2
                        @Override // com.byazt.fq.hp
                        public com.byazt.jlb.hp hp() throws Exception {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.putOpt("url", strHp);
                            jSONObject.putOpt("sourceFrom", strHp2);
                            jSONObject.putOpt("sourceUrl", str4);
                            jSONObject.putOpt("destUrl", str5);
                            jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, strHp3);
                            return com.byazt.jlb.l.l().hp("stats_net_locations_url").l(jSONObject.toString());
                        }
                    }, "stats_net_locations_url");
                }
                return uVarHp;
            }
        };
    }

    public static boolean hp(WebView webView, AtomicInteger atomicInteger, com.byazt.jz.ud udVar, WebResourceRequest webResourceRequest, boolean z2, boolean z3) {
        Uri url;
        if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) {
            return false;
        }
        return hp(webView, atomicInteger, udVar, url.toString(), z2, z3);
    }

    public static boolean hp(final com.byazt.jz.ud udVar, final int i2, final String str) {
        final String strL = l(str, f27449q);
        final boolean z2 = (f27447e && TextUtils.isEmpty(strL)) ? false : true;
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.r.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("url", str);
                    jSONObject.putOpt("type", Integer.valueOf(i2));
                    jSONObject.putOpt("is_block", Boolean.valueOf(z2));
                    jSONObject.putOpt("is_get_setting", Boolean.valueOf(r.f27447e));
                    jSONObject.putOpt("pattern", strL);
                    jSONObject.putOpt("customer_id", com.byazt.zn.ky.v(udVar.s()));
                    return com.byazt.jlb.l.l().hp("stats_dialog_report_rule").s(udVar.s().w_()).l(jSONObject.toString());
                } catch (Throwable unused) {
                    return com.byazt.jlb.l.l();
                }
            }
        }, "stats_dialog_report_rule");
        return z2;
    }

    private static String hp(String str, int i2, boolean z2, boolean z3) {
        boolean z4 = (!z3 || str.startsWith("http://") || str.startsWith("https://")) ? false : true;
        if (i2 == 1) {
            if (f27447e) {
                return l(str, f27446a);
            }
            return null;
        }
        if (i2 == 2) {
            if (!f27447e) {
                if (z2) {
                    return "local://no-setting";
                }
                return null;
            }
            if (z4) {
                return "local://short-internal";
            }
            String strL = l(str, f27451w);
            if (!TextUtils.isEmpty(strL)) {
                return strL;
            }
            String strL2 = l(str, f27446a);
            if (TextUtils.isEmpty(strL2)) {
                return null;
            }
            return strL2;
        }
        if (i2 != 3) {
            return null;
        }
        if (z2 || !f27447e) {
            return "local://preload-setting:" + f27447e;
        }
        if (z4) {
            return "local://short-internal";
        }
        String strL3 = l(str, f27451w);
        if (!TextUtils.isEmpty(strL3)) {
            return strL3;
        }
        String strL4 = l(str, f27446a);
        if (TextUtils.isEmpty(strL4)) {
            return null;
        }
        return strL4;
    }

    public static void hp(final mp mpVar, final String str, final String str2) {
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.r.3
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("url", str);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("aid", mpVar.cx());
                jSONObject2.put("cid", mpVar.j());
                jSONObject2.put("req_id", mpVar.ns());
                jSONObject2.put("customer_id", com.byazt.zn.ky.v(mpVar));
                jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, jSONObject2.toString());
                jSONObject.putOpt("pattern", str2);
                return com.byazt.jlb.l.l().hp("stats_block_report").s(mpVar.w_()).l(jSONObject.toString());
            }
        }, "stats_block_report");
    }

    public static Set<String> hp() {
        return f27450s;
    }

    public static String[] hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.substring(1, str.length() - 1).split(",");
    }
}
