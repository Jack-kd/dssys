package com.byazt.fb;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.gg.a;
import com.byazt.ov.hp;
import com.byazt.qk.gu;
import com.byazt.ql.k;
import com.byazt.ql.sz;
import com.byazt.ql.vv;
import com.byazt.xci.hd;
import com.byazt.xci.jd;
import com.byazt.xci.mp;
import com.byazt.zn.lv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 528, 94})
/* loaded from: classes2.dex */
public class eb extends w implements hp {
    public com.byazt.lv.l cx;
    public gu ns;

    public eb(Context context, mp mpVar, l lVar, ViewGroup viewGroup) {
        super(context, mpVar, lVar, viewGroup);
        if (lVar != null) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            j.hp(this.f19626a, this.hp, lVar.pu(), atomicBoolean);
            j.l(this.f19626a, this.hp, lVar.pu(), atomicBoolean);
        }
    }

    private int jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        str.getClass();
        if (str.equals("shake")) {
            return 1;
        }
        return !str.equals("twist") ? 0 : 2;
    }

    private void vv() {
        k kVar = new k();
        HashMap map = new HashMap();
        mp mpVar = this.f19626a;
        if (mpVar != null) {
            map.put("shake_value", Integer.valueOf(mpVar.rm()));
            map.put("calculation_method", Integer.valueOf(this.f19626a.cs()));
            map.put("rotation_angle", Integer.valueOf(this.f19626a.aj()));
            map.put("calculation_method_twist", Integer.valueOf(this.f19626a.gv()));
            map.put("twist_config", this.f19626a.ki());
            map.put("image_info", com.byazt.yp.l.w(this.f19626a));
            map.put("cache_dir", com.byazt.dnb.gu.w());
            map.put("shake_interact_conf", this.f19626a.wj());
            map.put("twist_interact_conf", this.f19626a.sf());
        }
        kVar.hp(map);
        kVar.hp(this.f19632l);
        kVar.hp(this.f19630j);
        kVar.l(this.f19639w);
        this.hp.hp("ad", kVar);
    }

    @Override // com.byazt.fb.w
    public com.byazt.xs.jx a() {
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null) {
            return null;
        }
        return jxVar.w("VideoV3");
    }

    @Override // com.byazt.fb.w
    public JSONObject gu() {
        return this.eb.w();
    }

    @Override // com.byazt.fb.w, com.byazt.wsc.j
    public void hp(CharSequence charSequence, int i2, int i3, boolean z2) {
    }

    @Override // com.byazt.fb.w
    public void l(com.byazt.fub.eb ebVar) {
        vv();
        this.hp.hp((vv) this);
        this.hp.hp((sz) this);
        jd jdVarEb = hd.eb(this.f19626a);
        try {
            if (jdVarEb != null) {
                this.jx = this.hp.hp(this.f19630j, this.f19639w, jdVarEb.w());
            } else {
                this.jx = this.hp.hp(this.f19630j, this.f19639w, (JSONObject) null);
            }
            if (this.hp.hp()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("component_not_exist", new JSONArray((Collection) this.hp.l()));
                this.eb.lv().hp(jSONObject);
                ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_END_TIME, "ugen unknown component");
                return;
            }
            if (this.hp.jx()) {
                ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_META_DATA_INFO, "ugen root disable");
                return;
            }
            if (this.jx != null) {
                if (this.f19633n == null) {
                    this.f19633n = new com.byazt.xn.hp(this.eb.w());
                }
                this.f19633n.hp(this.hp, this.jx);
            }
            this.eb.lv().l();
            this.eb.lv().jx();
        } catch (NoClassDefFoundError unused) {
            if (ebVar != null) {
                ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CODEC_ID, "ugen no class def found error");
            }
        } catch (UnsatisfiedLinkError unused2) {
            if (ebVar != null) {
                ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE, "ugen yoga so load fail");
            }
        } catch (Throwable unused3) {
            if (ebVar != null) {
                ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, "ugen other fail");
            }
        }
    }

    @Override // com.byazt.fb.w
    public JSONObject hp() {
        return this.eb.w().optJSONObject("xTemplate");
    }

    @Override // com.byazt.fb.w, com.byazt.ql.vv
    public void hp(final com.byazt.xs.jx jxVar, final String str, final a.hp hpVar) throws JSONException {
        if (hpVar == null) {
            return;
        }
        if (!TextUtils.equals(str, "shake") && !TextUtils.equals(str, "twist")) {
            l(jxVar, str, hpVar);
            return;
        }
        WeakReference<ViewGroup> weakReference = this.f19638v;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        lv.hp(this.f19638v, new com.byazt.go.jx() { // from class: com.byazt.fb.eb.1
            @Override // com.byazt.go.jx
            public void hp() throws JSONException {
                WeakReference<ViewGroup> weakReference2 = eb.this.f19638v;
                if (weakReference2 == null || weakReference2.get() == null || !lv.hp(eb.this.f19638v.get())) {
                    return;
                }
                eb.this.l(jxVar, str, hpVar);
            }
        });
    }

    public void hp(String str, Map<String, String> map) {
        if (this.jx == null) {
            return;
        }
        a.hp hpVar = new a.hp();
        hpVar.hp("custom");
        hpVar.l("emit");
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put("name", str);
        hpVar.hp(map2);
        hp.C0332hp.hp(this.jx, "jsb", hpVar).hp();
    }

    @Override // com.byazt.fb.hp
    public void hp(gu guVar) {
        this.ns = guVar;
    }

    public void hp(com.byazt.lv.l lVar) {
        this.cx = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(com.byazt.xs.jx r19, java.lang.String r20, com.byazt.gg.a.hp r21) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fb.eb.l(com.byazt.xs.jx, java.lang.String, com.byazt.gg.a$hp):void");
    }

    public static byte l(String str) {
        if (TextUtils.isEmpty(str)) {
            return (byte) 0;
        }
        str.getClass();
        switch (str) {
        }
        return (byte) 0;
    }
}
