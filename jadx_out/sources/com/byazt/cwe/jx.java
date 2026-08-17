package com.byazt.cwe;

import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jo.gu;
import com.byazt.jo.jl;
import com.byazt.jz.nu;
import com.byazt.jz.sz;
import com.byazt.kc.AbsServerManager;
import com.byazt.lf.k;
import com.byazt.sf.q;
import com.byazt.sf.s;
import com.byazt.tw.a;
import com.byazt.uid.eb;
import com.byazt.um.e;
import com.byazt.um.zy;
import com.byazt.xci.mp;
import com.byazt.ym.j;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.qq.e.comm.constants.ErrorCode;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1359, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile e hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile e f19005l;

    private static boolean hp(int i2) {
        return i2 == 3 || i2 == 4;
    }

    private static void j(final a aVar, final e.hp hpVar, final mp mpVar) {
        aVar.setConnectTimeOutMills(ErrorCode.UNKNOWN_ERROR);
        aVar.setReadTimeOutMills(ErrorCode.UNKNOWN_ERROR);
        aVar.setWriteTimeOutMills(ErrorCode.UNKNOWN_ERROR);
        if (mpVar != null) {
            if (com.byazt.we.hp.hp(mpVar)) {
                return;
            }
            if (aVar.getPitayaCode() == 400) {
                jx(aVar, mpVar);
                return;
            }
            l(aVar, mpVar);
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        e.hp hpVar2 = new e.hp() { // from class: com.byazt.cwe.jx.3
            @Override // com.byazt.um.e.hp
            public void cancel(zy zyVar, int i2) {
                e.hp hpVar3 = hpVar;
                if (hpVar3 != null) {
                    hpVar3.onVideoPreloadSuccess(zyVar, i2);
                }
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    jx.jx(aVar, mpVar2);
                }
                aVar.getFileNameKey();
            }

            @Override // com.byazt.um.e.hp
            public void onVideoPreloadFail(zy zyVar, int i2, String str) {
                e.hp hpVar3 = hpVar;
                if (hpVar3 != null) {
                    hpVar3.onVideoPreloadFail(zyVar, i2, str);
                }
                if (mpVar != null) {
                    jx.l(aVar, mpVar, SystemClock.elapsedRealtime() - jElapsedRealtime, i2, str);
                }
                aVar.getFileNameKey();
            }

            @Override // com.byazt.um.e.hp
            public void onVideoPreloadSuccess(zy zyVar, int i2) {
                e.hp hpVar3 = hpVar;
                if (hpVar3 != null) {
                    hpVar3.onVideoPreloadSuccess(zyVar, i2);
                }
                if (mpVar != null) {
                    jx.hp(aVar, mpVar, SystemClock.elapsedRealtime() - jElapsedRealtime);
                }
                aVar.getFileNameKey();
            }
        };
        try {
            aVar.getPlayerType();
            l(aVar).execVideoPreload(sz.getContext(), aVar, hpVar2);
        } catch (Exception e2) {
            if (hpVar != null) {
                aVar.getFileNameKey();
                hpVar.onVideoPreloadFail(aVar, -1, e2.getMessage());
            }
            if (mpVar != null) {
                l(aVar, mpVar, SystemClock.elapsedRealtime() - jElapsedRealtime, -1, e2.getMessage());
            }
        }
    }

    private static boolean jx(a aVar) {
        return true;
    }

    private static boolean l(int i2) {
        return i2 == 8 || i2 == 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(final a aVar, final e.hp hpVar, final mp mpVar) {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            int iJl = mpVar != null ? ky.jl(mpVar) : 0;
            boolean zHp = com.byazt.sf.e.hp();
            if (!l(iJl) || !zHp) {
                hp(aVar, hpVar, mpVar, jCurrentTimeMillis, zHp);
                return;
            }
            if (sz.hp(10003) == null) {
                hp(aVar, hpVar, mpVar, jCurrentTimeMillis, zHp);
                return;
            }
            com.byazt.sf.jx jxVar = (com.byazt.sf.jx) j.getService("pitaya");
            if (jxVar == null || !jxVar.isPitayaInitSuccess()) {
                hp(aVar, -1000, -8, "not init", (JSONObject) null, System.currentTimeMillis() - jCurrentTimeMillis);
                j(aVar, hpVar, mpVar);
            } else {
                final JSONObject jSONObjectHp = new com.byazt.sf.zy().hp(aVar);
                jxVar.runTask("video_cache", jSONObjectHp, new s() { // from class: com.byazt.cwe.jx.2
                    @Override // com.byazt.sf.s
                    public PluginValueSet hp(int i2, q qVar) throws JSONException {
                        k.hp();
                        k.hp(qVar == null ? null : qVar.j(), jSONObjectHp);
                        return jx.l(i2, qVar, aVar, hpVar, jCurrentTimeMillis, mpVar);
                    }
                });
            }
        } catch (Exception e2) {
            u.hp("pit predict error:" + e2.getMessage());
        }
    }

    private static e l(a aVar) {
        if (aVar.getPlayerType() == 1) {
            if (f19005l == null) {
                synchronized (jx.class) {
                    try {
                        if (f19005l == null) {
                            f19005l = l.hp().createVideoPreload();
                        }
                    } finally {
                    }
                }
            }
            return f19005l;
        }
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new com.byazt.va.hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static void hp(final a aVar, final e.hp hpVar) {
        if (aVar == null) {
            l(null, hpVar, null);
            return;
        }
        aVar.getPreloadSize();
        aVar.isPreloadAll();
        final mp mpVarHp = hp(aVar);
        if (aVar.getPreloadSize() <= 0 && !aVar.isPreloadAll()) {
            l(aVar, hpVar, mpVarHp);
        } else if (com.byazt.dnb.s.hp()) {
            com.byazt.dnb.s.hp(new eb("csj_vPreload") { // from class: com.byazt.cwe.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    jx.jx(aVar, hpVar, mpVarHp);
                }
            });
        } else {
            jx(aVar, hpVar, mpVarHp);
        }
    }

    private static void hp(a aVar, e.hp hpVar, mp mpVar, long j2, boolean z2) throws JSONException {
        hp(aVar, -1000, z2 ? -6 : -9, "bridge is null", (JSONObject) null, System.currentTimeMillis() - j2);
        j(aVar, hpVar, mpVar);
    }

    private static void l(a aVar, e.hp hpVar, mp mpVar) {
        if (hpVar != null) {
            hpVar.onVideoPreloadSuccess(aVar, -100);
        }
        if (mpVar != null) {
            if (l(ky.jl(mpVar)) || hp(ky.jl(mpVar))) {
                hp(aVar, mpVar, 0L);
            }
        }
    }

    private static void hp(a aVar, int i2, int i3, String str, JSONObject jSONObject, long j2) throws JSONException {
        JSONObject passThroughJson = aVar.getPassThroughJson();
        try {
            passThroughJson.put("pitaya_cache_size", i2);
            passThroughJson.put("pitaya_code", i3);
            passThroughJson.put("pitaya_msg", str);
            passThroughJson.put("ext_plugin_code", nu.l());
            passThroughJson.put(AbsServerManager.PACKAGE_QUERY_BINDER, jSONObject);
            passThroughJson.put("run_task_mills", j2);
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PluginValueSet l(int i2, q qVar, a aVar, e.hp hpVar, long j2, mp mpVar) {
        int iOptInt;
        int iOptInt2;
        String string;
        try {
        } catch (Exception e2) {
            e2.getMessage();
        }
        if (qVar == null) {
            hp(aVar, -1000, -2, "resultModel is null", (JSONObject) null, System.currentTimeMillis() - j2);
            j(aVar, hpVar, mpVar);
            return null;
        }
        com.byazt.wi.l lVarJx = qVar.jx();
        if (lVarJx == null) {
            hp(aVar, -1000, -3, "result is null", (JSONObject) null, System.currentTimeMillis() - j2);
            j(aVar, hpVar, mpVar);
            return null;
        }
        PluginValueSet pluginValueSetJ = lVarJx.j();
        if (pluginValueSetJ == null) {
            hp(aVar, -1000, -4, "value is null", (JSONObject) null, System.currentTimeMillis() - j2);
            j(aVar, hpVar, mpVar);
            return null;
        }
        JSONObject jSONObjectHp = com.byazt.sf.e.hp(pluginValueSetJ, 2);
        pluginValueSetJ.stringValue(5);
        JSONObject jSONObjectHp2 = com.byazt.sf.e.hp(pluginValueSetJ, 3);
        JSONObject jSONObjectHp3 = com.byazt.sf.e.hp(pluginValueSetJ, 4);
        if (!lVarJx.hp() || jSONObjectHp == null) {
            iOptInt = -1000;
            iOptInt2 = -5;
            string = null;
        } else {
            iOptInt = jSONObjectHp.optInt("pitaya_cache_size", -1);
            iOptInt2 = jSONObjectHp.optInt("pitaya_code", 200);
            string = cb.f11292o;
            com.byazt.sf.zy.hp(aVar, jSONObjectHp, iOptInt, iOptInt2);
        }
        if (!lVarJx.hp() && jSONObjectHp3 != null) {
            string = jSONObjectHp3.toString();
        }
        hp(aVar, iOptInt, iOptInt2, string, jSONObjectHp2, System.currentTimeMillis() - j2);
        j(aVar, hpVar, mpVar);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(a aVar, mp mpVar) {
        if (jx(aVar)) {
            String strL = ky.l(mpVar);
            JSONObject jSONObjectHp = com.byazt.qvz.j.hp(aVar, null, -1, aVar.getPlayerType(), mpVar, -1L);
            com.byazt.jo.e eVar = new com.byazt.jo.e(aVar.getUrl(), aVar.getPreloadSize());
            eVar.hp(aVar);
            com.byazt.qvz.j.j((com.byazt.jo.l<com.byazt.jo.e>) new com.byazt.jo.l(mpVar, strL, jSONObjectHp, eVar));
        }
    }

    public static mp hp(a aVar) {
        if (aVar == null) {
            return null;
        }
        Object extra = aVar.getExtra("material_meta");
        if (extra instanceof mp) {
            return (mp) extra;
        }
        return null;
    }

    public static void hp(a aVar, mp mpVar, long j2) {
        if (jx(aVar)) {
            String strL = ky.l(mpVar);
            JSONObject jSONObjectHp = com.byazt.qvz.j.hp(aVar, null, -1, aVar.getPlayerType(), mpVar, -1L);
            com.byazt.jo.zy zyVar = new com.byazt.jo.zy();
            zyVar.hp(aVar.getUrl());
            zyVar.hp(aVar.getPreloadSize());
            zyVar.l(j2);
            zyVar.hp(aVar);
            if (aVar.getSourceType() == 1) {
                zyVar.jx(1L);
            } else {
                zyVar.jx(0L);
            }
            com.byazt.qvz.j.l((com.byazt.jo.l<com.byazt.jo.zy>) new com.byazt.jo.l(mpVar, strL, jSONObjectHp, zyVar));
        }
    }

    private static void l(a aVar, mp mpVar) {
        if (jx(aVar)) {
            long videoSize = aVar.isPreloadAll() ? aVar.getVideoSize() : aVar.getPreloadSize();
            String strL = ky.l(mpVar);
            JSONObject jSONObjectHp = com.byazt.qvz.j.hp(aVar, null, -1, aVar.getPlayerType(), mpVar, -1L);
            jl jlVar = new jl(aVar.getUrl(), videoSize);
            jlVar.hp(aVar);
            com.byazt.qvz.j.hp((com.byazt.jo.l<jl>) new com.byazt.jo.l(mpVar, strL, jSONObjectHp, jlVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(a aVar, mp mpVar, long j2, int i2, String str) {
        if (jx(aVar)) {
            String strL = ky.l(mpVar);
            JSONObject jSONObjectHp = com.byazt.qvz.j.hp(aVar, null, -1, aVar.getPlayerType(), mpVar, -1L);
            gu guVar = new gu();
            guVar.hp(aVar.getUrl());
            guVar.hp(aVar.getPreloadSize());
            guVar.l(j2);
            guVar.hp(i2);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            guVar.l(str);
            guVar.jx("");
            guVar.hp(aVar);
            com.byazt.qvz.j.jx((com.byazt.jo.l<gu>) new com.byazt.jo.l(mpVar, strL, jSONObjectHp, guVar));
        }
    }
}
