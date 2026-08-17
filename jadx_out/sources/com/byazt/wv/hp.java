package com.byazt.wv;

import android.content.Context;
import com.byazt.jkd.gu;
import com.byazt.lf.k;
import com.byazt.ry.j;
import com.byazt.wf.a;
import com.byazt.wf.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static void hp(Context context, final String str, gu guVar) {
        a.hp().hp(context);
        a.hp().hp(new com.byazt.wf.l() { // from class: com.byazt.wv.hp.1
            @Override // com.byazt.wf.l
            public String hp(String str2, String str3, String str4) {
                return j.hp(str, str2).getString(str3, str4);
            }

            @Override // com.byazt.wf.l
            public void l(String str2, String str3, String str4) {
                j.hp(str, str2).put(str3, str4);
            }
        });
        a.hp().hp(new jx() { // from class: com.byazt.wv.hp.2
            @Override // com.byazt.wf.jx
            public void hp(final String str2, final JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.wv.hp.2.1
                    @Override // com.byazt.fq.hp
                    public com.byazt.jlb.hp hp() throws Exception {
                        return com.byazt.jlb.l.l().hp(str2).l(jSONObject.toString());
                    }
                }, str2);
            }
        });
        hp(guVar.jl(), guVar.zy());
    }

    public static void hp(int i2, boolean z2) {
        a.hp().hp(i2);
        a.hp().hp(z2);
    }
}
