package com.byazt.du;

import android.os.Handler;
import android.os.Looper;
import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 572})
/* loaded from: classes2.dex */
public class r extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    /* renamed from: j, reason: collision with root package name */
    public long f19330j;
    public com.byazt.cey.a jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xci.mp f19331l;

    public r(com.byazt.jz.ud udVar, com.byazt.xci.mp mpVar) {
        this.hp = new WeakReference<>(udVar);
        this.f19331l = mpVar;
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(com.byazt.oa.xs xsVar, final com.byazt.jz.ud udVar, final com.byazt.xci.mp mpVar) {
        xsVar.hp("requestVideoDelayCallback", new j.l() { // from class: com.byazt.du.r.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new r(udVar, mpVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.jz.ud udVar = this.hp.get();
        if (udVar != null && jSONObject != null) {
            this.jx = new com.byazt.cey.a() { // from class: com.byazt.du.r.2
                @Override // com.byazt.cey.a
                public void hp() {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.byazt.du.r.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                r.this.hp((r) new JSONObject());
                            } catch (Exception e2) {
                                com.byazt.ymw.u.l("requestVideoDelay", e2.getMessage());
                            }
                        }
                    }, r.this.f19330j);
                }
            };
            int iOptInt = jSONObject.optInt("delay", -1);
            if (iOptInt < 0) {
                return;
            }
            this.f19330j = iOptInt;
            if (udVar.jx() != null && udVar.jx().K_()) {
                this.jx.hp();
                return;
            } else {
                udVar.hp(this.jx);
                return;
            }
        }
        jx();
    }
}
