package com.byazt.jwq;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.byazt.dy.w;
import com.byazt.gg.a;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, 34})
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: e, reason: collision with root package name */
    public v f21733e;
    public mp eb;
    public String gu;
    public String jl;

    /* renamed from: k, reason: collision with root package name */
    public AtomicBoolean f21734k;

    /* renamed from: q, reason: collision with root package name */
    public bu f21735q;

    /* renamed from: s, reason: collision with root package name */
    public Activity f21736s;

    /* renamed from: u, reason: collision with root package name */
    public Map<String, Object> f21737u;

    /* renamed from: v, reason: collision with root package name */
    public String f21738v;
    public hp zy;

    public l(Activity activity, mp mpVar) {
        this.zy = new hp(false, 0, "");
        this.f21734k = new AtomicBoolean(false);
        this.f21736s = activity;
        this.eb = mpVar;
    }

    public boolean a() {
        return true;
    }

    public int eb() {
        return 0;
    }

    public hp hp(e eVar) {
        return new hp(false, 0, "");
    }

    public abstract String hp();

    public void j() {
    }

    public void jx() {
    }

    public boolean l() {
        return false;
    }

    public String s() {
        return !TextUtils.isEmpty(this.f21738v) ? this.f21738v : hp();
    }

    public void w() {
    }

    public void hp(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        Map<String, Object> map2 = this.f21737u;
        if (map2 == null) {
            this.f21737u = map;
        } else {
            map2.putAll(map);
        }
    }

    public void j(String str) {
        this.gu = str;
    }

    public void jx(String str) {
        this.jl = str;
    }

    public hp l(e eVar) {
        return new hp(false, 0, "");
    }

    public void j(e eVar) {
        if (eVar != null) {
            eVar.hp();
        }
    }

    public hp jx(final e eVar) throws InterruptedException {
        if (!a()) {
            return new hp(false, 0, "");
        }
        final com.byazt.ay.a aVar = new com.byazt.ay.a(this.f21736s);
        hp(aVar);
        final FrameLayout frameLayout = new FrameLayout(this.f21736s);
        aVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.byazt.jwq.l.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                v vVar = l.this.f21733e;
                if (vVar != null) {
                    vVar.hp((vv) null);
                }
            }
        });
        com.byazt.nqo.hp hpVar = new com.byazt.nqo.hp();
        hpVar.hp(this.f21735q.j());
        hpVar.l(this.f21735q.w());
        hpVar.jx(this.f21735q.j());
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        com.byazt.dy.w.hp(hpVar, new w.hp() { // from class: com.byazt.jwq.l.2
            @Override // com.byazt.dy.w.hp
            public void hp(JSONObject jSONObject) throws JSONException {
                if (l.this.f21734k.get()) {
                    return;
                }
                if (jSONObject == null) {
                    l.this.zy = new hp(false, 0, "");
                    countDownLatch.countDown();
                } else {
                    l.this.hp(aVar, frameLayout, eVar, jSONObject);
                    l lVar = l.this;
                    lVar.zy = new hp(true, lVar.eb(), l.this.f21735q.j(), aVar);
                    countDownLatch.countDown();
                }
            }
        });
        try {
            countDownLatch.await(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
        }
        this.f21734k.set(true);
        return this.zy;
    }

    public void l(String str) {
        this.f21738v = str;
    }

    @com.byazt.kj.hp(hp = {0, 1, 740, 123})
    public static class hp {
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public Dialog f21747j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f21748l;

        public hp(boolean z2, int i2, String str, Dialog dialog) {
            this.hp = z2;
            this.f21748l = i2;
            this.jx = str;
            this.f21747j = dialog;
        }

        public int hp() {
            return this.f21748l;
        }

        public boolean j() {
            Dialog dialog = this.f21747j;
            if (dialog == null) {
                return false;
            }
            return dialog.isShowing();
        }

        public boolean jx() {
            return this.hp;
        }

        public String l() {
            return this.jx;
        }

        public void w() {
            Dialog dialog = this.f21747j;
            if (dialog != null) {
                dialog.dismiss();
            }
        }

        public hp(boolean z2, int i2, String str) {
            this(z2, i2, str, null);
        }
    }

    public void hp(final com.byazt.ay.a aVar, final ViewGroup viewGroup, final e eVar, final JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(s());
        } catch (JSONException unused) {
            jSONObject2 = new JSONObject();
        }
        final View viewHp = hp(jSONObject, jSONObject2, new vv() { // from class: com.byazt.jwq.l.3
            @Override // com.byazt.ql.vv
            public void hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
            }

            @Override // com.byazt.ql.vv
            public void hp(u uVar, vv.l lVar, vv.hp hpVar) throws JSONException {
                JSONObject jSONObjectJx = uVar.jx();
                if (jSONObjectJx == null) {
                    return;
                }
                String strOptString = jSONObjectJx.optString("type");
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("event_template");
                boolean zOptBoolean = jSONObjectJx.optBoolean("uchain", false);
                if (jSONObjectOptJSONObject != null && zOptBoolean && l.this.eb != null) {
                    aVar.dismiss();
                    ky.wv();
                    com.byazt.psp.l.INSTANCE.hp(jSONObjectOptJSONObject);
                    HashMap map = new HashMap();
                    map.put("reward_dialog_callback", eVar);
                    com.byazt.rj.jx.hp(strOptString, l.this.eb.ij(), map);
                    return;
                }
                strOptString.getClass();
                if (!strOptString.equals("exit_watch")) {
                    if (strOptString.equals("continue_watch")) {
                        aVar.dismiss();
                        l.this.j(eVar);
                        return;
                    }
                    return;
                }
                aVar.dismiss();
                e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }
        });
        if (viewHp == null) {
            return;
        }
        this.f21736s.getWindow().getDecorView().post(new Runnable() { // from class: com.byazt.jwq.l.4
            @Override // java.lang.Runnable
            public void run() {
                l.this.hp(aVar, viewHp, viewGroup);
                viewGroup.addView(viewHp);
                aVar.hp(viewGroup);
                aVar.show();
            }
        });
    }

    public l(Activity activity, mp mpVar, bu buVar) {
        this(activity, mpVar);
        this.f21735q = buVar;
    }

    public void hp(com.byazt.ay.a aVar) {
        aVar.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    public View hp(JSONObject jSONObject, JSONObject jSONObject2, vv vvVar) throws JSONException {
        v vVar = new v(this.f21736s);
        this.f21733e = vVar;
        com.byazt.xs.jx<View> jxVarHp = vVar.hp(jSONObject);
        this.f21733e.hp(vvVar);
        this.f21733e.l(jSONObject2);
        if (jxVarHp == null) {
            return null;
        }
        return jxVarHp.q();
    }

    public void hp(Dialog dialog, final View view, final View view2) {
        if (dialog == null || view == null) {
            return;
        }
        if (this.eb.wf() == 1) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.y = xh.jx(this.f21736s, -20.0f);
            dialog.getWindow().setAttributes(attributes);
        }
        if (this.eb.wf() == 2) {
            view.measure(0, 0);
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, view.getMeasuredHeight()));
            view.setVisibility(4);
            view.post(new com.byazt.uid.eb("scaleView") { // from class: com.byazt.jwq.l.5
                @Override // java.lang.Runnable
                public void run() {
                    view.setVisibility(0);
                    View view3 = view2;
                    if (view3 != null) {
                        float height = view3.getHeight();
                        if (view.getHeight() > height) {
                            float height2 = height / view.getHeight();
                            view.setScaleY(height2);
                            view.setScaleX(height2);
                            view.setPivotY(0.0f);
                        }
                    }
                }
            });
        }
    }
}
