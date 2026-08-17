package com.byazt.ib;

import android.view.View;
import android.view.ViewGroup;
import com.byazt.ar.PlayableFeedWebView;
import com.byazt.ar.eb;
import com.byazt.jz.sz;
import com.byazt.xci.d;
import com.byazt.xci.mp;
import com.byazt.xci.zy;
import com.byazt.zn.r;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1957, 30})
/* loaded from: classes.dex */
public class jx extends com.byazt.ar.l {

    /* renamed from: j, reason: collision with root package name */
    public PlayableFeedWebView f21035j;

    /* renamed from: w, reason: collision with root package name */
    public final eb f21036w;

    public jx(mp mpVar, com.byazt.ar.hp hpVar) {
        super(mpVar, hpVar);
        this.f21036w = new eb() { // from class: com.byazt.ib.jx.1
            @Override // com.byazt.ar.eb
            public void hp(int i2) {
            }

            @Override // com.byazt.ar.eb
            public void j() throws JSONException {
                if (d.hp() && jx.this.jx != null) {
                    jx.this.jx.hp(jx.this.hp);
                }
            }

            @Override // com.byazt.ar.eb
            public void jx() throws JSONException {
                if (jx.this.f21035j != null) {
                    jx.this.f21035j.s();
                }
            }

            @Override // com.byazt.ar.eb
            public void l() {
                if (jx.this.f21035j != null) {
                    jx.this.f21035j.eb();
                }
            }

            @Override // com.byazt.ar.eb
            public void w() {
            }

            @Override // com.byazt.ar.eb
            public void hp() {
                if (jx.this.f21035j != null) {
                    jx.this.f21035j.a();
                }
            }

            @Override // com.byazt.ar.eb
            public void hp(boolean z2) throws JSONException {
                if (jx.this.f21035j != null) {
                    jx.this.f21035j.hp(z2);
                }
            }
        };
        this.jx = new com.byazt.db.hp(mpVar, l());
    }

    public void jx() {
        PlayableFeedWebView playableFeedWebView = this.f21035j;
        if (playableFeedWebView != null) {
            playableFeedWebView.destroy();
        }
    }

    public void l(final ViewGroup viewGroup, final View view) {
        if (!hp(viewGroup, view)) {
            com.byazt.rk.a.hp(com.byazt.gy.eb.hp(this.hp), 2);
            return;
        }
        com.byazt.rk.a.hp(com.byazt.gy.eb.hp(this.hp), 1);
        com.byazt.ar.jx.hp(this.hp, l(), true);
        PlayableFeedWebView playableFeedWebView = new PlayableFeedWebView(this.jx, viewGroup);
        this.f21035j = playableFeedWebView;
        this.jx.hp(playableFeedWebView);
        this.f21035j.setMaterialMeta(r.hp(this.hp));
        this.f21035j.setEasyPlayableListener(this.f18137l);
        viewGroup.post(new Runnable() { // from class: com.byazt.ib.jx.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                com.byazt.ar.jx.l(jx.this.hp, jx.this.l(), true);
                jx jxVar = jx.this;
                jxVar.hp(viewGroup, view, jxVar.f21035j, (float[]) null);
            }
        });
    }

    public boolean hp(ViewGroup viewGroup, View view) throws JSONException {
        if (l() != null && view != null && viewGroup != null) {
            if (!d.jx(this.hp)) {
                com.byazt.ar.jx.hp(this.hp, l(), false, 6);
                return false;
            }
            if (com.byazt.ar.j.hp(viewGroup)) {
                String name = viewGroup.getClass().getName();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("container_name", name);
                    jSONObject.put("enable_layout_restrict", sz.l().fe());
                } catch (JSONException unused) {
                }
                com.byazt.ar.jx.hp(this.hp, l(), false, 1, jSONObject);
                return false;
            }
            if (com.byazt.ar.j.hp(this.hp, false)) {
                return true;
            }
            com.byazt.ar.jx.hp(this.hp, l(), false, 2);
            return false;
        }
        com.byazt.ar.jx.hp(this.hp, l(), false, 5);
        return false;
    }

    @Override // com.byazt.ar.l
    public zy l() {
        return d.eb(this.hp);
    }

    @Override // com.byazt.ar.l
    public eb hp() {
        return this.f21036w;
    }
}
