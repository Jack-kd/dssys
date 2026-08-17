package com.byazt.jz;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.work.WorkRequest;
import com.anythink.core.common.f.f;
import com.anythink.core.common.f.g;
import com.anythink.core.common.f.q;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.gy.j;
import com.byazt.jz.cx;
import com.byazt.jz.s;
import com.byazt.rz.PluginConstants;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.xci.ux;
import com.byazt.xci.vq;
import com.byazt.xci.zb;
import com.byazt.zn.as;
import com.byazt.zn.ky;
import com.byazt.zn.pu;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.bv;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Function;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 157})
/* loaded from: classes.dex */
public class b implements cx<com.byazt.jdb.hp> {
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public AtomicLong f21803j = new AtomicLong(0);

    /* renamed from: l, reason: collision with root package name */
    public static final AtomicInteger f21802l = new AtomicInteger(0);
    public static final AtomicInteger jx = new AtomicInteger(0);

    @com.byazt.kj.hp(hp = {0, 1, 40, 232})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public final int f21844a;

        /* renamed from: e, reason: collision with root package name */
        public final ArrayList<Integer> f21845e;
        public final String eb;
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f21846j;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final long f21847l;

        /* renamed from: q, reason: collision with root package name */
        public final String f21848q;

        /* renamed from: s, reason: collision with root package name */
        public final com.byazt.xci.hp f21849s;

        /* renamed from: w, reason: collision with root package name */
        public final String f21850w;

        private hp(String str, int i2, int i3, String str2, int i4, String str3, com.byazt.xci.hp hpVar, long j2, long j3, ArrayList<Integer> arrayList) {
            this.hp = i2;
            this.f21846j = i3;
            this.f21850w = str2;
            this.eb = str3;
            this.f21849s = hpVar;
            this.f21848q = str;
            this.f21844a = i4;
            this.f21847l = j2;
            this.jx = j3;
            this.f21845e = arrayList;
        }

        public static hp hp(JSONObject jSONObject) {
            return hp(jSONObject, null, null);
        }

