package com.byazt.ay;

import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.anythink.core.common.f.g;
import com.byazt.ay.jx;
import com.byazt.jz.sz;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 525, 302})
/* loaded from: classes2.dex */
public class zy extends jx {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.la.s f18451a;
    public volatile boolean eb;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.dy.eb f18452j;
    public Window jx;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18453s;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f18454w;

    public zy(Activity activity, JSONObject jSONObject, com.byazt.dy.eb ebVar) {
        super(activity);
        this.jx = activity == null ? null : activity.getWindow();
        this.f18454w = jSONObject;
        this.f18452j = ebVar;
        this.f18451a = new com.byazt.la.s(activity);
    }

    private void a() {
        JSONObject jSONObject = this.f18454w;
        if (jSONObject == null || this.f18452j == null) {
            return;
        }
        JSONObject jSONObjectHp = com.byazt.la.e.hp(jSONObject.remove("ugen_url").toString(), this.f18454w.remove("ugen_md5").toString(), (com.byazt.la.jx) null);
        if (jSONObjectHp == null) {
            this.f18452j.hp(11, "uegnTemplate is empty");
            this.eb = true;
        } else {
            final FrameLayout frameLayout = new FrameLayout(this.hp);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f18451a.hp(jSONObjectHp, this.f18454w, new com.byazt.dy.eb() { // from class: com.byazt.ay.zy.1
                @Override // com.byazt.dy.eb
                public void hp(int i2, String str) {
                    zy.this.eb = true;
                    if (zy.this.f18452j != null) {
                        FrameLayout frameLayout2 = frameLayout;
                        if (frameLayout2 != null) {
                            frameLayout2.removeAllViews();
                        }
                        zy.this.f18452j.hp(i2, str);
                    }
                }

                @Override // com.byazt.dy.eb
                public void hp(com.byazt.xs.jx<View> jxVar) {
                    zy.this.eb = false;
                    if (zy.this.f18452j != null) {
                        zy.this.f18452j.hp(null);
                    }
                    frameLayout.addView(jxVar.q(), new FrameLayout.LayoutParams(jxVar.lv(), jxVar.r()));
                    zy.this.setContentView(frameLayout);
                }
            });
        }
    }

    private void eb() {
        JSONObject jSONObject = this.f18454w;
        if (jSONObject == null) {
            return;
        }
        hp(jSONObject.optString("app_name"));
        w(this.f18454w.optString("app_version"));
        a(this.f18454w.optString("reg_number"));
        eb(this.f18454w.optString("reg_url"));
        l(this.f18454w.optString(g.a.f3279p));
        s(this.f18454w.optString("developer_name"));
        hp(this.f18454w.optInt("score"));
        hp(this.f18454w.optJSONArray("creative_tags"));
        j(this.f18454w.optString("description"));
    }

    private void w() {
        if (this.jx != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            this.jx.setBackgroundDrawable(gradientDrawable);
            WindowManager.LayoutParams attributes = this.jx.getAttributes();
            attributes.alpha = 1.0f;
            this.jx.setAttributes(attributes);
        }
    }

    @Override // com.byazt.ay.jx
    public void jx() {
        if (this.f18453s) {
            super.jx();
        }
    }

    @Override // com.byazt.ay.jx
    public void l() {
    }

    @Override // com.byazt.ay.jx, android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.byazt.ay.jx, android.app.Dialog
    public void show() {
        super.show();
        if (this.eb) {
            hide();
            dismiss();
        }
    }

    public void l(jx.hp hpVar) {
        super.hp(hpVar);
        com.byazt.la.s sVar = this.f18451a;
        if (sVar != null) {
            sVar.hp(hpVar);
        }
    }

    @Override // com.byazt.ay.jx
    public void hp() {
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        if (this.hp.getResources().getConfiguration().orientation != 1) {
            this.f18453s = true;
            super.hp();
            super.l();
            eb();
            return;
        }
        w();
        a();
    }
}
