package com.byazt.sf;

import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.f.a;
import com.anythink.core.common.f.s;
import com.byazt.jz.d;
import com.byazt.jz.nu;
import com.byazt.jz.sz;
import com.byazt.kc.AbsServerManager;
import com.byazt.xci.mp;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.v;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.bv;
import java.util.Calendar;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, 302})
/* loaded from: classes3.dex */
public class zy {
    public static final ConcurrentHashMap<String, JSONObject> hp = new ConcurrentHashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static AtomicInteger f25453l = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f25454j;
    public JSONObject jx;

    private JSONObject l(com.byazt.tw.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            mp mpVarHp = com.byazt.cwe.jx.hp(aVar);
            if (mpVarHp != null) {
                String strHp = ky.hp(mpVarHp, "");
                int i2 = !TextUtils.isEmpty(strHp) ? Integer.parseInt(strHp) : 0;
                int iJl = ky.jl(mpVarHp);
                jSONObject.put("video_count", com.byazt.qvz.l.hp());
                JSONObject jSONObjectHp = hp();
                jSONObject.put("device", jSONObjectHp);
                JSONObject jSONObjectHp2 = hp(aVar, i2, iJl);
                jSONObject.put("current_video", jSONObjectHp2);
                jSONObject.put("predict_use", hp(String.valueOf(i2)));
                jSONObject.put("csj_plugin", l());
                jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, l("video_cache"));
                jSONObject.put(a.C0051a.f3215l, jSONObjectHp.optInt(a.C0051a.f3215l));
                jSONObject.put("video_size", aVar.getVideoSize());
                jSONObject.put("rit", i2);
                jSONObject.put("preload_size", aVar.getPreloadSize());
                jSONObject.put(bv.f48890Q, jSONObjectHp.optString(bv.f48890Q));
                jSONObject.put("sdk_fg_time", jSONObjectHp.optLong("sdk_fg_time"));
                jSONObject.put("ad_slot_type", jSONObjectHp2.optInt("ad_slot_type"));
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static String hp(int i2, String str) {
        int iIncrementAndGet = f25453l.incrementAndGet();
        return i2 + "-" + v.hp() + "-" + iIncrementAndGet + "-" + str + "-" + System.currentTimeMillis();
    }

    private static JSONObject hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp.get(str);
    }

    public static void hp(int i2, long j2, mp mpVar, com.byazt.tw.a aVar) {
        com.byazt.jt.l lVarDb;
        if (mpVar == null || aVar == null || (lVarDb = mpVar.db()) == null) {
            return;
        }
        try {
            JSONObject jSONObjectHp = hp(lVarDb.j());
            if (jSONObjectHp != null) {
                String fileNameKey = aVar.getFileNameKey();
                String strOptString = jSONObjectHp.optString(PointParamKey.TRACE_ID);
                if (!TextUtils.isEmpty(strOptString) && strOptString.contains(fileNameKey)) {
                    jSONObjectHp.put("play_type", i2);
                    jSONObjectHp.put("cache_size", j2);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void hp(long j2, mp mpVar, com.byazt.tw.a aVar) {
        com.byazt.jt.l lVarDb;
        if (mpVar == null || aVar == null || (lVarDb = mpVar.db()) == null) {
            return;
        }
        try {
            JSONObject jSONObjectHp = hp(lVarDb.j());
            if (jSONObjectHp != null) {
                String strOptString = jSONObjectHp.optString(PointParamKey.TRACE_ID);
                if (!TextUtils.isEmpty(strOptString) && strOptString.contains(aVar.getFileNameKey())) {
                    jSONObjectHp.put("play_duration", j2);
                    jSONObjectHp.put("pitaya_meet_cache", 1);
                }
            }
        } catch (Exception unused) {
        }
    }

    private JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(bv.f48890Q, vv.eb(sz.getContext()));
            jSONObject.put(a.C0051a.f3215l, Calendar.getInstance().get(11));
            long jCurrentTimeMillis = System.currentTimeMillis() - com.byazt.zn.hp.f28502l;
            if (jCurrentTimeMillis > 0) {
                jSONObject.put("sdk_fg_time", jCurrentTimeMillis);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject l(final String str) {
        jx jxVar = (jx) com.byazt.ym.j.getService("pitaya");
        if (jxVar != null) {
            jxVar.queryPackage(str, new s() { // from class: com.byazt.sf.zy.1
                @Override // com.byazt.sf.s
                public PluginValueSet jx(int i2, SparseArray<Object> sparseArray) {
                    if (sparseArray == null) {
                        return null;
                    }
                    com.byazt.wi.l lVar = new com.byazt.wi.l(sparseArray);
                    PluginValueSet pluginValueSetJ = lVar.j();
                    boolean zHp = lVar.hp();
                    if (pluginValueSetJ != null) {
                        if (TextUtils.equals(str, pluginValueSetJ.stringValue(5))) {
                            if (zHp) {
                                zy.this.jx = e.hp(pluginValueSetJ, 3);
                                JSONObject unused = zy.this.jx;
                            } else {
                                zy.this.f25454j = e.hp(pluginValueSetJ, 4);
                            }
                        }
                    }
                    return super.jx(i2, sparseArray);
                }
            });
        } else {
            this.jx = new JSONObject();
        }
        return this.jx;
    }

    private JSONObject hp(com.byazt.tw.a aVar, int i2, int i3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("video_size", aVar.getVideoSize());
            jSONObject.put("preload_size", aVar.getPreloadSize());
            jSONObject.put("video_duration", aVar.getCurrentVideoInfo().getVideo_duration());
            jSONObject.put("ad_slot_type", i3);
            jSONObject.put("rit", i2);
            jSONObject.put(s.a.f3400b, aVar.getUrl());
            jSONObject.put("preload_all", aVar.isPreloadAll());
            jSONObject.put(PointParamKey.TRACE_ID, hp(i2, aVar.getFileNameKey()));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("core_api_code", d.f21856j);
            jSONObject.put("core_plugin_code", 7643);
            jSONObject.put("ext_api_code", d.f21854a);
            jSONObject.put("ext_plugin_code", nu.l());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void hp(com.byazt.tw.a aVar, JSONObject jSONObject, int i2, int i3) {
        int iOptInt;
        if (aVar == null || jSONObject == null || (iOptInt = jSONObject.optInt("rit", 0)) <= 0) {
            return;
        }
        hp.put(String.valueOf(iOptInt), jSONObject);
    }

    public JSONObject hp(com.byazt.tw.a aVar) {
        return l(aVar);
    }
}
