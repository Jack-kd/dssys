package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME})
/* loaded from: classes2.dex */
public class kg extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.jz.ud hp;

    public kg(com.byazt.jz.ud udVar) {
        this.hp = udVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("sendMaterialMeta", (com.byazt.oa.w<?, ?>) new kg(udVar));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        boolean zL;
        com.byazt.xci.mp mpVarHp = com.byazt.jz.hp.hp(jSONObject.optJSONObject("creative"));
        com.byazt.jz.ud udVar = this.hp;
        if (udVar != null && mpVarHp != null) {
            udVar.jx(mpVarHp);
        }
        com.byazt.jz.ud udVar2 = this.hp;
        if (udVar2 != null) {
            zL = udVar2.l(mpVarHp);
            if (mpVarHp != null && mpVarHp.q() == 4) {
                final String strJ = mpVarHp.j();
                if (this.hp.eb(strJ) == null) {
                    com.byazt.fy.hp hpVarHp = com.byazt.ff.s.hp(com.byazt.jz.sz.getContext(), mpVarHp, this.hp.wv());
                    hpVarHp.hp(new com.byazt.gog.hp() { // from class: com.byazt.du.kg.1
                        @Override // com.byazt.gog.hp
                        public void hp() {
                            com.byazt.pm.hp.hp(strJ);
                        }

                        @Override // com.byazt.gog.hp
                        public void jx(long j2, long j3, String str, String str2) {
                            com.byazt.pm.hp.jx(strJ, j2, j3);
                        }

                        @Override // com.byazt.gog.hp
                        public void l(long j2, long j3, String str, String str2) {
                            com.byazt.pm.hp.l(strJ, j2, j3);
                        }

                        @Override // com.byazt.gog.hp
                        public void hp(long j2, long j3, String str, String str2) {
                            com.byazt.pm.hp.hp(strJ, j2, j3);
                        }

                        @Override // com.byazt.gog.hp
                        public void hp(long j2, String str, String str2) {
                            com.byazt.pm.hp.l(strJ);
                        }

                        @Override // com.byazt.gog.hp
                        public void hp(String str, String str2) {
                            com.byazt.pm.hp.jx(strJ);
                        }
                    });
                    this.hp.hp(strJ, hpVarHp);
                }
            }
        } else {
            zL = false;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (zL) {
            jSONObject2.put("code", 0);
            jSONObject2.put("msg", cb.f11292o);
            return jSONObject2;
        }
        jSONObject2.put("code", 11);
        jSONObject2.put("msg", "show 7 factors failed");
        return jSONObject2;
    }
}
