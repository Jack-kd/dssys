package com.byazt.vne;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.network.gdt.GDTATConst;
import com.byazt.ami.w;
import com.byazt.bki.q;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1443, 30})
/* loaded from: classes3.dex */
public class jx extends l {

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.iqm.l f26601j;
    public com.byazt.xl.l jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f26602l;

    public jx(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    private void hp(Context context, String str, com.byazt.wi.j jVar) throws ExecutionException, InterruptedException {
        com.byazt.xl.l lVar = this.jx;
        Function<SparseArray<Object>, Object> functionHp = (lVar == null || this.f26601j == null) ? null : w.hp(lVar.zy(), this.f26601j.ec(), this.jx.v());
        com.byazt.uhd.hp.hp(str, functionHp != null);
        if (functionHp != null) {
            this.jx.l(true);
            functionHp.apply(com.byazt.wi.j.hp().hp(8241).hp(Void.class).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.byazt.aw.hp.hp(context)).hp(8424, jVar.l()).l());
        } else {
            this.jx.l(false);
            hp(context, jVar);
        }
    }

    @Override // com.byazt.vne.l, com.byazt.ewl.hp
    public String getBiddingToken(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2) {
        if (lVar != null && lVar2 != null) {
            HashMap map = new HashMap();
            map.put("bidding_token", "true");
            if (this.f26602l == null) {
                this.f26602l = new hp(lVar2, lVar, this);
                com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
                jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this.f26602l);
                jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, lVar.vv());
                com.byazt.wi.j jVarHp2 = com.byazt.wi.j.hp();
                jVarHp2.hp(8449, map);
                com.byazt.wi.j jVarHp3 = com.byazt.wi.j.hp();
                jVarHp3.hp(8443, jVarHp2.l());
                jVarHp.hp(8090, com.byazt.wi.j.hp(lVar2.pu()).hp(8089, jVarHp3.l()).l());
                Function<SparseArray<Object>, Object> functionA = com.byazt.ky.hp.hp().a();
                if (functionA != null) {
                    com.byazt.wi.j jVarHp4 = com.byazt.wi.j.hp();
                    jVarHp4.hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.byazt.aw.hp.hp(context)).hp(8106).hp(Void.class);
                    com.byazt.uhd.w.hp(jVarHp4, jVarHp);
                    functionA.apply(jVarHp4.l());
                } else {
                    com.byazt.aw.l.l(MediationConstant.TAG, "load ad class loader is null ");
                }
            }
            if (this.f26602l != null && lVar2.vv() != null) {
                com.byazt.aqw.l lVarWv = lVar2.vv().wv();
                return this.f26602l.getBiddingToken(context, lVar.jl(), com.byazt.ror.hp.hp(lVarWv != null ? lVarWv.a() : null));
            }
        }
        return null;
    }

    @Override // com.byazt.ewl.hp
    public String getSdkVersion(String str) {
        com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(str);
        if (jVarHp != null) {
            return jVarHp.getNetworkSdkVersion();
        }
        return null;
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) throws ExecutionException, InterruptedException {
        this.jx = lVar;
        this.f26601j = lVar2;
        com.byazt.wi.j jVarHp = hp(lVar, lVar2, map);
        if (jVarHp != null) {
            this.f26602l = new hp(lVar2, lVar, this);
            jVarHp.hp(8429, lVar.u());
            jVarHp.hp(8430, lVar.xs());
            jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this.f26602l);
            jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, lVar.vv());
            jVarHp.hp(8561, Integer.valueOf(lVar.ky()));
            hp(context, lVar.zy(), jVarHp);
        }
    }

    private void hp(Context context, com.byazt.wi.j jVar) {
        Function<SparseArray<Object>, Object> functionA = com.byazt.ky.hp.hp().a();
        if (functionA != null) {
            if (com.byazt.owd.l.hp() >= 5900) {
                com.byazt.wi.j jVarHp = com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.byazt.aw.hp.hp(context)).hp(8106).hp(Void.class);
                com.byazt.uhd.w.hp(jVarHp, jVar);
                functionA.apply(jVarHp.l());
                return;
            } else {
                jVar.hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.byazt.aw.hp.hp(context)).hp(8106).hp(Void.class);
                functionA.apply(jVar.l());
                return;
            }
        }
        com.byazt.aw.l.l(MediationConstant.TAG, "load ad class loader is null ");
    }

    private com.byazt.wi.j hp(com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        HashMap map2 = null;
        if (lVar == null || lVar2 == null || lVar2.vv() == null) {
            return null;
        }
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        com.byazt.aqw.hp hpVarVv = lVar2.vv();
        com.byazt.aqw.l lVarWv = hpVarVv.wv();
        com.byazt.wi.j jVarHp2 = com.byazt.wi.j.hp(lVar2.pu()).hp(15, hpVarVv.k()).hp(13, Integer.valueOf(lVar2.b())).hp(7, Integer.valueOf(hpVarVv.a())).hp(8, Integer.valueOf(hpVarVv.eb())).hp(16, Integer.valueOf(hpVarVv.v())).hp(20, Integer.valueOf(hpVarVv.vv())).hp(11, Boolean.valueOf(hpVarVv.e())).hp(17, Integer.valueOf(lVar2.u()));
        com.byazt.wi.j jVarHp3 = com.byazt.wi.j.hp();
        HashMap map3 = new HashMap();
        if (lVarWv != null) {
            if (lVarWv.a() != null) {
                map3.putAll(lVarWv.a());
            }
            if (lVar.s() != null) {
                map3.put("waterfall_config", lVar.s());
            }
            map3.put("dynamic_adapter_type", Integer.valueOf(com.byazt.dl.l.hp().j()));
            map3.put("wf_dynamic_adapter_type", Integer.valueOf(com.byazt.dl.l.hp().w()));
            com.byazt.pj.hp.hp(lVar2, lVar.s(), map3);
            jVarHp3.hp(8444, Boolean.valueOf(lVarWv.jx())).hp(8445, Boolean.valueOf(lVarWv.hp())).hp(8446, Boolean.valueOf(lVarWv.l())).hp(8447, Float.valueOf(lVarWv.j())).hp(8448, Boolean.valueOf(lVarWv.w())).hp(8450, Boolean.valueOf(lVarWv.eb())).hp(8451, lVarWv.s()).hp(8454, Boolean.valueOf(lVarWv.q())).hp(8455, Float.valueOf(lVarWv.gu())).hp(8456, Float.valueOf(lVarWv.jl()));
        } else {
            map3.put("dynamic_adapter_type", Integer.valueOf(com.byazt.dl.l.hp().j()));
            map3.put("wf_dynamic_adapter_type", Integer.valueOf(com.byazt.dl.l.hp().w()));
        }
        q qVarL = com.byazt.di.hp.jl().ns().l();
        if (qVarL != null) {
            map3.put("lng", Double.valueOf(qVarL.l()));
            map3.put("lat", Double.valueOf(qVarL.hp()));
            map3.put(GDTATConst.EXTRA_DATA.LOC_TIME, Long.valueOf(System.currentTimeMillis() / 1000));
        } else {
            map3.put("lng", -1);
            map3.put("lat", -1);
            map3.put(GDTATConst.EXTRA_DATA.LOC_TIME, -1);
        }
        map3.put("load_can_log", Boolean.valueOf(com.byazt.dl.l.hp().eb()));
        jVarHp3.hp(8449, map3);
        jVarHp3.hp(8044, map3);
        hp(jVarHp3, hpVarVv, lVarWv);
        jVarHp2.hp(8443, jVarHp3.l());
        jVarHp.hp(8090, com.byazt.kd.j.hp(com.byazt.wi.j.hp(lVar2.pu()).hp(8089, jVarHp2.l()).l()));
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp, lVar.jl());
        jVarHp.hp(4, lVar2.sz());
        jVarHp.hp(8003, lVar.zy());
        jVarHp.hp(17, Integer.valueOf(lVar2.u()));
        if (lVar2.r() != null) {
            HashMap map4 = new HashMap();
            for (Map.Entry<String, Object> entry : lVar2.r().entrySet()) {
                Object value = entry.getValue();
                map4.put(entry.getKey(), value == null ? null : value.toString());
            }
            map2 = map4;
        }
        if (map2 != null) {
            jVarHp.hp(8013, map2);
        }
        if (map != null) {
            jVarHp.hp(8096, Integer.valueOf(map.get("ad_load_timeout") != null ? ((Integer) map.get("ad_load_timeout")).intValue() : 3000));
        }
        Object obj = map.get("contentUrl");
        if (obj instanceof String) {
            jVarHp.hp(8083, (String) obj);
        }
        Object obj2 = map.get("testDevices");
        if (obj2 instanceof String) {
            jVarHp.hp(8084, (String) obj2);
        }
        Object obj3 = map.get("tt_ad_origin_type");
        if (obj3 != null) {
            Integer num = (Integer) obj3;
            int iIntValue = num.intValue();
            if (iIntValue == 1 || iIntValue == 3) {
                jVarHp.hp(8033, Boolean.TRUE);
            }
            jVarHp.hp(8085, num);
        }
        Object obj4 = map.get("tt_ad_sub_type");
        if (obj4 != null) {
            jVarHp.hp(8094, (Integer) obj4);
        }
        Object obj5 = map.get("render_control");
        if (obj5 instanceof Integer) {
            Integer num2 = (Integer) obj5;
            num2.intValue();
            jVarHp.hp(8553, num2);
        }
        return jVarHp;
    }

    private void hp(com.byazt.wi.j jVar, com.byazt.aqw.hp hpVar, com.byazt.aqw.l lVar) {
        if (jVar == null || hpVar == null) {
            return;
        }
        if (lVar != null && !TextUtils.isEmpty(lVar.k()) && lVar.v() != 0) {
            jVar.hp(8452, lVar.k());
            jVar.hp(8453, Integer.valueOf(lVar.v()));
        } else {
            if (TextUtils.isEmpty(hpVar.b()) || hpVar.di() == 0) {
                return;
            }
            jVar.hp(8452, hpVar.b());
            jVar.hp(8453, Integer.valueOf(hpVar.di()));
        }
    }
}