        public static hp hp(JSONObject jSONObject, com.byazt.jt.l lVar, f fVar) {
            Object obj;
            String strOptString = jSONObject.optString("did");
            int iOptInt = jSONObject.optInt("processing_time_ms");
            long jOptLong = jSONObject.optLong("s_receive_ts");
            long jOptLong2 = jSONObject.optLong("s_send_ts");
            int iOptInt2 = jSONObject.optInt("status_code");
            String strOptString2 = jSONObject.optString("desc");
            String strOptString3 = jSONObject.optString("request_id");
            int iOptInt3 = jSONObject.optInt(MediationConstant.KEY_REASON);
            Pair<com.byazt.xci.hp, ArrayList<Integer>> pairHp = com.byazt.jz.hp.hp(jSONObject, lVar, fVar, jOptLong2);
            if (pairHp != null && (obj = pairHp.first) != null) {
                ((com.byazt.xci.hp) obj).hp(jSONObject.optLong("request_after"));
            }
            return pairHp == null ? new hp(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, null, jOptLong, jOptLong2, null) : new hp(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, (com.byazt.xci.hp) pairHp.first, jOptLong, jOptLong2, (ArrayList) pairHp.second);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 40, 529})
    public static class j {
        public final int hp;
        public final zb jx;

        /* renamed from: l, reason: collision with root package name */
        public final boolean f21851l;

        private j(int i2, boolean z2, zb zbVar) {
            this.hp = i2;
            this.f21851l = z2;
            this.jx = zbVar;
        }

        public static j hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int iOptInt = jSONObject.optInt("code");
            boolean zOptBoolean = jSONObject.optBoolean("verify");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            zb zbVar = new zb();
            if (jSONObjectOptJSONObject != null) {
                try {
                    zbVar.hp(jSONObjectOptJSONObject.optInt(MediationConstant.KEY_REASON));
                    zbVar.l(jSONObjectOptJSONObject.optInt("corp_type"));
                    zbVar.jx(jSONObjectOptJSONObject.optInt("reward_amount"));
                    zbVar.hp(jSONObjectOptJSONObject.optString("reward_name"));
                } catch (Throwable unused) {
                }
            }
            return new j(iOptInt, zOptBoolean, zbVar);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 40, 1049})
    public static class jx {
        public final int hp;
        public final vq jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f21852l;

        private jx(int i2, String str, vq vqVar) {
            this.hp = i2;
            this.f21852l = str;
            this.jx = vqVar;
        }

        public static jx hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int iOptInt = jSONObject.optInt("code");
            String strOptString = jSONObject.optString("message");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            vq vqVar = new vq();
            if (jSONObjectOptJSONObject != null) {
                try {
                    vqVar.hp(jSONObjectOptJSONObject.optBoolean("is_open"));
                    vqVar.hp(jSONObjectOptJSONObject.optString("req_id"));
                } catch (Throwable unused) {
                }
            }
            return new jx(iOptInt, strOptString, vqVar);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 40, 527})
    public static class l {
        public final int hp;

        /* renamed from: l, reason: collision with root package name */
        public final boolean f21853l;

        private l(int i2, boolean z2) {
            this.hp = i2;
            this.f21853l = z2;
        }

        public static l hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            return new l(jSONObject.optInt("error_code"), jSONObject.optBoolean("result"));
        }
    }

    public b(Context context) {
        this.hp = context;
    }

    private boolean jx(String str) {
        if (com.byazt.am.jx.jx()) {
            return true;
        }
        if (!com.byazt.am.jx.l(str)) {
            return false;
        }
        String strJ = com.byazt.am.jx.j();
        if (!TextUtils.isEmpty(strJ)) {
            com.byazt.lf.k.hp(strJ, System.currentTimeMillis(), true);
        }
        return true;
    }

    private boolean l(int i2) {
        return i2 == 3 || i2 == 4;
    }

    public void j(com.byazt.jt.l lVar, f fVar, int i2, cx.l lVar2) {
        l(lVar, fVar, i2, lVar2, "/api/ad/union/sdk/get_ads/", 5);
    }

    public void w(final com.byazt.jt.l lVar, final f fVar, final int i2, cx.l lVar2) {
        final com.byazt.de.hp hpVar = new com.byazt.de.hp(lVar2);
        com.byazt.uid.w.l(new com.byazt.uid.eb("bid_p_f") { // from class: com.byazt.jz.b.22
            @Override // java.lang.Runnable
            public void run() {
                b.this.hp(lVar, fVar, i2, hpVar, "/api/ad/union/server_bidding/pre_fetch/", 1);
            }
        });
    }

    private void j(String str) {
        com.byazt.zn.v.hp(str);
        if (com.byazt.lk.hp.hp() != null) {
            com.byazt.lk.hp.hp().hp(str);
        }
    }

    private boolean l(String str) {
        if (com.byazt.am.jx.hp()) {
            return true;
        }
        if (!com.byazt.am.jx.hp(str)) {
            return false;
        }
        String strL = com.byazt.am.jx.l();
        if (!TextUtils.isEmpty(strL)) {
            com.byazt.lf.k.hp(strL, System.currentTimeMillis(), false);
        }
        return true;
    }

    private void w(String str) {
        com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
        jxVarJx.hp(str);
        jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.18
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
            }
        });
    }

    private boolean j(com.byazt.jt.l lVar) {
        return lVar != null && lVar.eb() == 320 && lVar.a() == 640;
    }

    @Override // com.byazt.jz.cx
    public void jx(final com.byazt.jt.l lVar, final f fVar, final int i2, cx.l lVar2) {
        final com.byazt.de.hp hpVar = new com.byazt.de.hp(lVar2);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("bid_g_m") { // from class: com.byazt.jz.b.23
                @Override // java.lang.Runnable
                public void run() {
                    b.this.hp(lVar, fVar, i2, hpVar, "/api/ad/union/server_bidding/get_materials/", 3);
                }
            });
        } else {
            hp(lVar, fVar, i2, hpVar, "/api/ad/union/server_bidding/get_materials/", 3);
        }
    }

    @Override // com.byazt.jz.cx
    public void l(final com.byazt.jt.l lVar, final f fVar, final int i2, cx.l lVar2) {
        final com.byazt.de.hp hpVar = new com.byazt.de.hp(lVar2);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("bid_pre") { // from class: com.byazt.jz.b.12
                @Override // java.lang.Runnable
                public void run() {
                    b.this.hp(lVar, fVar, i2, hpVar, "/api/ad/union/server_bidding/pre_cache/", 2);
                }
            });
        } else {
            hp(lVar, fVar, i2, hpVar, "/api/ad/union/server_bidding/pre_cache/", 2);
        }
    }

    private static String jx(com.byazt.jt.l lVar) {
        String strD = s.u().d();
        String strW = s.u().w();
        s.u().l((String) null);
        String strNs = lVar != null ? lVar.ns() : null;
        if (TextUtils.isEmpty(strD)) {
            return hp(strNs, strW);
        }
        try {
            if (!TextUtils.isEmpty(strD) && strD.contains("game_adapter_did")) {
                strD = hp(new JSONArray(strD)).toString();
            }
        } catch (JSONException unused) {
        }
        if (TextUtils.isEmpty(strNs)) {
            return hp(strD, strW);
        }
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = new JSONArray(strNs);
            int length = jSONArray.length();
            boolean z2 = false;
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (jSONObject != null) {
                    String strOptString = jSONObject.optString("name", null);
                    if (TextUtils.equals("is_shake_ads", strOptString)) {
                        if (TextUtils.equals(strW, "0")) {
                            jSONObject.put(f.a.f3244d, "0");
                            s.u().l("0");
                        } else {
                            s.u().l(jSONObject.optString(f.a.f3244d));
                        }
                        z2 = true;
                    }
                    hashSet.add(strOptString);
                }
            }
            try {
                JSONArray jSONArray2 = new JSONArray(strD);
                int length2 = jSONArray2.length();
                for (int i3 = 0; i3 < length2; i3++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i3);
                    if (jSONObject2 != null) {
                        String strOptString2 = jSONObject2.optString("name", null);
                        if (!hashSet.contains(strOptString2)) {
                            if (TextUtils.equals("is_shake_ads", strOptString2)) {
                                if (TextUtils.equals(strW, "0")) {
                                    jSONObject2.put(f.a.f3244d, "0");
                                    s.u().l("0");
                                } else {
                                    s.u().l(jSONObject2.optString(f.a.f3244d));
                                }
                                z2 = true;
                            }
                            jSONArray.put(jSONObject2);
                        }
                    }
                }
                if (!z2) {
                    jSONArray = l(jSONArray, strW);
                }
                return hp(hp(jSONArray), strW).toString();
            } catch (Throwable unused2) {
                return hp(strNs, strW);
            }
        } catch (Throwable unused3) {
            return hp(strD, strW);
        }
    }

    public JSONObject hp(com.byazt.jt.l lVar, com.byazt.xci.f fVar, int i2, boolean z2, int i3, boolean z3) {
        return hp(lVar, fVar, i2, z2, i3, z3, (String) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject hp(com.byazt.xci.f r10) {
        /*
            r9 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.String r1 = "t_name"
            java.lang.String r2 = "top_page_name"
            java.lang.String r3 = "top_page_title"
            r4 = 0
            if (r10 == 0) goto L53
            java.lang.String r5 = r10.ec     // Catch: java.lang.Throwable -> L2e
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L2e
            if (r5 != 0) goto L53
            java.lang.String r10 = r10.ec     // Catch: java.lang.Throwable -> L2e
            com.byazt.ktd.hp$hp r10 = com.byazt.ktd.hp.l(r10)     // Catch: java.lang.Throwable -> L2e
            if (r10 == 0) goto L53
            java.lang.String r5 = r10.hp     // Catch: java.lang.Throwable -> L2e
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L2e
            r6 = 1
            if (r5 != 0) goto L31
            java.lang.String r5 = r10.hp     // Catch: java.lang.Throwable -> L2e
            r0.put(r3, r5)     // Catch: java.lang.Throwable -> L2e
            r5 = r6
            goto L32
        L2e:
            r10 = move-exception
            goto Lc3
        L31:
            r5 = r4
        L32:
            java.lang.String r7 = r10.f22148l     // Catch: java.lang.Throwable -> L2e
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L2e
            if (r7 != 0) goto L41
            java.lang.String r7 = r10.f22148l     // Catch: java.lang.Throwable -> L2e
            r0.put(r2, r7)     // Catch: java.lang.Throwable -> L2e
            r7 = r6
            goto L42
        L41:
            r7 = r4
        L42:
            java.lang.String r8 = r10.jx     // Catch: java.lang.Throwable -> L2e
            boolean r8 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> L2e
            if (r8 != 0) goto L51
            java.lang.String r10 = r10.jx     // Catch: java.lang.Throwable -> L2e
            r0.put(r1, r10)     // Catch: java.lang.Throwable -> L2e
        L4f:
            r4 = r5
            goto L55
        L51:
            r6 = r4
            goto L4f
        L53:
            r6 = r4
            r7 = r6
        L55:
            if (r4 == 0) goto L5c
            if (r7 == 0) goto L5c
            if (r6 == 0) goto L5c
            goto Lc2
        L5c:
            com.byazt.jz.s r10 = com.byazt.jz.s.u()     // Catch: java.lang.Throwable -> L2e
            com.byazt.zn.hp r10 = r10.jx()     // Catch: java.lang.Throwable -> L2e
            r5 = 0
            if (r10 == 0) goto L88
            com.byazt.jz.s r10 = com.byazt.jz.s.u()     // Catch: java.lang.Throwable -> L2e
            com.byazt.zn.hp r10 = r10.jx()     // Catch: java.lang.Throwable -> L2e
            java.lang.ref.WeakReference r10 = r10.hp()     // Catch: java.lang.Throwable -> L2e
            if (r10 == 0) goto L88
            com.byazt.jz.s r10 = com.byazt.jz.s.u()     // Catch: java.lang.Throwable -> L2e
            com.byazt.zn.hp r10 = r10.jx()     // Catch: java.lang.Throwable -> L2e
            java.lang.ref.WeakReference r10 = r10.hp()     // Catch: java.lang.Throwable -> L2e
            java.lang.Object r10 = r10.get()     // Catch: java.lang.Throwable -> L2e
            r5 = r10
            android.app.Activity r5 = (android.app.Activity) r5     // Catch: java.lang.Throwable -> L2e
        L88:
            if (r5 == 0) goto Lc2
            if (r4 == 0) goto L8e
            if (r7 != 0) goto Lb3
        L8e:
            com.byazt.ktd.gu.hp(r5)     // Catch: java.lang.Throwable -> L2e
            if (r4 != 0) goto La6
            java.lang.CharSequence r10 = r5.getTitle()     // Catch: java.lang.Throwable -> L2e
            if (r10 == 0) goto La6
            int r4 = r10.length()     // Catch: java.lang.Throwable -> L2e
            if (r4 <= 0) goto La6
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L2e
            r0.put(r3, r10)     // Catch: java.lang.Throwable -> L2e
        La6:
            if (r7 != 0) goto Lb3
            java.lang.Class r10 = r5.getClass()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r10 = r10.getName()     // Catch: java.lang.Throwable -> L2e
            r0.put(r2, r10)     // Catch: java.lang.Throwable -> L2e
        Lb3:
            if (r6 != 0) goto Lc2
            java.lang.String r10 = com.byazt.ktd.j.a()     // Catch: java.lang.Throwable -> Lc2
            boolean r2 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Throwable -> Lc2
            if (r2 != 0) goto Lc2
            r0.put(r1, r10)     // Catch: java.lang.Throwable -> Lc2
        Lc2:
            return r0
        Lc3:
            java.lang.String r1 = "NetApiImpl"
            java.lang.String r2 = "buildFeatureRequestBody error: "
            com.byazt.ymw.u.hp(r1, r2, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.b.hp(com.byazt.xci.f):org.json.JSONObject");
    }

    private void l(final com.byazt.jt.l lVar, final com.byazt.xci.f fVar, final int i2, final cx.l lVar2, String str, final int i3) {
        final com.byazt.xci.l lVar3 = new com.byazt.xci.l();
        lVar3.hp(lVar);
        try {
            boolean[] zArr = {false};
            try {
                if (hp(lVar, lVar3, lVar2, i3 == 5, fVar, i2, zArr)) {
                    return;
                }
                try {
                    com.byazt.ap.w wVarHp = hp(lVar, fVar, i2, lVar2, str, i3, lVar3, zArr[0]);
                    if (wVarHp == null) {
                        lVar3.hp(-15);
                        lVar2.hp(-15, eb.hp(-15), lVar3);
                    } else {
                        wVarHp.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.19
                            @Override // com.byazt.mnb.hp
                            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar4) {
                                b.this.hp(jVar, lVar4, lVar3, lVar2, lVar, fVar, i2, i3);
                            }

                            @Override // com.byazt.mnb.hp
                            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                                b.this.hp(jVar, iOException, lVar3, lVar2);
                            }
                        });
                        com.byazt.jz.j.hp().jx();
                        hp();
                    }
                } catch (Throwable th) {
                    th = th;
                    lVar3 = lVar3;
                    hp(th, lVar3, lVar2);
                }
            } catch (Throwable th2) {
                th = th2;
                lVar3 = lVar3;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private JSONObject l(com.byazt.bl.l lVar, List<com.byazt.qt.a> list) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.umeng.ccg.a.f49772z, "dislike");
            jSONObject2.put("timestamp", System.currentTimeMillis());
            jSONObject2.put("ad_sdk_version", d.f21860w);
            com.byazt.tn.l.hp(jSONObject2);
            if (lVar != null) {
                jSONObject2.put("extra", lVar.w());
                if (lVar.jx() == null) {
                    lVar.hp("other");
                }
                jSONObject2.put("dislike_source", lVar.jx());
            }
            String strHp = hp(list);
            if (strHp != null) {
                jSONObject2.put("comment", strHp);
                list.clear();
            } else {
                jSONObject2.put("comment", (Object) null);
            }
            jSONObject2.put("filter_words", l(list));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("actions", jSONArray);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02ee A[Catch: all -> 0x0189, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0189, blocks: (B:76:0x017b, B:85:0x01b8, B:99:0x01fd, B:101:0x0207, B:103:0x020d, B:105:0x0214, B:107:0x021a, B:108:0x0223, B:111:0x0231, B:114:0x0248, B:115:0x0251, B:112:0x0238, B:119:0x02b8, B:121:0x02bb, B:126:0x02ee), top: B:191:0x017b }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x035c A[Catch: all -> 0x0054, TryCatch #1 {all -> 0x0054, blocks: (B:16:0x003d, B:18:0x0043, B:21:0x004f, B:24:0x0058, B:25:0x005c, B:29:0x0064, B:31:0x0068, B:33:0x006d, B:35:0x0075, B:62:0x00ee, B:64:0x00f6, B:65:0x00fb, B:67:0x0102, B:68:0x0107, B:72:0x0131, B:132:0x0345, B:136:0x0351, B:138:0x035c, B:140:0x0383, B:144:0x038f, B:146:0x03a5, B:148:0x03a9, B:145:0x0397, B:150:0x03b5, B:153:0x03bf, B:154:0x03c8, B:156:0x03d2, B:157:0x03df, B:159:0x03e9, B:161:0x03f3, B:163:0x03f9, B:164:0x03fe, B:166:0x0402, B:169:0x0407, B:171:0x040e, B:173:0x0414, B:175:0x041a, B:176:0x041f, B:178:0x0423, B:179:0x042f, B:39:0x008a, B:41:0x008e), top: B:188:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03b5 A[Catch: all -> 0x0054, TryCatch #1 {all -> 0x0054, blocks: (B:16:0x003d, B:18:0x0043, B:21:0x004f, B:24:0x0058, B:25:0x005c, B:29:0x0064, B:31:0x0068, B:33:0x006d, B:35:0x0075, B:62:0x00ee, B:64:0x00f6, B:65:0x00fb, B:67:0x0102, B:68:0x0107, B:72:0x0131, B:132:0x0345, B:136:0x0351, B:138:0x035c, B:140:0x0383, B:144:0x038f, B:146:0x03a5, B:148:0x03a9, B:145:0x0397, B:150:0x03b5, B:153:0x03bf, B:154:0x03c8, B:156:0x03d2, B:157:0x03df, B:159:0x03e9, B:161:0x03f3, B:163:0x03f9, B:164:0x03fe, B:166:0x0402, B:169:0x0407, B:171:0x040e, B:173:0x0414, B:175:0x041a, B:176:0x041f, B:178:0x0423, B:179:0x042f, B:39:0x008a, B:41:0x008e), top: B:188:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x002a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ac A[Catch: all -> 0x00ea, TryCatch #5 {all -> 0x00ea, blocks: (B:42:0x0091, B:44:0x00ac, B:46:0x00b3, B:48:0x00c1, B:50:0x00c8, B:52:0x00ce, B:53:0x00d3, B:55:0x00d9, B:57:0x00df, B:59:0x00e5), top: B:195:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b3 A[Catch: all -> 0x00ea, TryCatch #5 {all -> 0x00ea, blocks: (B:42:0x0091, B:44:0x00ac, B:46:0x00b3, B:48:0x00c1, B:50:0x00c8, B:52:0x00ce, B:53:0x00d3, B:55:0x00d9, B:57:0x00df, B:59:0x00e5), top: B:195:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ce A[Catch: all -> 0x00ea, TryCatch #5 {all -> 0x00ea, blocks: (B:42:0x0091, B:44:0x00ac, B:46:0x00b3, B:48:0x00c1, B:50:0x00c8, B:52:0x00ce, B:53:0x00d3, B:55:0x00d9, B:57:0x00df, B:59:0x00e5), top: B:195:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e5 A[Catch: all -> 0x00ea, TRY_LEAVE, TryCatch #5 {all -> 0x00ea, blocks: (B:42:0x0091, B:44:0x00ac, B:46:0x00b3, B:48:0x00c1, B:50:0x00c8, B:52:0x00ce, B:53:0x00d3, B:55:0x00d9, B:57:0x00df, B:59:0x00e5), top: B:195:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0102 A[Catch: all -> 0x0054, TryCatch #1 {all -> 0x0054, blocks: (B:16:0x003d, B:18:0x0043, B:21:0x004f, B:24:0x0058, B:25:0x005c, B:29:0x0064, B:31:0x0068, B:33:0x006d, B:35:0x0075, B:62:0x00ee, B:64:0x00f6, B:65:0x00fb, B:67:0x0102, B:68:0x0107, B:72:0x0131, B:132:0x0345, B:136:0x0351, B:138:0x035c, B:140:0x0383, B:144:0x038f, B:146:0x03a5, B:148:0x03a9, B:145:0x0397, B:150:0x03b5, B:153:0x03bf, B:154:0x03c8, B:156:0x03d2, B:157:0x03df, B:159:0x03e9, B:161:0x03f3, B:163:0x03f9, B:164:0x03fe, B:166:0x0402, B:169:0x0407, B:171:0x040e, B:173:0x0414, B:175:0x041a, B:176:0x041f, B:178:0x0423, B:179:0x042f, B:39:0x008a, B:41:0x008e), top: B:188:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b8 A[Catch: all -> 0x0189, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0189, blocks: (B:76:0x017b, B:85:0x01b8, B:99:0x01fd, B:101:0x0207, B:103:0x020d, B:105:0x0214, B:107:0x021a, B:108:0x0223, B:111:0x0231, B:114:0x0248, B:115:0x0251, B:112:0x0238, B:119:0x02b8, B:121:0x02bb, B:126:0x02ee), top: B:191:0x017b }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01fd A[Catch: all -> 0x0189, TRY_ENTER, TryCatch #3 {all -> 0x0189, blocks: (B:76:0x017b, B:85:0x01b8, B:99:0x01fd, B:101:0x0207, B:103:0x020d, B:105:0x0214, B:107:0x021a, B:108:0x0223, B:111:0x0231, B:114:0x0248, B:115:0x0251, B:112:0x0238, B:119:0x02b8, B:121:0x02bb, B:126:0x02ee), top: B:191:0x017b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject hp(com.byazt.jt.l r26, com.byazt.xci.f r27, int r28, boolean r29, int r30, boolean r31, java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.b.hp(com.byazt.jt.l, com.byazt.xci.f, int, boolean, int, boolean, java.lang.String):org.json.JSONObject");
    }

    private JSONArray l(List<com.byazt.qt.a> list) {
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            Iterator<com.byazt.qt.a> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getId());
            }
            return jSONArray;
        }
        return new JSONArray();
    }

    private static String l(com.byazt.jt.l lVar) throws JSONException {
        String strJx = jx(lVar);
        Map<String, Object> mapWv = s.u().wv();
        if (mapWv == null || mapWv.isEmpty()) {
            return strJx;
        }
        try {
            JSONArray jSONArray = TextUtils.isEmpty(strJx) ? new JSONArray() : new JSONArray(strJx);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("name") : "";
                if (!TextUtils.isEmpty(strOptString) && mapWv.containsKey(strOptString)) {
                    mapWv.remove(strOptString);
                }
            }
            for (Map.Entry<String, Object> entry : mapWv.entrySet()) {
                if (!TextUtils.isEmpty(entry.getKey())) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", entry.getKey());
                    jSONObject.put(f.a.f3244d, entry.getValue());
                    jSONArray.put(jSONObject);
                }
            }
            return hp(jSONArray).toString();
        } catch (Exception unused) {
            return strJx;
        }
    }

    private static JSONArray l(JSONArray jSONArray, String str) throws JSONException {
        JSONObject jSONObject;
        try {
            if (TextUtils.equals("0", str)) {
                jSONObject = new JSONObject();
                jSONObject.put("name", "is_shake_ads");
                jSONObject.put(f.a.f3244d, "0");
                s.u().l("0");
            } else {
                jSONObject = null;
            }
            if (jSONObject != null) {
                if (jSONArray != null && jSONArray.length() > 0) {
                    jSONArray.put(jSONArray.length(), jSONObject);
                    return jSONArray;
                }
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(0, jSONObject);
                return jSONArray2;
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(ux uxVar, String str, String str2, final cx.jx jxVar, int i2, long j2) {
        JSONObject jSONObjectHp = hp(uxVar, str, str2);
        com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
        if (i2 == 1) {
            wVarL.hp(uxVar.eb());
        } else {
            wVarL.hp(uxVar.hp());
        }
        wVarL.hp(jSONObjectHp);
        wVarL.w(new HashMap());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.jz.b.11
            @Override // java.lang.Runnable
            public void run() {
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                jxVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN, "time out!");
            }
        }, j2);
        wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.13
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                if (lVar == null) {
                    jxVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, "response is null!");
                    return;
                }
                if (!lVar.q()) {
                    jxVar.hp(lVar.l(), lVar.jx());
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(lVar.w());
                    String strOptString = jSONObject.optString("message");
                    int iOptInt = jSONObject.optInt("status", -1);
                    if (iOptInt != 200) {
                        jxVar.hp(iOptInt, strOptString);
                        return;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                    if (jSONObjectOptJSONObject != null) {
                        jxVar.hp(jSONObjectOptJSONObject);
                        return;
                    }
                    jxVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_AV_POS_GAP, strOptString + ", data is null!");
                } catch (Throwable th) {
                    jxVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, th.getMessage());
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                jxVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject, final cx.jx<com.byazt.oyr.l> jxVar) {
        String strHp = ky.hp("/api/ad/union/sdk/apply_coupon/v2", false);
        as asVar = new as(com.byazt.cm.w.hp().l().a());
        asVar.hp(strHp);
        asVar.jx(jSONObject, "coupon_apply");
        asVar.w(new HashMap());
        asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.17
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                cx.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    jxVar2.hp(lVar);
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                cx.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    jxVar2.hp(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
                }
            }
        });
    }

    private void hp(String str, com.byazt.jt.l lVar, Throwable th) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("req_id", str);
            if (lVar != null) {
                jSONObject.putOpt("slot", lVar.j());
            }
            com.byazt.lf.k.hp().hp("b_ad_req", jSONObject, th);
        } catch (Throwable unused) {
        }
    }

    private void hp(JSONObject jSONObject, com.byazt.xci.f fVar) throws JSONException {
        JSONArray jSONArray;
        if (fVar == null || (jSONArray = fVar.f27268a) == null) {
            return;
        }
        try {
            jSONObject.put("source_temai_product_ids", jSONArray);
        } catch (Exception unused) {
        }
    }

    private void hp(com.byazt.xci.l lVar, long j2, long j3, long j4, long j5) {
        if (lVar == null) {
            return;
        }
        lVar.hp(j2);
        lVar.l(j4);
        lVar.jx(j3);
        lVar.j(j5);
    }

    private boolean hp(String str, com.byazt.xci.f fVar) {
        float fJ = com.byazt.lca.w.hp().j();
        if (fVar != null && fVar.f27278w == 2 && fJ > 0.0f) {
            return jx(str);
        }
        return l(str);
    }

    @Override // com.byazt.jz.cx
    public void hp(final com.byazt.jt.l lVar, final com.byazt.xci.f fVar, final int i2, cx.l lVar2) {
        final com.byazt.de.hp hpVar = new com.byazt.de.hp(lVar2);
        hpVar.hp(i2);
        if ((i2 != 3 || !com.byazt.qfg.a.hp(lVar)) && Looper.myLooper() == Looper.getMainLooper()) {
            com.byazt.uid.w.j(new com.byazt.uid.eb("get_ad") { // from class: com.byazt.jz.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.j(lVar, fVar, i2, hpVar);
                }
            });
        } else {
            j(lVar, fVar, i2, hpVar);
        }
    }

    public com.byazt.ic.l hp(com.byazt.jt.l lVar, com.byazt.xci.l lVar2, com.byazt.xci.f fVar, int i2, int i3, cx.l lVar3, boolean z2) {
        com.byazt.ic.l lVarL;
        com.byazt.oz.jx.hp(lVar);
        boolean z3 = i3 == 5;
        fVar.hp("buildAdBodyReady", z3);
        JSONObject jSONObjectHp = hp(lVar, fVar, i2, false, i3, z2);
        fVar.hp("doBuildAdBody", z3);
        if (jSONObjectHp == null) {
            lVar2.hp(-9);
            lVar3.hp(-9, eb.hp(-9), lVar2);
            return null;
        }
        String string = jSONObjectHp.toString();
        if (i3 == 5) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            lVarL = com.byazt.lca.a.hp().hp(string);
            fVar.hp("encrypt", System.currentTimeMillis() - jCurrentTimeMillis, z3);
        } else {
            lVarL = com.byazt.lca.a.hp().l(string);
        }
        if (lVarL == null) {
            lVar2.hp(-9);
            lVar3.hp(-9, eb.hp(-9), lVar2);
            return null;
        }
        lVarL.hp(jSONObjectHp);
        return lVarL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.jt.l lVar, com.byazt.xci.f fVar, int i2, cx.l lVar2, String str, int i3) {
        l(lVar, fVar, i2, lVar2, str, i3);
    }

    private boolean hp(com.byazt.jt.l lVar, com.byazt.xci.l lVar2, cx.l lVar3, boolean z2, com.byazt.xci.f fVar, int i2, boolean[] zArr) {
        if (lVar3 == null) {
            return true;
        }
        if (!com.byazt.jkd.q.hp()) {
            lVar2.hp(1000);
            lVar3.hp(1000, "广告请求开关已关闭,请联系穿山甲管理员", lVar2);
            return true;
        }
        if (z2) {
            fVar.hp("execGetAdReady", z2);
            if (!TextUtils.isEmpty(lVar.n()) && fVar.f27278w <= 0) {
                hp(lVar2, lVar, lVar3, fVar, i2);
                com.byazt.lf.l.hp();
                return true;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (hp(lVar.j(), fVar)) {
                if (com.byazt.am.a.hp().hp(lVar.j(), lVar.lv())) {
                    zArr[0] = true;
                    return false;
                }
                lVar2.hp(-8);
                lVar3.hp(-8, eb.hp(-8), lVar2);
                jx.incrementAndGet();
                com.byazt.lf.l.hp();
                return true;
            }
            fVar.hp("checkCallFreq", System.currentTimeMillis() - jCurrentTimeMillis, z2);
        }
        return false;
    }

    private void hp(com.byazt.xci.l lVar, com.byazt.jt.l lVar2, final cx.l lVar3, com.byazt.xci.f fVar, int i2) {
        lVar.jx(2);
        lVar.hp(lVar2.n());
        try {
            boolean z2 = false;
            JSONObject jSONObjectHp = com.byazt.lca.a.hp(new JSONObject(lVar2.n()), false, true);
            if (jSONObjectHp == null) {
                hp(lVar3, lVar);
                return;
            }
            hp hpVarHp = hp.hp(jSONObjectHp, lVar2, fVar);
            lVar.hp(hpVarHp.f21845e);
            j(hpVarHp.f21848q);
            int i3 = hpVarHp.f21846j;
            if (i3 != 20000) {
                lVar.hp(i3);
                lVar3.hp(hpVarHp.f21846j, "reason: " + hpVarHp.f21844a + "  message: " + hpVarHp.f21850w, lVar);
                return;
            }
            com.byazt.xci.hp hpVar = hpVarHp.f21849s;
            if (hpVar == null) {
                hp(lVar3, lVar);
                return;
            }
            hpVar.hp(jSONObjectHp);
            List<mp> listL = hpVarHp.f21849s.l();
            if (listL != null) {
                List<mp> arrayList = new ArrayList<>(listL);
                for (mp mpVar : listL) {
                    mp mpVarHp = com.byazt.zn.j.hp(mpVar.ru(), i2, mpVar.xq());
                    if (mpVarHp != null) {
                        arrayList.remove(mpVar);
                        mpVarHp.nu(mpVar.gs());
                        arrayList.add(mpVarHp);
                    } else if (mpVar.gd()) {
                        final String str = hpVarHp.eb;
                        if (!TextUtils.isEmpty(str) && fVar != null) {
                            fVar.hp(str);
                        }
                        final String strJ = lVar2.j();
                        final String strHp = ky.hp(lVar2);
                        sz.hp().jx(lVar2, fVar, i2, new cx.l() { // from class: com.byazt.jz.b.20
                            @Override // com.byazt.jz.cx.l
                            public void hp(int i4, String str2, com.byazt.xci.l lVar4) {
                                com.byazt.lf.k.hp().hp(i4, str2, str, strJ, strHp);
                                lVar3.hp(i4, str2, lVar4);
                            }

                            @Override // com.byazt.jz.cx.l
                            public void hp(com.byazt.xci.hp hpVar2, com.byazt.xci.l lVar4) {
                                com.byazt.lf.k.hp().hp(0, cb.f11292o, str, strJ, strHp);
                                lVar3.hp(hpVar2, lVar4);
                            }
                        });
                        z2 = true;
                    }
                }
                if (z2) {
                    return;
                } else {
                    hpVarHp.f21849s.hp(arrayList);
                }
            }
            lVar3.hp(hpVarHp.f21849s, lVar);
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("NetApiImpl", "get ad error: ", th);
            hp(lVar3, lVar);
        }
    }

    private com.byazt.ap.w hp(com.byazt.jt.l lVar, com.byazt.xci.f fVar, int i2, cx.l lVar2, String str, int i3, com.byazt.xci.l lVar3, boolean z2) throws JSONException {
        byte[] bytes;
        Map<String, String> mapHp;
        com.byazt.ic.l lVarHp = hp(lVar, lVar3, fVar, i2, i3, lVar2, z2);
        if (lVarHp == null) {
            return null;
        }
        String strHp = ky.hp(str, true);
        com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
        String strHp2 = com.byazt.qxx.jx.hp(wVarL, strHp);
        wVarL.hp(strHp2);
        if (lVarHp.hp() != null) {
            com.byazt.qxx.jx.hp(lVarHp.hp(), 0);
        }
        if (i3 == 5) {
            if (lVarHp.j() != null) {
                JSONObject jSONObjectJ = lVarHp.j();
                wVarL.hp(jSONObjectJ);
                bytes = jSONObjectJ.toString().getBytes(StandardCharsets.UTF_8);
                wVarL.hp(false);
            } else {
                if (lVarHp.jx() == null) {
                    return null;
                }
                bytes = lVarHp.jx();
                wVarL.hp("application/octet-stream", bytes);
                wVarL.hp(true);
            }
        } else {
            JSONObject jSONObjectJ2 = lVarHp.j();
            wVarL.hp(jSONObjectJ2);
            bytes = jSONObjectJ2.toString().getBytes(StandardCharsets.UTF_8);
        }
        boolean z3 = i3 == 5;
        fVar.hp("doHttpReqSignReady", z3);
        com.byazt.lk.hp hpVarHp = com.byazt.lk.hp.hp(true);
        fVar.hp("MSInst", z3);
        Map<String, String> mapHp2 = hpVarHp.hp(strHp2, bytes);
        fVar.hp("doHttpReqSign", z3);
        if (mapHp2 == null) {
            mapHp2 = new HashMap<>();
        }
        if (i3 == 5 && (mapHp = com.byazt.oz.jx.hp(lVar.j())) != null) {
            mapHp2.putAll(mapHp);
        }
        pu.hp(mapHp2);
        Map<String, String> mapW = lVarHp.w();
        wVarL.l("User-Agent", ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getWebViewUA(false));
        if (mapW != null) {
            mapHp2.putAll(mapW);
        }
        if (mapHp2.size() > 0) {
            for (Map.Entry<String, String> entry : mapHp2.entrySet()) {
                wVarL.l(entry.getKey(), entry.getValue());
            }
        }
        wVarL.w(hp(bytes, mapW, lVarHp));
        fVar.hp("appendHeader", z3);
        return wVarL;
    }

    private Map<String, Object> hp(byte[] bArr, Map<String, String> map, com.byazt.ic.l lVar) {
        HashMap map2 = new HashMap();
        try {
            com.byazt.ic.hp hpVar = new com.byazt.ic.hp();
            hpVar.s(System.currentTimeMillis());
            hpVar.q(bArr == null ? 0L : bArr.length);
            hpVar.jx(lVar.l());
            if (map != null) {
                hpVar.hp(map.get("x-pglcypher"));
            }
            hpVar.hp(lVar.hp());
            com.byazt.pg.w wVarL = com.byazt.zn.b.l();
            hpVar.l(wVarL != null ? wVarL.getSpecificArmorLoadStatus() : 0);
            hpVar.hp(sz.l().ld());
            map2.put("load_time_model", hpVar);
        } catch (Exception unused) {
        }
        return map2;
    }

    private void hp() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f21803j.get() >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            this.f21803j.set(jCurrentTimeMillis);
            com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.jz.b.21
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.jkd.s.hp((com.byazt.jkd.w) null).j();
                }
            }, 10000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ap.j jVar, IOException iOException, com.byazt.xci.l lVar, cx.l lVar2) {
        com.byazt.lf.l.hp();
        if (iOException != null) {
            lVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN);
            lVar2.hp(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN, iOException.getMessage(), lVar);
        }
    }

    private void hp(Throwable th, com.byazt.xci.l lVar, cx.l lVar2) {
        if (lVar2 != null) {
            lVar.hp(TTAdConstant.INIT_LOCAL_FAIL_CODE);
            lVar2.hp(TTAdConstant.INIT_LOCAL_FAIL_CODE, th.getMessage(), lVar);
            com.byazt.ymw.u.hp("NetApiImpl", " msg = ", th.getMessage());
        }
    }

    private void hp(com.byazt.oyr.l lVar, com.byazt.jt.l lVar2, int i2, com.byazt.xci.f fVar, cx.l lVar3, com.byazt.xci.l lVar4, com.byazt.ap.j jVar) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        String str;
        int i3;
        String str2;
        hp hpVar;
        com.byazt.xci.f fVar2 = fVar;
        String str3 = "auction_price";
        if (lVar != null) {
            if (lVar.q()) {
                b bVar = this;
                try {
                    com.byazt.ic.hp hpVarHp = bVar.hp(jVar);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strW = lVar.w();
                    lVar4.hp(strW);
                    com.byazt.oz.l lVar5 = com.byazt.oz.l.hp;
                    if (lVar5 != null) {
                        lVar5.jx("NetApiImpl", "response:");
                        com.byazt.oz.l.hp.jx("NetApiImpl", strW);
                    }
                    JSONObject jSONObject3 = new JSONObject(strW);
                    int iOptInt = jSONObject3.optInt("status_code");
                    String strOptString = new JSONObject(lVar2.n()).optString("auction_price");
                    int i4 = 20000;
                    if (iOptInt != 20000) {
                        if (iOptInt == 40046) {
                            lVar4.hp(iOptInt);
                            lVar3.hp(40046, eb.hp(iOptInt), lVar4);
                            return;
                        }
                        return;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("adms");
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        JSONObject jSONObject4 = new JSONObject(jSONObjectOptJSONObject.optString(itKeys.next()));
                        jSONObject4.put(str3, strOptString);
                        JSONObject jSONObjectHp = com.byazt.lca.a.hp(jSONObject4, false, true);
                        if (jSONObjectHp == null) {
                            hp(lVar3, lVar4);
                            return;
                        }
                        hp hpVarHp2 = hp.hp(jSONObjectHp, lVar2, fVar2);
                        lVar4.hp(hpVarHp2.f21845e);
                        int i5 = hpVarHp2.f21846j;
                        if (i5 != i4) {
                            lVar4.hp(i5);
                            lVar3.hp(hpVarHp2.f21846j, "reason: " + hpVarHp2.f21844a + "  message: " + hpVarHp2.f21850w, lVar4);
                            com.byazt.am.a.hp().hp(lVar2.j(), hpVarHp2.f21846j, hpVarHp2.f21844a, lVar2.lv());
                            return;
                        }
                        com.byazt.xci.hp hpVar2 = hpVarHp2.f21849s;
                        if (hpVar2 == null) {
                            hp(lVar3, lVar4);
                            return;
                        }
                        hpVar2.hp(jSONObjectHp);
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        if (fVar2 != null) {
                            jSONObject2 = jSONObjectHp;
                            str2 = str3;
                            hpVar = hpVarHp2;
                            jSONObject = jSONObjectOptJSONObject;
                            str = strOptString;
                            i3 = 20000;
                            bVar.hp(lVar4, hpVarHp.q() - fVar2.f27275s, hpVarHp2.hp, jCurrentTimeMillis - hpVarHp.q(), jCurrentTimeMillis2 - jCurrentTimeMillis);
                        } else {
                            jSONObject = jSONObjectOptJSONObject;
                            jSONObject2 = jSONObjectHp;
                            str = strOptString;
                            i3 = i4;
                            str2 = str3;
                            hpVar = hpVarHp2;
                        }
                        lVar3.hp(hpVar.f21849s, lVar4);
                        com.byazt.ne.l.hp().hp(jSONObject2);
                        bVar = this;
                        str3 = str2;
                        fVar2 = fVar;
                        strOptString = str;
                        jSONObjectOptJSONObject = jSONObject;
                        i4 = i3;
                    }
                    return;
                } catch (Throwable th) {
                    com.byazt.ymw.u.hp("NetApiImpl", "get ad error: ", th);
                    hp(lVar3, lVar4);
                    return;
                }
            }
            int iL = lVar.l();
            String strJx = lVar.jx();
            lVar4.hp(iL);
            lVar3.hp(iL, strJx, lVar4);
        }
    }

    private void hp(com.byazt.oyr.l lVar, com.byazt.jt.l lVar2, int i2, com.byazt.xci.f fVar, cx.l lVar3, com.byazt.xci.l lVar4) {
        if (lVar != null) {
            try {
                JSONArray jSONArrayOptJSONArray = new JSONObject(lVar.w()).optJSONArray(com.sigmob.sdk.base.db.a.f36070a);
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                    if (lVar3 != null) {
                        lVar3.hp(-9, eb.hp(-9), lVar4);
                        return;
                    }
                    return;
                }
                int iYr = sz.l().yr();
                for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.getJSONObject(i3).optJSONObject("creative");
                    if (jSONObjectOptJSONObject != null) {
                        JSONObject jSONObjectHp = com.byazt.lca.a.hp(new JSONObject(jSONObjectOptJSONObject.optString("adm")), false, true);
                        if (jSONObjectHp == null && lVar3 != null) {
                            lVar3.hp(-9, eb.hp(-9), lVar4);
                        } else {
                            hp hpVarHp = hp.hp(jSONObjectHp, lVar2, fVar);
                            com.byazt.zn.j.hp(hpVarHp.f21849s, i2, iYr, lVar2.lv());
                            if (lVar3 != null) {
                                lVar3.hp(hpVarHp.f21849s, lVar4);
                            }
                        }
                    } else if (lVar3 != null) {
                        lVar3.hp(-9, eb.hp(-9), lVar4);
                    }
                }
            } catch (Exception unused) {
                if (lVar3 != null) {
                    lVar3.hp(-9, eb.hp(-9), lVar4);
                }
            }
        }
    }

    private com.byazt.ic.hp hp(com.byazt.ap.j jVar) {
        try {
            Object obj = jVar.jx().get("load_time_model");
            if (obj instanceof com.byazt.ic.hp) {
                com.byazt.ic.hp hpVar = (com.byazt.ic.hp) obj;
                hpVar.jx(true);
                return hpVar;
            }
        } catch (Throwable unused) {
        }
        return new com.byazt.ic.hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar, com.byazt.xci.l lVar2, cx.l lVar3, com.byazt.jt.l lVar4, com.byazt.xci.f fVar, int i2, int i3) {
        cx.l lVar5;
        b bVar;
        com.byazt.ic.hp hpVar;
        final boolean z2;
        final JSONObject jSONObject;
        com.byazt.jt.l lVar6;
        boolean z3;
        JSONObject jSONObjectHp;
        long j2;
        boolean z4;
        JSONObject jSONObject2;
        com.byazt.xci.f fVar2;
        hp hpVar2;
        b bVar2;
        com.byazt.ic.hp hpVar3;
        int i4;
        if (lVar == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!lVar.q()) {
            int iL = lVar.l();
            String strJx = lVar.jx();
            lVar2.hp(iL);
            lVar3.hp(iL, strJx, lVar2);
            com.byazt.am.a.hp().hp(lVar4 != null ? lVar4.j() : "", iL, 0, lVar4.lv());
            com.byazt.evz.l.l();
            return;
        }
        if (i3 == 1) {
            hp(lVar, lVar4, i2, fVar, lVar3, lVar2);
            return;
        }
        if (i3 == 3) {
            hp(lVar, lVar4, i2, fVar, lVar3, lVar2, jVar);
            return;
        }
        com.byazt.xci.l lVar7 = lVar2;
        com.byazt.ic.hp hpVarHp = hp(jVar);
        hpVarHp.a(jCurrentTimeMillis);
        com.byazt.lf.l.hp();
        try {
            final String strW = lVar.w();
            long length = 0;
            try {
                if (i3 == 5) {
                    try {
                        byte[] bArrGu = lVar.gu();
                        Pair<Boolean, JSONObject> pairHp = com.byazt.lca.a.hp(lVar, "get_ads", true);
                        JSONObject jSONObject3 = (JSONObject) pairHp.second;
                        boolean zBooleanValue = ((Boolean) pairHp.first).booleanValue();
                        if (zBooleanValue) {
                            if (!TextUtils.isEmpty(strW)) {
                                length = strW.getBytes(StandardCharsets.UTF_8).length;
                            }
                            lVar7.hp(strW);
                        } else if (bArrGu != null) {
                            length = bArrGu.length;
                        }
                        long j3 = length;
                        if (com.byazt.oz.l.hp == null || jSONObject3 == null) {
                            bVar = this;
                            hpVar = hpVarHp;
                            z2 = zBooleanValue;
                            jSONObject = jSONObject3;
                            lVar6 = lVar4;
                        } else {
                            hpVar = hpVarHp;
                            z2 = zBooleanValue;
                            jSONObject = jSONObject3;
                            lVar6 = lVar4;
                            try {
                                com.byazt.uid.eb ebVar = new com.byazt.uid.eb("logAdapter") { // from class: com.byazt.jz.b.24
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Object obj;
                                        try {
                                            String string = "";
                                            if (z2) {
                                                string = strW;
                                            } else {
                                                Pair<Integer, JSONObject> pairHp2 = com.byazt.lca.a.hp().hp(jSONObject.toString(), false);
                                                if (pairHp2 != null && (obj = pairHp2.second) != null) {
                                                    string = ((JSONObject) obj).toString();
                                                }
                                            }
                                            if (com.byazt.oz.l.hp == null || TextUtils.isEmpty(string)) {
                                                return;
                                            }
                                            com.byazt.oz.l.hp.jx("NetApiImpl", "response:");
                                            com.byazt.oz.l.hp.jx("NetApiImpl", string);
                                        } catch (Exception e2) {
                                            com.byazt.ymw.u.hp(e2.getMessage());
                                        }
                                    }
                                };
                                bVar = this;
                                com.byazt.uid.w.l(ebVar);
                            } catch (Throwable th) {
                                th = th;
                                lVar5 = lVar3;
                                com.byazt.ymw.u.hp("NetApiImpl", "get ad error: ", th);
                                hp(lVar5, lVar7);
                            }
                        }
                        z3 = z2;
                        jSONObjectHp = jSONObject;
                        j2 = j3;
                    } catch (Throwable th2) {
                        th = th2;
                        strW = this;
                        lVar5 = lVar3;
                        com.byazt.ymw.u.hp("NetApiImpl", "get ad error: ", th);
                        hp(lVar5, lVar7);
                    }
                } else {
                    lVar6 = lVar4;
                    hpVar = hpVarHp;
                    bVar = this;
                    lVar7.hp(strW);
                    com.byazt.oz.l lVar8 = com.byazt.oz.l.hp;
                    if (lVar8 != null) {
                        lVar8.jx("NetApiImpl", "response:");
                        com.byazt.oz.l.hp.jx("NetApiImpl", strW);
                    }
                    JSONObject jSONObject4 = new JSONObject(strW);
                    if (!TextUtils.isEmpty(strW)) {
                        length = strW.getBytes(StandardCharsets.UTF_8).length;
                    }
                    j2 = length;
                    jSONObjectHp = com.byazt.lca.a.hp(jSONObject4, false, true);
                    z3 = false;
                }
                com.byazt.ic.hp hpVar4 = hpVar;
                hpVar4.eb(j2);
                if (jSONObjectHp == null) {
                    hp(lVar3, lVar7);
                    return;
                }
                com.byazt.qxx.jx.l(jSONObjectHp, 0);
                hp hpVarHp2 = hp.hp(jSONObjectHp, lVar6, fVar);
                lVar7.hp(hpVarHp2.f21845e);
                bVar.j(hpVarHp2.f21848q);
                int i5 = hpVarHp2.f21846j;
                if (i5 != 20000) {
                    lVar7.hp(i5);
                    lVar7.l(hpVarHp2.f21844a);
                    lVar3.hp(hpVarHp2.f21846j, "reason: " + hpVarHp2.f21844a + "  message: " + hpVarHp2.f21850w, lVar7);
                    com.byazt.am.a.hp().hp(lVar6 != null ? lVar6.j() : "", hpVarHp2.f21846j, hpVarHp2.f21844a, lVar6.lv());
                    return;
                }
                com.byazt.xci.hp hpVar5 = hpVarHp2.f21849s;
                if (hpVar5 == null) {
                    hp(lVar3, lVar7);
                    return;
                }
                hpVar5.hp(jSONObjectHp);
                hpVar4.l(System.currentTimeMillis());
                if (fVar != null) {
                    z4 = z3;
                    jSONObject2 = jSONObjectHp;
                    hpVar2 = hpVarHp2;
                    bVar2 = bVar;
                    i4 = 5;
                    fVar2 = fVar;
                    lVar5 = lVar3;
                    hpVar3 = hpVar4;
                    try {
                        bVar2.hp(lVar7, hpVar4.q() - fVar.f27275s, hpVarHp2.hp, hpVar4.a() - hpVar4.q(), hpVar4.l() - hpVar4.a());
                        lVar7 = lVar7;
                    } catch (Throwable th3) {
                        th = th3;
                        lVar7 = lVar7;
                        com.byazt.ymw.u.hp("NetApiImpl", "get ad error: ", th);
                        hp(lVar5, lVar7);
                    }
                } else {
                    z4 = z3;
                    jSONObject2 = jSONObjectHp;
                    fVar2 = fVar;
                    hpVar2 = hpVarHp2;
                    bVar2 = bVar;
                    hpVar3 = hpVar4;
                    lVar5 = lVar3;
                    i4 = 5;
                }
                try {
                    lVar5.hp(hpVar2.f21849s, lVar7);
                    for (mp mpVar : hpVar2.f21849s.l()) {
                        if (fVar2 != null) {
                            mpVar.wv(fVar2.l());
                            mpVar.xm().hp(fVar2.hp);
                            mpVar.xm().l(1);
                        }
                        if (com.byazt.nwu.hp.hp(mpVar) || com.byazt.nwu.hp.j(mpVar)) {
                            com.byazt.uah.l.hp().hp(bVar2.hp, com.byazt.nwu.hp.q(mpVar));
                        }
                    }
                    if (hpVar3.jl() && hpVar2.f21849s.l() != null && !hpVar2.f21849s.l().isEmpty()) {
                        mp mpVar2 = hpVar2.f21849s.l().get(0);
                        com.byazt.jz.j.hp().hp(mpVar2);
                        String strL = ky.l(i2);
                        com.byazt.ic.hp hpVar6 = hpVar3;
                        hpVar6.l(i3 != i4);
                        hpVar6.hp(i3 != i4 || z4);
                        hpVar6.w(lVar.a());
                        hpVar6.j(lVar.eb());
                        hpVar6.hp(hpVar2.hp);
                        com.byazt.uhg.gu guVarJl = lVar.jl();
                        if (guVarJl != null) {
                            hpVar6.e(guVarJl.hp);
                            hpVar6.gu(guVarJl.f26198l);
                            hpVar6.jl(guVarJl.jx);
                            hpVar6.zy(guVarJl.f26197j);
                            hpVar6.k(guVarJl.f26199w);
                        }
                        bVar2.hp(fVar2, mpVar2, strL, hpVar6);
                    }
                    com.byazt.ne.l.hp().hp(jSONObject2);
                    com.byazt.evz.l.l();
                } catch (Throwable th4) {
                    th = th4;
                    com.byazt.ymw.u.hp("NetApiImpl", "get ad error: ", th);
                    hp(lVar5, lVar7);
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private void hp(com.byazt.xci.f fVar, mp mpVar, String str, com.byazt.ic.hp hpVar) throws JSONException {
        long jL;
        long j2;
        if (sz.l().df() && hpVar != null) {
            JSONObject jSONObject = new JSONObject();
            if (fVar != null) {
                try {
                    if (fVar.f27275s > 0) {
                        jSONObject.put("client_start_time", hpVar.q() - fVar.f27275s);
                        jL = hpVar.l() - fVar.f27275s;
                    } else {
                        jL = 0;
                    }
                    if (fVar.f27274q > 0) {
                        jSONObject.put("real_user_duration", hpVar.l() - fVar.f27274q);
                        jSONObject.put("switch_st1_time", fVar.f27275s - fVar.f27274q);
                    }
                    j2 = jL;
                } catch (Exception unused) {
                    return;
                }
            } else {
                j2 = 0;
            }
            jSONObject.put("net_send_time", hpVar.w() - hpVar.q());
            jSONObject.put("net_rcv_time", hpVar.j() - hpVar.w());
            jSONObject.put("net_callback_time", hpVar.a() - hpVar.j());
            jSONObject.put("network_time", hpVar.a() - hpVar.q());
            jSONObject.put("sever_time", hpVar.hp());
            jSONObject.put("client_end_time", hpVar.l() - hpVar.a());
            if (hpVar.e() > 0) {
                jSONObject.put("req_body_length", hpVar.e());
            }
            if (hpVar.s() > 0) {
                jSONObject.put("res_body_length", hpVar.s());
            }
            if (!TextUtils.isEmpty(hpVar.gu())) {
                jSONObject.put("x-pglcypher", hpVar.gu());
            }
            jSONObject.put("cypher_v", hpVar.vv());
            jSONObject.put("armor_s", hpVar.ec());
            long jJx = hpVar.jx();
            if (jJx > 0) {
                jSONObject.put("raw_req_length", jJx);
            }
            int i2 = 1;
            jSONObject.put("sdk_parallel_load", 1);
            jSONObject.put("net_module", com.byazt.lca.jx.hp().a());
            if (!hpVar.eb()) {
                i2 = 2;
            }
            jSONObject.put("has_base64", i2);
            jSONObject.put("req_build_opt", com.byazt.lca.jx.hp().eb());
            jSONObject.put("is_boost", com.byazt.wu.hp.w());
            jSONObject.put("opt_config", String.valueOf(sz.l().el()));
            jSONObject.put("report_index", f21802l.getAndIncrement());
            if (hpVar.u() > 0) {
                jSONObject.put("net_whqueue", hpVar.k() - hpVar.zy());
                jSONObject.put("net_wtqueue", hpVar.v() - hpVar.k());
                jSONObject.put("net_oconn", hpVar.xs() - hpVar.u());
                jSONObject.put("net_bconn", hpVar.u() - hpVar.v());
            }
            try {
                JSONObject jSONObjectHp = fVar.f27277v.hp(-1L);
                Iterator<String> itKeys = jSONObjectHp.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!TextUtils.isEmpty(next)) {
                        jSONObject.put(next, jSONObjectHp.opt(next));
                    }
                }
            } catch (Exception unused2) {
            }
            com.byazt.jdb.j.hp(mpVar, str, "load_ad_time", j2, jSONObject);
        }
    }

    @Override // com.byazt.jz.cx
    public void hp(com.byazt.bl.l lVar, List<com.byazt.qt.a> list) {
        JSONObject jSONObjectL;
        if (com.byazt.jkd.q.hp() && (jSONObjectL = l(lVar, list)) != null) {
            as asVar = new as(com.byazt.cm.w.hp().l().a());
            asVar.hp(ky.gu("/api/ad/union/dislike_event/"));
            asVar.jx(jSONObjectL, "dislike");
            asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.25
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar2) {
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                }
            });
        }
    }

    private String hp(List<com.byazt.qt.a> list) {
        if (list.get(0).getId().equals("0:00")) {
            return list.get(0).getName();
        }
        return null;
    }

    public static void hp(cx.l lVar, com.byazt.xci.l lVar2) {
        lVar2.hp(-1);
        lVar.hp(-1, eb.hp(-1), lVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(cx.w wVar) {
        wVar.hp(-1, eb.hp(-1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(cx.j jVar) {
        jVar.hp(-1, eb.hp(-1));
    }

    private JSONObject hp(com.byazt.jt.l lVar, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            hp(jSONObject, "keywords", s.u().di());
            jSONObject.put("protection_of_minors", s.u().mp());
            if (!com.byazt.lca.j.hp().eb(i2)) {
                com.byazt.tn.l.l(this.hp, jSONObject);
            }
            String strL = l(lVar);
            if (!TextUtils.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, strL)) {
                hp(jSONObject, "data", strL);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static JSONArray hp(JSONArray jSONArray, String str) throws JSONException {
        JSONObject jSONObject;
        if (str != null) {
            try {
                jSONObject = new JSONObject();
                jSONObject.put("name", "can_use_sensor");
                jSONObject.put(f.a.f3244d, str);
            } catch (Exception unused) {
            }
        } else {
            jSONObject = null;
        }
        if (jSONObject != null) {
            if (jSONArray != null && jSONArray.length() > 0) {
                jSONArray.put(jSONArray.length(), jSONObject);
                return jSONArray;
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, jSONObject);
            return jSONArray2;
        }
        return jSONArray;
    }

    private static String hp(String str, String str2) throws JSONException {
        if (str2 == null) {
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            JSONArray jSONArrayL = l(hp((JSONArray) null, str2), str2);
            if (jSONArrayL == null) {
                return null;
            }
            return jSONArrayL.toString();
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            boolean z2 = false;
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && TextUtils.equals(jSONObjectOptJSONObject.optString("name"), "is_shake_ads")) {
                    if (TextUtils.equals("0", str2)) {
                        jSONObjectOptJSONObject.put(f.a.f3244d, "0");
                        s.u().l("0");
                    } else {
                        s.u().l(jSONObjectOptJSONObject.optString(f.a.f3244d));
                    }
                    z2 = true;
                }
            }
            if (!z2) {
                jSONArray = l(jSONArray, str2);
            }
            JSONArray jSONArrayHp = hp(jSONArray, str2);
            return jSONArrayHp == null ? str : jSONArrayHp.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    private static JSONArray hp(JSONArray jSONArray) throws JSONException {
        if (d.s() && jSONArray != null && jSONArray.length() != 0) {
            JSONArray jSONArray2 = new JSONArray();
            int length = jSONArray.length();
            JSONObject jSONObject = null;
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                if (jSONObject2 != null) {
                    String strOptString = jSONObject2.optString("name", null);
                    if (!"device_id".equals(strOptString)) {
                        if ("game_adapter_did".equals(strOptString)) {
                            jSONObject = jSONObject2;
                        } else {
                            jSONArray2.put(jSONObject2);
                        }
                    }
                }
            }
            if (jSONObject != null) {
                jSONObject.put("name", "device_id");
                jSONArray2.put(jSONObject);
                return jSONArray2;
            }
        }
        return jSONArray;
    }

    private void hp(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    private JSONObject hp(com.byazt.jt.l lVar, int i2, com.byazt.xci.f fVar) throws JSONException {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", lVar.j());
            jSONObject.put(MediationConstant.KEY_GM_PRIME_RIT, lVar.ec());
            jSONObject.put("show_seq", lVar.vv());
            jSONObject.put("adtype", i2);
            jSONObject.put("themeStatus", s.u().zx());
            jSONObject.put(g.a.f3275l, 0);
            jSONObject.put(q.a.f3394i, com.byazt.mb.jx.jx().hp(lVar.j()));
            JSONObject jSONObjectHp = com.byazt.sr.jx.hp(i2, lVar.lv());
            if (jSONObjectHp != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject(jSONObjectHp.toString());
                    s.jx jxVarHp = com.byazt.xci.s.hp(i2);
                    s.w wVarXs = jxVarHp != null ? jxVarHp.xs() : null;
                    if (wVarXs != null && wVarXs.l() && wVarXs.jx() > 0) {
                        long jHp = com.byazt.un.l.hp().hp(i2, lVar.j());
                        if (jHp > 0) {
                            jSONObject2.put("dynamic_tmax", jHp);
                        }
                        jSONObject2.put("dynamic_tmax_type", wVarXs.w());
                    }
                    jSONObjectHp = jSONObject2;
                } catch (Throwable unused) {
                }
                jSONObject.put("ca_interval_info", jSONObjectHp);
            }
            Object objL = com.byazt.sr.jx.l(i2, lVar.j());
            if (objL != null) {
                jSONObject.put("client_cache_info", objL);
            }
            if (!TextUtils.isEmpty(lVar.hp()) || !TextUtils.isEmpty(lVar.l()) || !TextUtils.isEmpty(lVar.jx()) || com.byazt.oz.jx.hp()) {
                JSONObject jSONObject3 = new JSONObject();
                if (!TextUtils.isEmpty(lVar.hp())) {
                    jSONObject3.put("ad_id", lVar.hp());
                }
                if (!TextUtils.isEmpty(lVar.l())) {
                    jSONObject3.put("creative_id", lVar.l());
                }
                if (lVar.jx() != null) {
                    jSONObject3.put(com.sigmob.sdk.base.n.f36450m, lVar.jx());
                }
                com.byazt.oz.jx.hp(jSONObject3, lVar.j());
                jSONObject.put("preview_ads", jSONObject3);
            }
            if (com.byazt.oz.jx.hp() && s.u().pc()) {
                com.byazt.oz.jx.l(jSONObject, lVar.j());
            }
            s.jx jxVarYj = s.u().yj();
            if (jxVarYj != null && ky.s().equals("com.pangolin_demo.toutiao")) {
                jxVarYj.hp(jSONObject);
            }
            int iJl = 1;
            if (i2 == 3 || i2 == 4) {
                if (fVar != null) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("publisher_timeout_control", fVar.f27269e);
                    jSONObject4.put("time_out_control", fVar.gu);
                    jSONObject4.put("time_out", fVar.jl);
                    jSONObject.put("tmax", jSONObject4);
                }
                jSONObject.put("splash_button_type", 1);
            }
            if (fVar != null) {
                jSONObject.put("render_method", fVar.eb);
                int i3 = fVar.eb;
                if (i3 == 1) {
                    if (j(lVar)) {
                        hp(i2, jSONObject);
                    } else {
                        hp(jSONObject, "accepted_size", lVar.a(), lVar.eb());
                    }
                } else if (i3 == 2) {
                    if (lVar.s() > 0.0f && lVar.q() > 0.0f) {
                        hp(jSONObject, "accepted_size", xh.jx(this.hp, lVar.s()), xh.jx(this.hp, lVar.q()));
                    } else if (j(lVar)) {
                        hp(i2, jSONObject);
                    } else {
                        hp(jSONObject, "accepted_size", lVar.a(), lVar.eb());
                    }
                }
            } else {
                jSONObject.put("render_method", 1);
                hp(jSONObject, "accepted_size", lVar.a(), lVar.eb());
            }
            jSONObject.put("ptpl_ids", com.byazt.lca.l.hp().hp(lVar.j(), i2));
            jSONObject.put("ptpl_ids_v3", com.byazt.lca.l.hp().l(lVar.j(), i2));
            if (i2 == 5 || i2 == 9) {
                String string = com.byazt.ry.j.hp(s.u().ns(), "ad_show_real_size").getString(lVar.j(), null);
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put("real_size", new JSONObject(string));
                }
            }
            jSONObject.put("pos", ky.w(i2));
            jSONObject.put("is_support_dpl", lVar.e());
            jSONObject.put("if_support_render_control", lVar.gu() ? 1 : 0);
            jSONObject.put("support_icon_style", (d.f21856j < 5900 || !lVar.o()) ? 0 : 1);
            if (i2 == 3 || i2 == 4) {
                jSONObject.put("splash_load_type", sz.l().s(ky.l(lVar)));
            }
            if (i2 == 1 || i2 == 2) {
                jSONObject.put("is_origin_ad", true);
            }
            if (fVar != null && (obj = fVar.zy) != null) {
                jSONObject.put("session_params", obj);
            }
            int iJl2 = lVar.jl();
            if (i2 == 7) {
                if (com.byazt.xci.lv.hp()) {
                    jSONObject.put("insert_ad_control", 1);
                    jSONObject.put("insert_ad_req_num", com.byazt.xci.lv.w());
                }
                if (com.byazt.xci.lv.jx()) {
                    jSONObject.put("refresh_ad_control", 1);
                    jSONObject.put("refresh_ad_req_num", com.byazt.xci.lv.eb());
                }
                if (com.byazt.xci.lv.j()) {
                    jSONObject.put("force_refresh_ad_control", 1);
                    jSONObject.put("refresh_ad_req_num", com.byazt.xci.lv.eb());
                }
                iJl2 = 1;
            }
            if (i2 == 8) {
                boolean zV = sz.l().v(lVar.j());
                boolean zHp = com.byazt.am.j.hp(lVar.j());
                if (!zV) {
                    jSONObject.put("refresh_control", 0);
                } else if (zHp) {
                    jSONObject.put("refresh_control", 0);
                    com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.jz.b.2
                        @Override // com.byazt.fq.hp
                        public com.byazt.jlb.hp hp() throws Exception {
                            JSONObject jSONObject5 = new JSONObject();
                            try {
                                jSONObject5.put("cid", "");
                            } catch (JSONException unused2) {
                            }
                            return com.byazt.jlb.l.l().hp("refresh_max").l(jSONObject5.toString());
                        }
                    }, "refresh_max");
                } else {
                    jSONObject.put("refresh_control", 1);
                    jSONObject.put("refresh_ad_req_num", sz.l().on());
                }
                if (com.byazt.xci.lv.l()) {
                    jSONObject.put("insert_ad_control", 1);
                    jSONObject.put("insert_ad_req_num", com.byazt.xci.lv.a());
                }
            } else {
                iJl = iJl2;
            }
            if (fVar != null && fVar.f27268a != null) {
                iJl = lVar.jl();
            }
            jSONObject.put(PointParamKey.AD_COUNT, iJl);
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    private void hp(int i2, JSONObject jSONObject) throws JSONException {
        if (l(i2)) {
            hp(jSONObject, "accepted_size", xh.j(this.hp), xh.w(this.hp));
        } else {
            hp(jSONObject, "accepted_size", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
    }

    private void hp(JSONObject jSONObject, String str, int i2, int i3) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            if (i2 > 0 && i3 > 0) {
                jSONObject2.put("width", i2);
                jSONObject2.put("height", i3);
            } else {
                jSONObject2.put("width", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
                jSONObject2.put("height", MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            }
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private void hp(JSONObject jSONObject, String str, float f2, float f3) throws JSONException {
        if (f2 <= 0.0f || f3 < 0.0f) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", (int) f2);
            jSONObject2.put("height", (int) f3);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.jz.cx
    public void hp(JSONObject jSONObject, final cx.w wVar) {
        if (!com.byazt.jkd.q.hp()) {
            if (wVar != null) {
                wVar.hp(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            }
        } else {
            if (jSONObject == null || wVar == null) {
                return;
            }
            as asVar = new as(com.byazt.cm.w.hp().l().a());
            asVar.hp(ky.gu("/api/ad/union/sdk/reward_video/reward/"));
            asVar.jx(jSONObject, "verify");
            asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.3
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    if (lVar != null) {
                        if (!lVar.q()) {
                            String strHp = eb.hp(-2);
                            int iL = lVar.l();
                            if (!lVar.q() && !TextUtils.isEmpty(lVar.jx())) {
                                strHp = lVar.jx();
                            }
                            wVar.hp(iL, strHp);
                            return;
                        }
                        try {
                            Object obj = com.byazt.lca.a.hp(lVar, "verify", false).second;
                            j jVarHp = j.hp(obj != null ? (JSONObject) obj : new JSONObject(lVar.w()));
                            int i2 = jVarHp.hp;
                            if (i2 != 20000) {
                                wVar.hp(i2, eb.hp(i2));
                                return;
                            } else if (jVarHp.jx == null) {
                                b.this.hp(wVar);
                                return;
                            } else {
                                wVar.hp(jVarHp);
                                return;
                            }
                        } catch (Exception unused) {
                        }
                    }
                    b.this.hp(wVar);
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    wVar.hp(-2, iOException.getMessage());
                }
            });
        }
    }

    @Override // com.byazt.jz.cx
    public void hp(JSONObject jSONObject, final cx.j jVar) {
        if (!com.byazt.jkd.q.hp()) {
            if (jVar != null) {
                jVar.hp(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            }
        } else {
            if (jSONObject == null || jVar == null) {
                return;
            }
            JSONObject jSONObjectHp = com.byazt.ymw.hp.hp(jSONObject);
            com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
            wVarL.hp(ky.gu("/api/ad/union/sdk/reward_video/live_room/reward"));
            wVarL.jx(jSONObjectHp.toString());
            wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.4
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar2, com.byazt.oyr.l lVar) {
                    if (lVar != null) {
                        if (!lVar.q() || TextUtils.isEmpty(lVar.w())) {
                            String strHp = eb.hp(-2);
                            int iL = lVar.l();
                            if (!lVar.q() && !TextUtils.isEmpty(lVar.jx())) {
                                strHp = lVar.jx();
                            }
                            jVar.hp(iL, strHp);
                            return;
                        }
                        try {
                            JSONObject jSONObject2 = new JSONObject(lVar.w());
                            String strJx = jSONObject2.optInt("cypher", -1) == 3 ? com.byazt.ymw.hp.jx(jSONObject2.optString("message")) : null;
                            if (!TextUtils.isEmpty(strJx)) {
                                try {
                                    jSONObject2 = new JSONObject(strJx);
                                } catch (Throwable unused) {
                                }
                            }
                            jx jxVarHp = jx.hp(jSONObject2);
                            int i2 = jxVarHp.hp;
                            if (i2 != 20000) {
                                jVar.hp(i2, eb.hp(i2));
                                return;
                            } else if (jxVarHp.jx == null) {
                                b.this.hp(jVar);
                                return;
                            } else {
                                jVar.hp(jxVarHp);
                                return;
                            }
                        } catch (JSONException unused2) {
                        }
                    }
                    b.this.hp(jVar);
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar2, IOException iOException) {
                    jVar.hp(-2, iOException.getMessage());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00cc A[PHI: r0
      0x00cc: PHI (r0v2 java.lang.String) = (r0v1 java.lang.String), (r0v4 java.lang.String) binds: [B:28:0x00b3, B:33:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.jz.cx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String hp(com.byazt.jt.l r15, boolean r16, int r17) throws org.json.JSONException {
        /*
            r14 = this;
            r0 = r17
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            com.byazt.xci.f r4 = new com.byazt.xci.f
            r4.<init>()
            java.lang.String r9 = r4.l()
            r14.hp(r15, r9)
            com.byazt.jz.ns r10 = r4.f27277v
            int r2 = r15.sz()
            r3 = 2
            r11 = 3
            if (r11 != r2) goto L25
            long r5 = java.lang.System.currentTimeMillis()
            r4.f27275s = r5
            r4.eb = r3
        L25:
            if (r16 == 0) goto L29
            r4.eb = r3
        L29:
            int r2 = r15.u()
            r12 = 1
            if (r12 == r2) goto L36
            int r2 = r15.u()
            if (r3 != r2) goto L38
        L36:
            r4.eb = r3
        L38:
            int r2 = r4.eb
            if (r2 == r3) goto L4c
            com.byazt.jkd.gu r2 = com.byazt.jz.sz.l()
            java.lang.String r5 = r15.j()
            boolean r2 = r2.q(r5)
            if (r2 == 0) goto L4c
            r4.eb = r3
        L4c:
            int r2 = r15.sz()
            r13 = 0
            if (r2 <= 0) goto L59
            int r2 = r15.sz()
            r5 = r2
            goto L5e
        L59:
            if (r0 <= 0) goto L5d
            r5 = r0
            goto L5e
        L5d:
            r5 = r13
        L5e:
            r7 = 4
            r8 = 0
            r6 = 1
            r2 = r14
            r3 = r15
            org.json.JSONObject r6 = r2.hp(r3, r4, r5, r6, r7, r8, r9)
            java.lang.String r7 = "adbody_time"
            r10.l(r7)
            r14.hp(r15, r4, r5)
            java.lang.String r15 = "prefetch_time"
            r10.l(r15)
            org.json.JSONObject r15 = new org.json.JSONObject
            r15.<init>()
            java.lang.String r3 = "User-Agent"
            java.lang.String r4 = "device_info_new"
            java.lang.Object r4 = com.byazt.ym.j.getService(r4)     // Catch: java.lang.Exception -> L99
            com.byazt.pg.jl r4 = (com.byazt.pg.jl) r4     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r4.getWebViewUA(r13)     // Catch: java.lang.Exception -> L99
            r15.putOpt(r3, r4)     // Catch: java.lang.Exception -> L99
            java.lang.String r3 = "request_headers_time"
            r10.l(r3)     // Catch: java.lang.Exception -> L99
            java.lang.String r3 = "header"
            r1.putOpt(r3, r15)     // Catch: java.lang.Exception -> L99
            java.lang.String r15 = "bid_request"
            r1.putOpt(r15, r6)     // Catch: java.lang.Exception -> L99
        L99:
            java.lang.String r15 = r1.toString()
            com.byazt.lca.a r1 = com.byazt.lca.a.hp()
            android.util.Pair r15 = r1.hp(r15, r12)
            java.lang.String r1 = "encry_time"
            r10.l(r1)
            com.byazt.lf.k r1 = com.byazt.lf.k.hp()     // Catch: java.lang.Throwable -> Lb1
            r1.hp(r0, r10)     // Catch: java.lang.Throwable -> Lb1
        Lb1:
            java.lang.String r0 = ""
            if (r15 == 0) goto Lcc
            java.lang.Object r1 = r15.second
            if (r1 == 0) goto Lc1
            org.json.JSONObject r1 = (org.json.JSONObject) r1
            java.lang.String r0 = "message"
            java.lang.String r0 = r1.optString(r0)
        Lc1:
            java.lang.Object r15 = r15.first
            if (r15 == 0) goto Lcc
            java.lang.Integer r15 = (java.lang.Integer) r15
            int r15 = r15.intValue()
            goto Lcd
        Lcc:
            r15 = r11
        Lcd:
            if (r15 == r11) goto Lde
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            java.lang.String r1 = "0000000004"
            r15.<init>(r1)
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            return r15
        Lde:
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            java.lang.String r1 = "0000000003"
            r15.<init>(r1)
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.b.hp(com.byazt.jt.l, boolean, int):java.lang.String");
    }

    private void hp(final com.byazt.jt.l lVar, String str) {
        String string = UUID.randomUUID().toString();
        com.byazt.kt.l lVar2 = (com.byazt.kt.l) com.byazt.gy.w.hp(0);
        lVar2.l(string, lVar.lv());
        lVar2.hp(string, new com.byazt.tb.jx());
        lVar2.hp(str, string);
        lVar2.hp(string, new j.hp() { // from class: com.byazt.jz.b.5
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar3) {
                com.byazt.jt.l lVar4;
                if (!(lVar3 instanceof com.byazt.kf.l) || (lVar4 = lVar) == null) {
                    return;
                }
                com.byazt.kf.l lVar5 = (com.byazt.kf.l) lVar3;
                lVar5.hp = lVar4;
                lVar5.f20630s = lVar4.j();
                lVar5.eb = lVar.sz();
            }
        });
        lVar2.hp(string, com.byazt.np.l.STARTED);
    }

    private boolean hp(com.byazt.jt.l lVar, com.byazt.xci.f fVar, int i2) {
        boolean zHp = sz.l().hp(lVar.j());
        if (zHp) {
            w(lVar, fVar, i2, new cx.l() { // from class: com.byazt.jz.b.6
                @Override // com.byazt.jz.cx.l
                public void hp(int i3, String str, com.byazt.xci.l lVar2) {
                    com.byazt.lf.k.hp().hp(i3);
                }

                @Override // com.byazt.jz.cx.l
                public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar2) {
                    com.byazt.lf.k.hp().hp(0);
                }
            });
        }
        return zHp;
    }

    private void hp(boolean z2, JSONObject jSONObject, String str) throws Exception {
        String strHp = com.byazt.vo.hp.hp().hp(z2, str);
        String strOptString = "0";
        String str2 = null;
        if (strHp != null && !TextUtils.isEmpty(strHp)) {
            if (TextUtils.equals(strHp, "0")) {
                str2 = "0";
            } else if (TextUtils.equals(strHp, "1")) {
                str2 = "1";
            } else {
                JSONObject jSONObject2 = new JSONObject(strHp);
                jSONObject.putOpt("cache_info", jSONObject2);
                strOptString = jSONObject2.optString("req_id");
            }
        }
        com.byazt.lf.k.hp().hp(str, strOptString, str2, false);
    }

    @Override // com.byazt.jz.cx
    public String hp(com.byazt.jt.l lVar) {
        return hp(lVar, false, -1);
    }

    @Override // com.byazt.jz.cx
    public void hp(String str, String str2, final cx.hp hpVar) throws JSONException {
        if (!com.byazt.jkd.q.hp()) {
            if (hpVar != null) {
                hpVar.hp(false, -1L, 0L);
                return;
            }
            return;
        }
        if (str == null || str2 == null || hpVar == null) {
            return;
        }
        JSONObject jSONObjectHp = com.byazt.yek.j.hp(str, str2);
        as asVar = new as(com.byazt.cm.w.hp().l().a());
        String strGu = ky.gu("/api/ad/union/sdk/material/check/");
        try {
            if (TextUtils.isEmpty(new URL(strGu).getQuery())) {
                strGu = strGu + "?abort_aes=1";
            } else {
                strGu = strGu + "&abort_aes=1";
            }
        } catch (Exception unused) {
        }
        asVar.hp(strGu);
        asVar.jx(jSONObjectHp, "check_ad");
        asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.7
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (lVar != null) {
                    if (!lVar.q()) {
                        hpVar.hp(false, lVar.l() != 0 ? lVar.l() : -1L, lVar.e());
                        return;
                    }
                    boolean z2 = false;
                    if (lVar.w() != null) {
                        try {
                            l lVarHp = l.hp(new JSONObject(lVar.w()));
                            j = lVarHp.hp;
                            z2 = lVarHp.f21853l;
                        } catch (JSONException unused2) {
                        }
                    }
                    hpVar.hp(z2, j, lVar.e());
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                hpVar.hp(false, 0L, 0L);
            }
        });
    }

    @Override // com.byazt.jz.cx
    public void hp(JSONObject jSONObject, final com.byazt.yek.l lVar) {
        if (lVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        as asVar = new as(com.byazt.cm.w.hp().l().a());
        String strGu = ky.gu("/api/ad/union/sdk/material/cali/");
        try {
            if (TextUtils.isEmpty(new URL(strGu).getQuery())) {
                strGu = strGu + "?abort_aes=1";
            } else {
                strGu = strGu + "&abort_aes=1";
            }
        } catch (Exception unused) {
        }
        asVar.hp(strGu);
        asVar.jx(jSONObject, "checkAndCorrectAd");
        asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.8
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar2) {
                com.byazt.yek.w wVar;
                long j2;
                if (lVar2 != null) {
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (lVar2.q()) {
                        try {
                            Object obj = com.byazt.lca.a.hp(lVar2, "checkAndCorrectAd", false).second;
                            com.byazt.yek.w wVarHp = null;
                            JSONObject jSONObject2 = obj != null ? (JSONObject) obj : null;
                            if (jSONObject2 != null) {
                                try {
                                    wVarHp = com.byazt.yek.w.hp(jSONObject2);
                                    wVar = wVarHp;
                                    j2 = wVarHp != null ? wVarHp.hp : -1L;
                                } catch (Exception unused2) {
                                }
                            } else {
                                j2 = -1;
                                wVar = wVarHp;
                            }
                            lVar.hp(wVar, j2, jCurrentTimeMillis2);
                            return;
                        } catch (Exception unused3) {
                        }
                    }
                    lVar.hp(null, lVar2.l() != 0 ? lVar2.l() : -1L, jCurrentTimeMillis2);
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                lVar.hp(null, -1L, 0L);
            }
        });
    }

    @Override // com.byazt.jz.cx
    public com.byazt.gr.hp hp(int i2) {
        String strQa;
        if (!com.byazt.jkd.q.hp()) {
            return null;
        }
        if (i2 == 2) {
            strQa = sz.l().nc();
        } else {
            strQa = sz.l().qa();
        }
        if (TextUtils.isEmpty(strQa)) {
            return null;
        }
        com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
        jxVarJx.hp(pu.l(strQa));
        com.byazt.oyr.l lVarHp = jxVarJx.hp();
        if (lVarHp != null) {
            try {
                if (lVarHp.q()) {
                    if (i2 == 2) {
                        return com.byazt.nqo.l.w(lVarHp.w());
                    }
                    return com.byazt.gr.hp.j(lVarHp.w());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // com.byazt.jz.cx
    public com.byazt.xci.j hp(final mp mpVar, String str) throws InterruptedException {
        String strAi;
        String strWv;
        if (mpVar != null) {
            strAi = mpVar.ai();
            strWv = ky.wv(mpVar);
        } else {
            strAi = null;
            strWv = null;
        }
        com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
        jxVarJx.hp("https://" + sz.l().vx() + "/customer/api/app/pkg_info");
        jxVarJx.hp("convert_id", strAi);
        jxVarJx.hp("package_name", strWv);
        jxVarJx.hp("download_url", com.byazt.dnb.q.l(str));
        String str2 = strAi + "_" + strWv + "_" + str;
        com.byazt.xci.j jVarHp = com.byazt.ff.hp.hp(str2);
        if (jVarHp != null) {
            return jVarHp;
        }
        final com.byazt.oyr.l[] lVarArr = {null};
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.9
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                lVarArr[0] = lVar;
                countDownLatch.countDown();
            }

            @Override // com.byazt.mnb.hp
            public void hp(final com.byazt.ap.j jVar, final IOException iOException) {
                countDownLatch.countDown();
                com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.jz.b.9.1
                    @Override // com.byazt.fq.hp
                    public com.byazt.jlb.hp hp() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        com.byazt.ap.j jVar2 = jVar;
                        if (jVar2 != null) {
                            jSONObject.putOpt("net_extra", jVar2.j());
                        }
                        IOException iOException2 = iOException;
                        if (iOException2 != null) {
                            jSONObject.putOpt("io_error", iOException2.getMessage());
                        }
                        com.byazt.jlb.l<com.byazt.jlb.l> lVarL = com.byazt.jlb.l.l();
                        mp mpVar2 = mpVar;
                        return lVarL.s(mpVar2 != null ? mpVar2.w_() : "").hp("pkg_info_failed").l(jSONObject.toString());
                    }
                }, "pkg_info_failed");
            }
        });
        try {
            countDownLatch.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
        }
        try {
            com.byazt.oyr.l lVar = lVarArr[0];
            if (lVar != null && lVar.q() && !TextUtils.isEmpty(lVarArr[0].w()) && new JSONObject(lVarArr[0].w()).optInt("code", -1) == 0) {
                com.byazt.xci.j jVar = new com.byazt.xci.j(new JSONObject(lVarArr[0].w()));
                com.byazt.ff.hp.hp(str2, jVar);
                return jVar;
            }
        } catch (Throwable unused2) {
        }
        return null;
    }

    @Override // com.byazt.jz.cx
    public void hp(final ux uxVar, final String str, final String str2, final cx.jx jxVar, final int i2, final long j2) {
        if (jxVar == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("get_wlink") { // from class: com.byazt.jz.b.10
                @Override // java.lang.Runnable
                public void run() {
                    b.this.l(uxVar, str, str2, jxVar, i2, j2);
                }
            });
        } else {
            l(uxVar, str, str2, jxVar, i2, j2);
        }
    }

    private JSONObject hp(ux uxVar, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adv_id", uxVar.jx());
            jSONObject.put("site_id", uxVar.j());
            jSONObject.put("page_url", str);
            jSONObject.put("log_extra", str2);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    @Override // com.byazt.jz.cx
    public void hp(String str) {
        w(str);
    }

    @Override // com.byazt.jz.cx
    public void hp(final JSONObject jSONObject, final cx.jx<com.byazt.oyr.l> jxVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.byazt.uid.w.hp().execute(new Runnable() { // from class: com.byazt.jz.b.14
                @Override // java.lang.Runnable
                public void run() {
                    b.this.l(jSONObject, (cx.jx<com.byazt.oyr.l>) jxVar);
                }
            });
        } else {
            l(jSONObject, jxVar);
        }
    }

    @Override // com.byazt.jz.cx
    public void hp(final Function<SparseArray<Object>, Object> function) throws IOException {
        com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
        wVarL.hp("https://" + s.u().fi() + "/ad_union_qa/sdk/query_config_list");
        wVarL.l("x-pglcypher", "4");
        wVarL.l("x-ad-sdk-version", d.f21860w);
        wVarL.l("x-plugin-version", "7.6.4.3");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_id", s.u().ns());
            jSONObject.put(bv.f48923x, "android");
            jSONObject.put("ad_sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
        } catch (Throwable unused) {
        }
        byte[] bArrHp = com.byazt.zn.e.hp(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
        final com.byazt.pg.w wVarL2 = com.byazt.zn.b.l();
        if (wVarL2 == null) {
            hp(function, -4, "armor service init fail");
        } else {
            wVarL.hp("application/octet-stream", wVarL2.encrypt(bArrHp));
            wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.15
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    Function function2 = function;
                    if (function2 == null || lVar == null) {
                        b.this.hp((Function<SparseArray<Object>, Object>) function2, -1, "response is null");
                        return;
                    }
                    String strL = com.byazt.zn.e.l((TextUtils.equals(lVar.j().get("content-type"), "application/octet-stream") || TextUtils.equals(lVar.j().get("x-pglcypher"), "4")) ? wVarL2.decrypt(lVar.gu()) : lVar.w().getBytes());
                    if (TextUtils.isEmpty(strL)) {
                        b.this.hp((Function<SparseArray<Object>, Object>) function, -3, "response unGzipStr is null");
                        return;
                    }
                    try {
                        JSONObject jSONObject2 = new JSONObject(strL);
                        int iOptInt = jSONObject2.optInt("code", -1);
                        String strOptString = jSONObject2.optString("message");
                        if (iOptInt != 0) {
                            b.this.hp((Function<SparseArray<Object>, Object>) function, iOptInt, strOptString);
                            return;
                        }
                        String strOptString2 = jSONObject2.optString("data");
                        if (TextUtils.isEmpty(strOptString2)) {
                            b.this.hp((Function<SparseArray<Object>, Object>) function, iOptInt, "response data is empty");
                        } else {
                            b.this.hp((Function<SparseArray<Object>, Object>) function, strOptString2);
                        }
                    } catch (JSONException unused2) {
                        b.this.hp((Function<SparseArray<Object>, Object>) function, -1, "response create json error");
                    }
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    b.this.hp((Function<SparseArray<Object>, Object>) function, -2, "response onFailure");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Function<SparseArray<Object>, Object> function, String str) {
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(10000).hp(Void.class).hp(0, str).l());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Function<SparseArray<Object>, Object> function, int i2, String str) {
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(10001).hp(Void.class).hp(0, Integer.valueOf(i2)).hp(1, str).l());
        }
    }

    @Override // com.byazt.jz.cx
    public void hp(final Map<String, Object> map, final Function<SparseArray<Object>, Object> function) throws JSONException, IOException {
        if (map == null || map.size() == 0) {
            return;
        }
        com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
        wVarL.hp("https://" + s.u().fi() + "/ad_union_qa/sdk/get_ad_config");
        wVarL.l("x-pglcypher", "4");
        wVarL.l("x-ad-sdk-version", d.f21860w);
        wVarL.l("x-plugin-version", "7.6.4.3");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_id", s.u().ns());
            jSONObject.put(bv.f48923x, "android");
            jSONObject.put("ad_sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            byte[] bArrHp = com.byazt.zn.e.hp(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
            final com.byazt.pg.w wVarL2 = com.byazt.zn.b.l();
            if (wVarL2 == null) {
                hp(function, -4, "armor service init fail");
            } else {
                wVarL.hp("application/octet-stream", wVarL2.encrypt(bArrHp));
                wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jz.b.16
                    @Override // com.byazt.mnb.hp
                    public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                        String strL;
                        int iOptInt = -1;
                        if (lVar == null) {
                            b.this.hp((Function<SparseArray<Object>, Object>) function, -1, "response is null");
                            return;
                        }
                        String str = lVar.j().get("content-type");
                        String str2 = lVar.j().get("x-pglcypher");
                        String strOptString = "";
                        if (TextUtils.equals(str, "application/octet-stream") || TextUtils.equals(str2, "4")) {
                            strL = com.byazt.zn.e.l(wVarL2.decrypt(lVar.gu()));
                            if (TextUtils.isEmpty(strL)) {
                                strOptString = "data is null";
                            } else {
                                PluginValueSet pluginValueSetL = com.byazt.wi.jx.l(function);
                                if (!TextUtils.isEmpty(strL) && function != null && pluginValueSetL != null && TextUtils.equals((CharSequence) pluginValueSetL.objectValue(0, String.class), "GetAdConfigImpl")) {
                                    s.u().hp(new s.jx(map, strL));
                                }
                                iOptInt = 0;
                            }
                        } else {
                            try {
                                JSONObject jSONObject2 = new JSONObject(lVar.w());
                                iOptInt = jSONObject2.optInt("code");
                                String strOptString2 = jSONObject2.optString("message");
                                try {
                                    strOptString = jSONObject2.optString("data");
                                    PluginValueSet pluginValueSetL2 = com.byazt.wi.jx.l(function);
                                    if (!TextUtils.isEmpty(strOptString) && function != null && pluginValueSetL2 != null && TextUtils.equals((CharSequence) pluginValueSetL2.objectValue(0, String.class), "GetAdConfigImpl")) {
                                        s.u().hp(new s.jx(map, strOptString));
                                    }
                                } catch (JSONException unused) {
                                }
                                String str3 = strOptString;
                                strOptString = strOptString2;
                                strL = str3;
                            } catch (JSONException unused2) {
                                strL = "";
                            }
                        }
                        if (iOptInt == 0) {
                            b.this.hp((Function<SparseArray<Object>, Object>) function, strL);
                        } else {
                            b.this.hp((Function<SparseArray<Object>, Object>) function, iOptInt, strOptString);
                        }
                    }

                    @Override // com.byazt.mnb.hp
                    public void hp(com.byazt.ap.j jVar, IOException iOException) {
                        b.this.hp((Function<SparseArray<Object>, Object>) function, -2, "response onFailure");
                    }
                });
            }
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }
}
