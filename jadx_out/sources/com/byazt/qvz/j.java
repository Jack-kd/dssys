package com.byazt.qvz;

import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.f.s;
import com.byazt.dnb.jl;
import com.byazt.jo.e;
import com.byazt.jo.eb;
import com.byazt.jo.gu;
import com.byazt.jo.k;
import com.byazt.jo.q;
import com.byazt.jo.u;
import com.byazt.jo.v;
import com.byazt.jo.xs;
import com.byazt.rx.BaseConstants;
import com.byazt.sf.zy;
import com.byazt.tw.a;
import com.byazt.um.w;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 236, 38})
/* loaded from: classes3.dex */
public class j {
    public static final Map<com.byazt.wn.hp, xs> hp = Collections.synchronizedMap(new WeakHashMap());

    public static void j(com.byazt.jo.l<e> lVar) {
        l(lVar, "load_video_cancel");
    }

    public static void jx(com.byazt.jo.l<gu> lVar) {
        l(lVar, "load_video_error");
    }

    public static void w(final com.byazt.wn.hp hpVar, final xs.hp hpVar2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.11
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs.hp hpVar3;
                xs xsVar;
                if (hpVar == null || (hpVar3 = hpVar2) == null || hpVar3.jl() <= 0 || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long j2 = hpVar2.j();
                if (j2 <= 0) {
                    return;
                }
                k kVar = new k();
                kVar.hp(hpVar2.jx());
                kVar.l(j2);
                kVar.hp(hpVar2.jl());
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_ACTION"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, kVar);
                lVar.hp(hpVar2.zy());
                j.l(lVar, "play_buffer");
            }
        });
    }

    public static void j(final com.byazt.wn.hp hpVar, final xs.hp hpVar2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.10
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs.hp hpVar3;
                com.byazt.wn.hp hpVar4 = hpVar;
                if (hpVar4 == null || (hpVar3 = hpVar2) == null) {
                    return;
                }
                j.w(hpVar4, hpVar3);
                xs xsVar = (xs) j.hp.get(hpVar);
                if (xsVar == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long jL = hpVar2.l();
                long j2 = hpVar2.j();
                if (j2 <= 0) {
                    return;
                }
                eb ebVar = new eb();
                ebVar.l(hpVar2.jx());
                ebVar.hp(j2);
                ebVar.hp(hpVar2.gu());
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_ACTION"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, ebVar);
                lVar.hp(hpVar2.zy());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jL);
                    jSONObject.put("percent", hpVar2.q());
                    zy.hp(jL, mpVarW, aVarJ);
                    j.l(lVar, j.l(mpVarW, "feed_over"), jSONObject);
                } catch (JSONException unused) {
                }
                j.hp.remove(hpVar);
            }
        });
    }

    public static void jx(final com.byazt.wn.hp hpVar, final xs.hp hpVar2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.8
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs xsVar;
                if (hpVar == null || hpVar2 == null || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long jL = hpVar2.l();
                long j2 = hpVar2.j();
                com.byazt.jo.jx jxVar = new com.byazt.jo.jx();
                jxVar.jx(hpVar2.jx());
                jxVar.j(j2);
                jxVar.l(hpVar2.eb());
                jxVar.jx(hpVar2.s());
                jxVar.l(com.byazt.dnb.gu.hp(mpVarW.qe()).getCachedSize(aVarJ));
                jxVar.hp(jL);
                jxVar.hp(hpVar2.q());
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_START"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, jxVar);
                lVar.hp(hpVar2.zy());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jL);
                    jSONObject.put("percent", hpVar2.q());
                    j.l(lVar, "endcard_skip", jSONObject);
                } catch (JSONException unused) {
                }
                jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        j.hp.remove(hpVar);
                    }
                }, 1000L);
            }
        });
    }

    private static boolean w(com.byazt.jo.l lVar) {
        mp mpVarHp;
        com.byazt.jt.l lVarDb;
        if (lVar == null || !lVar.w() || (mpVarHp = lVar.hp()) == null || (lVarDb = mpVarHp.db()) == null) {
            return false;
        }
        String strNs = lVarDb.ns();
        if (TextUtils.isEmpty(strNs)) {
            return false;
        }
        try {
            JSONArray jSONArray = new JSONArray(strNs);
            int length = jSONArray.length();
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            for (int i2 = 0; i2 < length; i2++) {
                String strOptString = jSONArray.getJSONObject(i2).optString("name");
                if ("content_did".equalsIgnoreCase(strOptString)) {
                    z2 = true;
                } else if ("content_utmsource".equalsIgnoreCase(strOptString)) {
                    z3 = true;
                } else if ("content_sdk_version".equalsIgnoreCase(strOptString)) {
                    z4 = true;
                }
            }
            return z2 && z3 && z4;
        } catch (JSONException e2) {
            e2.getMessage();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(a aVar) {
        return new File(aVar.getCacheParentDir(), aVar.getFileNameKey()).getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long jx(a aVar) {
        if (aVar == null) {
            return 0L;
        }
        w videoH265 = aVar.isH265() ? aVar.getVideoH265() : aVar.getVideoH264();
        if (videoH265 != null) {
            return Double.valueOf(videoH265.getVideo_duration() * 1000.0d).longValue();
        }
        return 0L;
    }

    public static void l(com.byazt.jo.l<com.byazt.jo.zy> lVar) {
        l(lVar, "load_video_success");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l(mp mpVar, String str) {
        if (mpVar == null || !ky.q(mpVar) || !ky.e(mpVar)) {
            return str;
        }
        str.getClass();
        switch (str) {
        }
        return str;
    }

    public static JSONObject hp(a aVar, String str, int i2, int i3, mp mpVar, long j2) {
        w videoH264;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("session_id", str);
            }
            if (i2 > 0) {
                jSONObject.put("play_type", String.valueOf(i2));
            }
            if (jl.hp(mpVar)) {
                jSONObject.put("is_audio", 1);
            }
            if (aVar != null) {
                if (com.byazt.we.hp.hp(mpVar)) {
                    jSONObject.put("codec", mpVar.kg());
                    videoH264 = null;
                } else if (aVar.isH265()) {
                    videoH264 = aVar.getVideoH265();
                    jSONObject.put("codec", "h265");
                } else {
                    videoH264 = aVar.getVideoH264();
                }
                if (videoH264 != null) {
                    jSONObject.put("video_resolution", videoH264.getResolution());
                    jSONObject.put("video_size", Long.valueOf(videoH264.getSize()));
                    String video_url = videoH264.getVideo_url();
                    jSONObject.put(s.a.f3400b, video_url);
                    jSONObject.put("is_expired", ky.v(video_url));
                    jSONObject.put("send_duration", Math.floor(System.currentTimeMillis() - (ky.u(mpVar) * 1000.0d)));
                    jSONObject.put("start_duration", j2);
                    jSONObject.put("player_type", i3);
                    jSONObject.put("play_speed_ratio", videoH264.getPlay_speed_ratio());
                    if (videoH264.getStart() > 0.0d) {
                        jSONObject.put("start", videoH264.getStart());
                    }
                }
            }
            if (mpVar != null) {
                jSONObject.put("dynamic_join_type", mpVar.ja());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static void l(final com.byazt.wn.hp hpVar, final xs.hp hpVar2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.6
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs xsVar;
                if (hpVar == null || hpVar2 == null || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long jL = hpVar2.l();
                long j2 = hpVar2.j();
                if (j2 <= 0 || jL <= 0) {
                    return;
                }
                com.byazt.jo.a aVar = new com.byazt.jo.a();
                aVar.hp(hpVar2.jx());
                aVar.l(j2);
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_ACTION"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, aVar);
                lVar.hp(hpVar2.zy());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jL);
                    jSONObject.put("percent", hpVar2.q());
                    j.l(lVar, "feed_continue", jSONObject);
                } catch (JSONException unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(com.byazt.jo.l lVar, String str) {
        l(lVar, str, (JSONObject) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final com.byazt.jo.l lVar, String str, JSONObject jSONObject) {
        if (lVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (lVar.w() && !TextUtils.isEmpty(lVar.l()) && !w(lVar)) {
            String strL = lVar.l();
            strL.getClass();
            switch (strL) {
                case "stream":
                case "embeded_ad":
                case "draw_ad":
                    str = "customer_".concat(String.valueOf(str));
                    break;
            }
        }
        l.hp(str, lVar.hp());
        com.byazt.jdb.j.hp(lVar.hp(), lVar.l(), str, jSONObject, new com.byazt.dhy.hp() { // from class: com.byazt.qvz.j.2
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObjectJx = lVar.jx();
                if (lVar.j() != null) {
                    lVar.j().a_(jSONObjectJx);
                }
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObjectJx.toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final mp mpVar, final a aVar, final xs.hp hpVar) {
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.qvz.j.3
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("service_duration", j.jx(aVar));
                jSONObject.put("player_duration", hpVar.j());
                jSONObject.put("cache_path_type", com.byazt.dnb.gu.j());
                jSONObject.put("url", aVar.getUrl());
                jSONObject.put("path", j.j(aVar));
                jSONObject.put("player_type", aVar.getPlayerType());
                return com.byazt.jlb.l.l().hp("pangle_video_play_state").hp(ky.jl(mpVar)).l(jSONObject.toString());
            }
        }, "pangle_video_play_state");
    }

    public static synchronized a l(com.byazt.wn.hp hpVar) {
        if (hpVar == null) {
            return null;
        }
        xs xsVar = hp.get(hpVar);
        if (xsVar == null) {
            return null;
        }
        return xsVar.j();
    }

    public static void hp(com.byazt.jo.l<com.byazt.jo.jl> lVar) {
        l(lVar, "load_video_start");
    }

    public static int hp(mp mpVar, a aVar, long j2) {
        int iQe = mpVar.qe();
        com.byazt.um.hp hpVarHp = com.byazt.dnb.gu.hp(iQe);
        if (iQe != 0) {
            if (iQe == 1) {
                return hpVarHp.isVideoCached(aVar) ? 1 : 2;
            }
            return 3;
        }
        boolean zIsPreloadAll = aVar.isPreloadAll();
        int preloadSize = aVar.getPreloadSize();
        long videoSize = aVar.getVideoSize();
        if (zIsPreloadAll) {
            preloadSize = (int) videoSize;
        }
        int pitayaCacheSize = aVar.getPitayaCacheSize();
        if (pitayaCacheSize > 0) {
            preloadSize = pitayaCacheSize;
        }
        boolean z2 = j2 >= ((long) preloadSize);
        boolean z3 = j2 >= videoSize;
        if (j2 == 0) {
            return 2;
        }
        if (z3) {
            return 4;
        }
        return (!z2 || preloadSize == 0) ? 1 : 5;
    }

    public static String hp() {
        return UUID.randomUUID().toString();
    }

    public static void hp(final mp mpVar, final com.byazt.wn.hp hpVar, final a aVar, final boolean z2, final String str) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                mp mpVar2 = mpVar;
                if (mpVar2 == null || hpVar == null || aVar == null) {
                    return;
                }
                long cachedSize = com.byazt.dnb.gu.hp(mpVar2.qe()).getCachedSize(aVar);
                int iHp = j.hp(mpVar, aVar, cachedSize);
                j.hp.put(hpVar, new xs(SystemClock.elapsedRealtime(), str, iHp, aVar, mpVar));
                u uVar = new u();
                if (cachedSize > 0) {
                    uVar.hp(cachedSize);
                }
                uVar.hp(z2);
                zy.hp(iHp, cachedSize, mpVar, aVar);
                a aVar2 = aVar;
                JSONObject jSONObjectHp = j.hp(aVar2, str, iHp, aVar2.getPlayerType(), mpVar, 0L);
                j.hp(jSONObjectHp, aVar.getExtra("EXTRA_PLAY_START"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVar, ky.l(mpVar), jSONObjectHp, uVar);
                lVar.hp(aVar.getPlayerType() == -1);
                j.l(lVar, "play_start");
            }
        });
    }

    public static void hp(final com.byazt.wn.hp hpVar, final xs.hp hpVar2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.4
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs xsVar;
                if (hpVar == null || hpVar2 == null || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                if (!jl.hp(mpVarW) || ec.l(mpVarW)) {
                    if (!hpVar2.zy()) {
                        j.l(mpVarW, aVarJ, hpVar2);
                    }
                    q qVar = new q();
                    qVar.l(hpVar2.k() ? 1 : 0);
                    qVar.hp(hpVar2.v() ? 1 : 0);
                    qVar.l(com.byazt.dnb.gu.hp(mpVarW.qe()).getCachedSize(aVarJ));
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - xsVar.hp();
                    qVar.hp(jElapsedRealtime);
                    JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, jElapsedRealtime);
                    j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_START"));
                    com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, qVar);
                    lVar.hp(hpVar2.zy());
                    j.l(lVar, j.l(mpVarW, "feed_play"));
                }
            }
        });
    }

    public static String hp(com.byazt.wn.hp hpVar) {
        xs xsVar;
        if (hpVar != null && (xsVar = hp.get(hpVar)) != null) {
            String strL = xsVar.l();
            if (!TextUtils.isEmpty(strL)) {
                return strL;
            }
        }
        return "empty";
    }

    public static void hp(final com.byazt.wn.hp hpVar, final xs.hp hpVar2, final int i2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.5
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs xsVar;
                if (hpVar == null || hpVar2 == null || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long jL = hpVar2.l();
                long j2 = hpVar2.j();
                if (j2 <= 0 || jL <= 0) {
                    return;
                }
                com.byazt.jo.s sVar = new com.byazt.jo.s();
                sVar.hp(hpVar2.jx());
                sVar.l(j2);
                sVar.hp(i2);
                sVar.hp(hpVar2.u());
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_ACTION"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, sVar);
                lVar.hp(hpVar2.zy());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jL);
                    jSONObject.put("percent", hpVar2.q());
                    j.l(lVar, "feed_pause", jSONObject);
                } catch (JSONException unused) {
                }
            }
        });
    }

    public static void hp(final com.byazt.wn.hp hpVar, final xs.hp hpVar2, final String str, final int i2, final boolean z2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.7
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs xsVar;
                if (hpVar == null || hpVar2 == null || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long jL = hpVar2.l();
                long j2 = hpVar2.j();
                if (j2 < 0) {
                    return;
                }
                v vVar = new v();
                vVar.jx(hpVar2.jx());
                vVar.j(j2);
                vVar.jx(hpVar2.w());
                vVar.j(hpVar2.a());
                vVar.l(i2);
                vVar.l(com.byazt.dnb.gu.hp(mpVarW.qe()).getCachedSize(aVarJ));
                vVar.hp(str);
                JSONArray jSONArrayHp = hpVar2.hp();
                if (jSONArrayHp != null) {
                    vVar.hp(jSONArrayHp);
                }
                vVar.hp(jL);
                vVar.hp(hpVar2.q());
                vVar.hp(z2);
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, aVarJ.getExtra("EXTRA_PLAY_START"));
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, vVar);
                lVar.hp(hpVar2.zy());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jL);
                    jSONObject.put("percent", hpVar2.q());
                    j.l(lVar, "play_error", jSONObject);
                } catch (JSONException unused) {
                }
                jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        j.hp.remove(hpVar);
                    }
                }, 1000L);
            }
        });
    }

    public static void hp(final com.byazt.wn.hp hpVar, final xs.hp hpVar2, final Map<String, Object> map, final int i2) {
        jx.hp().hp(new Runnable() { // from class: com.byazt.qvz.j.9
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                xs xsVar;
                if (hpVar == null || hpVar2 == null || (xsVar = (xs) j.hp.get(hpVar)) == null) {
                    return;
                }
                a aVarJ = xsVar.j();
                mp mpVarW = xsVar.w();
                if (aVarJ == null || mpVarW == null) {
                    return;
                }
                long jL = hpVar2.l();
                long j2 = hpVar2.j();
                if (j2 <= 0) {
                    return;
                }
                com.byazt.jo.w wVar = new com.byazt.jo.w();
                wVar.l(hpVar2.jx());
                wVar.hp(j2);
                wVar.l(hpVar2.e());
                wVar.jx(hpVar2.gu());
                wVar.hp(i2);
                JSONObject jSONObjectHp = j.hp(aVarJ, xsVar.l(), xsVar.jx(), aVarJ.getPlayerType(), mpVarW, SystemClock.elapsedRealtime() - xsVar.hp());
                j.hp(jSONObjectHp, map);
                com.byazt.jo.l lVar = new com.byazt.jo.l(mpVarW, ky.l(mpVarW), jSONObjectHp, wVar);
                lVar.hp(hpVar2.zy());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jL);
                    jSONObject.put("percent", hpVar2.q());
                    zy.hp(jL, mpVarW, aVarJ);
                    j.l(lVar, j.l(mpVarW, "feed_break"), jSONObject);
                } catch (JSONException unused) {
                }
                j.hp.remove(hpVar);
            }
        });
    }

    public static void hp(JSONObject jSONObject, Object obj) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        Map map = null;
        try {
            if (obj instanceof Map) {
                map = (Map) obj;
            }
        } catch (Exception unused) {
        }
        if (map != null) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    jSONObject.put((String) entry.getKey(), entry.getValue());
                }
            } catch (JSONException unused2) {
            }
        }
    }
}
