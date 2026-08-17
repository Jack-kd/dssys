package com.byazt.vna;

import com.byazt.jz.ud;
import com.byazt.oa.j;
import com.byazt.oa.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 34})
/* loaded from: classes3.dex */
public final class l extends com.byazt.oa.j<JSONObject, JSONObject> {
    public static WeakReference<hp> hp;

    /* renamed from: l, reason: collision with root package name */
    public WeakReference<ud> f26596l;

    public interface hp {
        void hp();

        void hp(int i2);
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    private l(ud udVar) {
        this.f26596l = new WeakReference<>(udVar);
    }

    public static void hp(xs xsVar, final ud udVar) {
        xsVar.hp("onClickBrowseCloseCallback", new j.l() { // from class: com.byazt.vna.l.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new l(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        WeakReference<hp> weakReference = hp;
        hp hpVar = weakReference != null ? weakReference.get() : null;
        if (this.f26596l == null || jSONObject == null) {
            if (hpVar != null) {
                hpVar.hp();
                return;
            }
            return;
        }
        int iOptInt = jSONObject.optInt("remainTime", Integer.MIN_VALUE);
        if (iOptInt == Integer.MIN_VALUE) {
            if (hpVar != null) {
                hpVar.hp();
            }
        } else if (hpVar != null) {
            hpVar.hp(iOptInt);
        }
    }

    public static void hp(hp hpVar) {
        hp = new WeakReference<>(hpVar);
    }
}
