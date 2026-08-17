package com.byazt.tg;

import android.text.TextUtils;
import android.view.View;
import com.byazt.gg.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 755, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public JSONArray f25804a;
    public final com.byazt.xs.jx eb;
    public JSONArray hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONArray f25805j;
    public JSONArray jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONArray f25806l;

    /* renamed from: w, reason: collision with root package name */
    public JSONArray f25807w;

    public hp(com.byazt.xs.jx jxVar) {
        this.eb = jxVar;
    }

    private void l(com.byazt.xs.jx jxVar) {
        Map<String, List<com.byazt.it.l>> mapS;
        if (jxVar == null || jxVar.ea() == null || (mapS = jxVar.ea().s()) == null) {
            return;
        }
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        for (List<com.byazt.it.l> list : mapS.values()) {
            if (list != null && !list.isEmpty()) {
                Iterator<com.byazt.it.l> it = list.iterator();
                while (it.hasNext()) {
                    List<a.hp> listL = it.next().e().l();
                    if (listL != null && !listL.isEmpty()) {
                        for (a.hp hpVar : listL) {
                            if (hpVar != null && !TextUtils.isEmpty(hpVar.l())) {
                                String strL = hpVar.l();
                                strL.getClass();
                                switch (strL) {
                                    case "openPrivacy":
                                        if (!z6) {
                                            hp(this.f25807w, jxVar);
                                        }
                                        z6 = true;
                                        break;
                                    case "skip":
                                        if (!z7) {
                                            hp(this.f25804a, jxVar);
                                        }
                                        z7 = true;
                                        break;
                                    case "close":
                                        if (!z2) {
                                            hp(this.hp, jxVar);
                                        }
                                        z2 = true;
                                        break;
                                    case "convert":
                                        if (!z3) {
                                            hp(this.f25806l, jxVar);
                                        }
                                        z3 = true;
                                        break;
                                    case "muteVideo":
                                        if (!z5) {
                                            hp(this.f25805j, jxVar);
                                        }
                                        z5 = true;
                                        break;
                                    case "dislike":
                                        if (!z4) {
                                            hp(this.jx, jxVar);
                                        }
                                        z4 = true;
                                        break;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        this.hp = new JSONArray();
        this.f25806l = new JSONArray();
        this.jx = new JSONArray();
        this.f25805j = new JSONArray();
        this.f25807w = new JSONArray();
        this.f25804a = new JSONArray();
        hp(this.eb);
        if (this.hp.length() > 0) {
            jSONObject.putOpt("close", this.hp);
        }
        if (this.f25806l.length() > 0) {
            jSONObject.putOpt("convert", this.f25806l);
        }
        if (this.jx.length() > 0) {
            jSONObject.putOpt("dislike", this.jx);
        }
        if (this.f25805j.length() > 0) {
            jSONObject.putOpt("muteVideo", this.f25805j);
        }
        if (this.f25807w.length() > 0) {
            jSONObject.putOpt("openPrivacy", this.f25807w);
        }
        if (this.f25804a.length() > 0) {
            jSONObject.putOpt("skip", this.f25804a);
        }
        return jSONObject;
    }

    private void hp(com.byazt.xs.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        if (jxVar instanceof com.byazt.xs.hp) {
            hp((com.byazt.xs.hp<?>) jxVar);
        } else {
            l(jxVar);
        }
    }

    private void hp(com.byazt.xs.hp<?> hpVar) {
        l(hpVar);
        List<com.byazt.xs.jx<View>> listEb = hpVar.eb();
        if (listEb == null || listEb.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            hp(it.next());
        }
    }

    private void hp(JSONArray jSONArray, com.byazt.xs.jx jxVar) {
        View viewQ;
        View viewQ2;
        if (jSONArray == null || jxVar == null || (viewQ = jxVar.q()) == null || (viewQ2 = this.eb.q()) == null) {
            return;
        }
        int[] iArr = new int[2];
        viewQ.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        viewQ2.getLocationInWindow(iArr2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", jxVar.nu());
            jSONObject.putOpt("width", Integer.valueOf(viewQ.getWidth()));
            jSONObject.putOpt("height", Integer.valueOf(viewQ.getHeight()));
            jSONObject.putOpt("x", Integer.valueOf(iArr[0] - iArr2[0]));
            jSONObject.putOpt("y", Integer.valueOf(iArr[1] - iArr2[1]));
        } catch (Throwable unused) {
        }
        jSONArray.put(jSONObject);
    }
}
