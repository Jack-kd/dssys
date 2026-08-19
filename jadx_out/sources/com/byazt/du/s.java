package com.byazt.du;

import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;
    public com.byazt.cey.j jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xci.mp f19334l;

    public s(com.byazt.jz.ud udVar, com.byazt.xci.mp mpVar) {
        this.hp = new WeakReference<>(udVar);
        this.f19334l = mpVar;
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(com.byazt.oa.xs xsVar, final com.byazt.jz.ud udVar, final com.byazt.xci.mp mpVar) {
        xsVar.hp("getNetworkData", new j.l() { // from class: com.byazt.du.s.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new s(udVar, mpVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.jz.ud udVar = this.hp.get();
        if (udVar == null) {
            jx();
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.jx = new com.byazt.cey.j() { // from class: com.byazt.du.s.2
            @Override // com.byazt.cey.j
            public void hp(boolean z2, List<com.byazt.xci.mp> list, boolean z3) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (z2) {
                        jSONObject2.put("creatives", com.byazt.jz.ud.hp(list));
                        jSONObject2.put(PointParamKey.IS_CACHE, z3);
                        if (z3) {
                            jSONObject2.put("prefetch_opt_time", jCurrentTimeMillis - com.byazt.gsd.l.hp().jx(s.this.f19334l));
                        }
                        s.this.hp((s) jSONObject2);
                    } else {
                        s.this.hp((s) jSONObject2);
                    }
                    com.byazt.jz.s.u().f();
                } catch (Throwable th) {
                    com.byazt.ymw.u.hp("DoGetAdsFromNetwork", "onAdLoaded error", th);
                }
            }
        };
        if (jSONObject != null && jSONObject.optBoolean("is_first_request", false) && com.byazt.gsd.l.hp().hp(this.f19334l, this.jx)) {
            return;
        }
        udVar.hp(jSONObject, this.jx);
    }
}
