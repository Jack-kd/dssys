package com.byazt.gx;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.gg.a;
import com.byazt.la.e;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.j;
import com.byazt.na.n;
import com.byazt.na.q;
import com.byazt.na.sz;
import com.byazt.ql.a;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xs.jx;
import com.byazt.zs.hp;
import com.byazt.zs.w;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.kuaishou.weapon.p0.t;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 210, 28})
/* loaded from: classes2.dex */
public class hp extends l {
    public View db;

    /* renamed from: z, reason: collision with root package name */
    public boolean f20615z;

    @com.byazt.kj.hp(hp = {0, 1, 210, 211})
    /* renamed from: com.byazt.gx.hp$5, reason: invalid class name */
    public class AnonymousClass5 implements j {
        public AnonymousClass5() {
        }

        @Override // com.byazt.na.j
        public Bitmap hp(final q qVar) {
            final String strHp;
            if (qVar == null) {
                return null;
            }
            String strK = qVar.k();
            String strZy = qVar.zy();
            String strJ = qVar.j();
            if (!TextUtils.isEmpty(strJ) && strJ.startsWith("${") && "image:".equals(strK)) {
                strHp = com.byazt.ss.l.hp(strJ, hp.this.f27775j);
            } else if (!TextUtils.isEmpty(strK) && TextUtils.isEmpty(strZy)) {
                strHp = com.byazt.ss.l.hp(strK, hp.this.f27775j);
            } else if (!TextUtils.isEmpty(strZy) && TextUtils.isEmpty(strK)) {
                strHp = com.byazt.ss.l.hp(strZy, hp.this.f27775j);
            } else if (TextUtils.isEmpty(strZy) || TextUtils.isEmpty(strK)) {
                strHp = null;
            } else {
                strHp = com.byazt.ss.l.hp(strK, hp.this.f27775j) + com.byazt.ss.l.hp(strZy, hp.this.f27775j);
            }
            if (TextUtils.isEmpty(strHp)) {
                return null;
            }
            Bitmap bitmap = ((l) hp.this).xv.get(strHp);
            if (bitmap != null) {
                return bitmap;
            }
            Integer num = ((l) hp.this).pg.get(strHp);
            if (num == null || num.intValue() == 2) {
                ((l) hp.this).pg.put(strHp, 1);
            } else if (num.intValue() == 1) {
                return null;
            }
            ((UgenLottieView) hp.this.f27788w).hp(strHp, new com.byazt.wf.q() { // from class: com.byazt.gx.hp.5.1
                @Override // com.byazt.wf.q
                public void hp(Bitmap bitmap2) {
                    hp.this.hp(qVar, strHp, bitmap2);
                }

                @Override // com.byazt.wf.q
                public void hp() {
                    w.hp().l().hp(hp.this.f27782q, strHp, new hp.InterfaceC0439hp() { // from class: com.byazt.gx.hp.5.1.1
                        @Override // com.byazt.zs.hp.InterfaceC0439hp
                        public void hp(Bitmap bitmap2) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            hp.this.hp(qVar, strHp, bitmap2);
                        }
                    });
                }
            });
            return ((l) hp.this).xv.get(strHp);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 210, 170})
    /* renamed from: com.byazt.gx.hp$hp, reason: collision with other inner class name */
    public static class C0260hp implements com.byazt.dr.l {
        public final WeakReference<jx> hp;

        /* renamed from: j, reason: collision with root package name */
        public int f20619j;
        public final Map<String, com.byazt.gg.q> jx = new ConcurrentHashMap();

        /* renamed from: l, reason: collision with root package name */
        public final LottieAnimationView.l f20620l;

        /* renamed from: w, reason: collision with root package name */
        public int f20621w;

        public C0260hp(jx jxVar, LottieAnimationView.l lVar) {
            this.hp = new WeakReference<>(jxVar);
            this.f20620l = lVar;
        }

        @Override // com.byazt.dr.l
        public void hp(MotionEvent motionEvent, String str, q qVar, String str2, JSONArray jSONArray, int i2, String str3, final com.byazt.dr.hp hpVar, boolean z2) {
            if (motionEvent == null || qVar == null) {
                return;
            }
            String strEb = qVar.eb();
            JSONArray jSONArrayQ = qVar.q();
            if (str == null) {
                jSONArray = jSONArrayQ;
            } else {
                if (!TextUtils.isEmpty(strEb) || str.contains("CSJNO")) {
                    str2 = strEb;
                }
                if ((jSONArrayQ == null || jSONArrayQ.length() <= 0) && !str.contains("CSJLELNO")) {
                    strEb = str2;
                } else {
                    strEb = str2;
                    jSONArray = jSONArrayQ;
                }
            }
            if (!TextUtils.isEmpty(qVar.u())) {
                str3 = qVar.u();
            }
            if (!TextUtils.isEmpty(str3)) {
                com.byazt.gg.q qVarHp = this.jx.get(str);
                if (qVarHp == null) {
                    qVarHp = com.byazt.gg.q.hp(this.hp.get(), str3);
                    jx jxVar = this.hp.get();
                    if (jxVar != null) {
                        qVarHp.hp(jxVar.y());
                        qVarHp.hp(jxVar.vq());
                    }
                    qVarHp.hp(new a() { // from class: com.byazt.gx.hp.hp.1
                        @Override // com.byazt.ql.a
                        public void hp(jx jxVar2, String str4, List<a.hp> list) {
                            com.byazt.dr.hp hpVar2 = hpVar;
                            if (hpVar2 != null) {
                                hpVar2.hp();
                            }
                        }
                    });
                    this.jx.put(str, qVarHp);
                }
                if (qVarHp.hp() != null) {
                    qVarHp.hp().hp("lastEventInView", Boolean.valueOf(z2));
                }
                qVarHp.hp(motionEvent);
                return;
            }
            if (motionEvent.getAction() == 0) {
                this.f20619j = (int) motionEvent.getX();
                this.f20621w = (int) motionEvent.getY();
            }
            if (motionEvent.getAction() == 1) {
                int x2 = (int) motionEvent.getX();
                int y2 = (int) motionEvent.getY();
                int iAbs = Math.abs(this.f20619j - x2);
                int iAbs2 = Math.abs(this.f20621w - y2);
                float f2 = (int) (i2 * Resources.getSystem().getDisplayMetrics().density);
                if ((iAbs * iAbs) + (iAbs2 * iAbs2) <= f2 * f2) {
                    if (!TextUtils.isEmpty(strEb) || (jSONArray != null && jSONArray.length() > 0)) {
                        this.f20620l.hp(strEb, jSONArray);
                    }
                    if (hpVar != null) {
                        hpVar.hp();
                    }
                }
            }
        }
    }

    public hp(Context context) {
        super(context);
        this.f20615z = false;
    }

    private void qu() throws JSONException {
        u uVar = new u();
        uVar.hp(21);
        uVar.hp(this);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lottieEvent", true);
            jSONObject.put("uttieUrl", ((l) this).hp);
            uVar.hp(jSONObject);
            this.ux.hp(uVar, this, this);
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.gx.l, com.byazt.xs.jx
    /* renamed from: eb */
    public UgenLottieView hp() {
        LottieAnimationView.l lVar = new LottieAnimationView.l() { // from class: com.byazt.gx.hp.1
            @Override // com.byazt.na.LottieAnimationView.l
            public void hp(String str, JSONArray jSONArray) throws JSONException {
                u uVar = new u();
                uVar.hp(1);
                uVar.hp(hp.this);
                if (jSONArray != null && jSONArray.length() > 0) {
                    hp.this.hp(uVar, jSONArray);
                }
                if (hp.this.ux == null || TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("lottieEvent", true);
                    jSONObject.put("uttieUrl", ((l) hp.this).hp);
                    if (TextUtils.equals("CSJCLOSE", str)) {
                        jSONObject.put("type", "close");
                    } else if (TextUtils.equals("clickEvent", str)) {
                        jSONObject.put("type", "clickEvent");
                    }
                    uVar.hp(jSONObject);
                    vv vvVar = hp.this.ux;
                    hp hpVar = hp.this;
                    vvVar.hp(uVar, hpVar, hpVar);
                } catch (JSONException unused) {
                }
            }
        };
        UgenLottieView ugenLottieViewHp = super.hp();
        ugenLottieViewHp.setTextDelegate(new sz(ugenLottieViewHp) { // from class: com.byazt.gx.hp.2
            @Override // com.byazt.na.sz
            public String hp(String str) {
                return com.byazt.ss.l.hp(str, hp.this.f27775j);
            }
        });
        ugenLottieViewHp.setViewDelegate(new n() { // from class: com.byazt.gx.hp.3
            @Override // com.byazt.na.n
            public View hp(String str, Map<String, Object> map) {
                if (!"view:".equals(str) || map == null || map.isEmpty()) {
                    return null;
                }
                if (!hp.this.f20615z) {
                    hp.this.f20615z = true;
                    hp.this.hp(map);
                }
                return hp.this.db;
            }
        });
        ugenLottieViewHp.setLottieClicklistener(lVar);
        ugenLottieViewHp.setLottieAnimListener(new LottieAnimationView.hp() { // from class: com.byazt.gx.hp.4
            @Override // com.byazt.na.LottieAnimationView.hp
            public void hp(Map<String, Object> map) throws JSONException {
                hp.this.hp(map, 19);
            }

            @Override // com.byazt.na.LottieAnimationView.hp
            public void l(Map<String, Object> map) throws JSONException {
                hp.this.hp(map, 20);
            }
        });
        ugenLottieViewHp.setEventMonitorProxy(new C0260hp(this, lVar));
        return ugenLottieViewHp;
    }

    @Override // com.byazt.gx.l
    public void s() throws JSONException {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((UgenLottieView) t2).setImageAssetDelegate(new AnonymousClass5());
            su();
            if (((UgenLottieView) this.f27788w).getVisibility() == 0) {
                ((UgenLottieView) this.f27788w).hp();
                qu();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Map<String, Object> map, int i2) throws JSONException {
        u uVar = new u();
        uVar.hp(i2);
        uVar.hp(this);
        if (map != null) {
            Object obj = map.get("lel");
            if (obj instanceof JSONArray) {
                hp(uVar, (JSONArray) obj);
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lottieEvent", true);
            if (map != null) {
                Object obj2 = map.get("duration");
                if (obj2 instanceof Long) {
                    jSONObject.put("duration", obj2);
                    jSONObject.put("uttieUrl", ((l) this).hp);
                }
                Object obj3 = map.get(t.f31272n);
                if (obj3 instanceof String) {
                    jSONObject.put("type", obj3);
                }
            }
            uVar.hp(jSONObject);
            this.ux.hp(uVar, this, this);
        } catch (JSONException unused) {
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(nu());
        arrayList.add(i2 == 19 ? "start" : "complete");
        hp(l((jx) this), "Lottie://state", arrayList.toArray());
    }

    private void hp(jx jxVar, String str, Object... objArr) {
        List<jx<View>> listEb;
        if (jxVar == null) {
            return;
        }
        jxVar.hp(str, objArr);
        if (!(jxVar instanceof com.byazt.xs.hp) || (listEb = ((com.byazt.xs.hp) jxVar).eb()) == null || listEb.isEmpty()) {
            return;
        }
        Iterator<jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            hp(it.next(), str, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(u uVar, JSONArray jSONArray) throws JSONException {
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString(PointParamKey.VID);
                    if (!TextUtils.isEmpty(strOptString)) {
                        int iOptInt = jSONObjectOptJSONObject.optInt(LiveConfigKey.HIGH, 0);
                        jx jxVarHp = hp(uVar.hp(), strOptString);
                        if (jxVarHp != null) {
                            jxVarHp.l(iOptInt == 0 ? 0 : 8);
                            View viewQ = jxVarHp.q();
                            if (viewQ instanceof UgenLottieView) {
                                UgenLottieView ugenLottieView = (UgenLottieView) viewQ;
                                if (iOptInt == 0) {
                                    ugenLottieView.hp();
                                    qu();
                                } else {
                                    ugenLottieView.a();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private jx hp(jx jxVar, String str) {
        if (jxVar == null) {
            return null;
        }
        while (jxVar.ud() != null) {
            jxVar = jxVar.ud();
        }
        return jxVar.j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Map<String, Object> map) {
        Object obj = map.get("ugen_url");
        String str = obj instanceof String ? (String) obj : null;
        Object obj2 = map.get("ugen_md5");
        String str2 = obj2 instanceof String ? (String) obj2 : null;
        Object obj3 = map.get("ugen_v");
        final String str3 = obj3 instanceof String ? (String) obj3 : null;
        Object obj4 = map.get("ugen_w");
        final int iIntValue = obj4 instanceof Integer ? ((Integer) obj4).intValue() : 0;
        Object obj5 = map.get("ugen_h");
        final int iIntValue2 = obj5 instanceof Integer ? ((Integer) obj5).intValue() : 0;
        if (iIntValue <= 0 || iIntValue2 <= 0 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            return;
        }
        e.hp(str, str2, new com.byazt.la.jx() { // from class: com.byazt.gx.hp.6
            @Override // com.byazt.la.jx
            public void hp() {
            }

            @Override // com.byazt.la.jx
            public void hp(String str4) {
                try {
                    hp.this.hp(new JSONObject(str4), iIntValue, iIntValue2, str3);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONObject jSONObject, int i2, int i3, String str) throws JSONException {
        jx<View> jxVarHp;
        v vVar = new v(this.f27777l);
        if (str.startsWith("2")) {
            jxVarHp = vVar.hp(jSONObject);
            vVar.l(this.f27775j);
        } else {
            jxVarHp = str.startsWith("3") ? vVar.hp(jSONObject, this.f27775j, (JSONObject) null) : null;
        }
        if (jxVarHp != null) {
            this.db = jxVarHp.q();
        }
    }
}
