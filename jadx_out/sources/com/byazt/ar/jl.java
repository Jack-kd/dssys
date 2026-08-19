package com.byazt.ar;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 19})
/* loaded from: classes2.dex */
public class jl extends com.byazt.xs.jx<InteractWebView> {
    public Map<String, Object> gb;
    public String hp;

    public jl(Context context) {
        super(context);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public InteractWebView hp() {
        InteractWebView interactWebView = new InteractWebView(this.f27777l);
        this.f27788w = interactWebView;
        return interactWebView;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        Map<String, Object> mapL = this.f27782q.l();
        this.gb = mapL;
        ((InteractWebView) this.f27788w).setUGenExtraMap(mapL);
        ((InteractWebView) this.f27788w).setUGenContext(this.f27782q);
        ((InteractWebView) this.f27788w).a();
        ((InteractWebView) this.f27788w).eb();
        JSONObject jSONObjectE = e();
        if (jSONObjectE != null) {
            com.byazt.an.hp hpVar = new com.byazt.an.hp();
            hpVar.hp(jSONObjectE.optInt("meta_hashcode", 0));
            ((InteractWebView) this.f27788w).setMaterialMeta(hpVar);
        }
        s();
    }

    public void s() {
        if (TextUtils.isEmpty(this.hp)) {
            this.hp = "https://cdn-tos-cn.bytedance.net/obj/archi/ad/play-comp/playable-component-sdk/dev/index.ecommerce.html";
        }
        ((InteractWebView) this.f27788w).loadUrl(this.hp);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        if (str.equals("src")) {
            if (TextUtils.isEmpty(this.hp) || !this.hp.startsWith("http")) {
                this.hp = "https://cdn-tos-cn.bytedance.net/obj/archi/ad/play-comp/playable-component-sdk/dev/index.ecommerce.html";
            } else {
                this.hp = str2;
            }
        }
    }
}
