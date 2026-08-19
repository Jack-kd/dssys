package com.byazt.db;

import android.content.Context;
import com.byazt.jz.sz;
import com.byazt.xci.d;
import com.byazt.xci.mp;
import com.byazt.xci.zy;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsEncryptVersion, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public zy f19082a;
    public com.byazt.pt.l hp;

    /* renamed from: j, reason: collision with root package name */
    public final Context f19083j = sz.getContext();
    public l jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f19084l;

    /* renamed from: w, reason: collision with root package name */
    public mp f19085w;

    public hp(mp mpVar, zy zyVar) {
        this.f19085w = mpVar;
        this.f19082a = zyVar;
    }

    public Context getContext() {
        return this.f19083j;
    }

    public void hp(com.byazt.pt.l lVar) {
        this.hp = lVar;
    }

    public void jx() {
        com.byazt.pt.l lVar;
        if (d.hp() && (lVar = this.hp) != null) {
            lVar.l();
        }
    }

    public JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        if (d.hp()) {
            try {
                com.byazt.pt.l lVar = this.hp;
                if (lVar != null) {
                    JSONObject jSONObjectHp = lVar.hp();
                    this.f19084l = jSONObjectHp;
                    return jSONObjectHp;
                }
            } catch (Exception e2) {
                e2.getMessage();
                return jSONObject;
            }
        }
        return jSONObject;
    }

    public void hp(l lVar) {
        this.jx = lVar;
    }

    public mp hp() {
        return this.f19085w;
    }

    public void hp(mp mpVar) throws JSONException {
        if (this.hp != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("style_category", String.valueOf(d.j(mpVar)));
            } catch (JSONException unused) {
            }
            this.hp.hp(jSONObject);
        }
    }

    public void hp(boolean z2, JSONObject jSONObject) throws JSONException {
        com.byazt.pt.l lVar;
        if (d.hp() && (lVar = this.hp) != null) {
            if (z2) {
                lVar.l(jSONObject);
                return;
            }
            HashMap map = new HashMap();
            map.put("estimatedArea", this.f19084l);
            map.put("realArea", this.jx.getMaxRectJson());
            map.put("exceedAreaRate", Double.valueOf(this.jx.getExceedAreaRate()));
            map.put("widgetArea", this.jx.getActualRectJson());
            com.byazt.ar.jx.l(this.f19085w, this.f19082a, false, 100, new JSONObject(map));
            this.hp.jx(jSONObject);
        }
    }

    public void hp(mp mpVar, float f2, float f3, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("convert", 0);
            jSONObject.put("down_x", f2);
            jSONObject.put("down_y", f3);
        } catch (Exception e2) {
            e2.getMessage();
        }
        com.byazt.ar.jx.l(mpVar, this.f19082a, false, jSONObject);
    }
}
