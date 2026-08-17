package com.byazt.ji;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.byazt.ju.e;
import com.byazt.qa.w;
import com.byazt.qt.eb;
import com.byazt.qt.j;
import com.byazt.qt.k;
import com.byazt.toc.gu;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 753, 28})
/* loaded from: classes.dex */
public class hp extends k {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.gu.jx f21494a;
    public com.byazt.qrd.jx eb;
    public final gu hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qrd.l f21495j;
    public com.byazt.qrd.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.cg.hp f21496l;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.gu.l f21497s;

    /* renamed from: w, reason: collision with root package name */
    public View f21498w = null;

    public hp(gu guVar) {
        this.hp = guVar;
        hp();
    }

    private void j() {
        com.byazt.qrd.jx jxVar;
        gu guVar = this.hp;
        if (guVar == null || (jxVar = this.eb) == null) {
            return;
        }
        guVar.hp(jxVar);
    }

    @Override // com.byazt.qt.k
    public void destroy() throws NumberFormatException {
        if (this.f21498w != null) {
            this.f21498w = null;
        }
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.jx();
        }
        if (this.f21494a != null) {
            this.f21494a = null;
        }
        if (this.eb != null) {
            this.eb = null;
        }
    }

    @Override // com.byazt.qt.k
    public eb getDislikeDialog(Activity activity) {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.hp(activity);
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public j getDislikeInfo() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.k();
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public View getExpressAdView() {
        gu guVar;
        if (this.f21498w == null && (guVar = this.hp) != null) {
            this.f21498w = guVar.w();
        }
        l();
        j();
        jx();
        return this.f21498w;
    }

    @Override // com.byazt.qt.k
    public int getImageMode() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.a();
        }
        return 0;
    }

    @Override // com.byazt.qt.k
    public int getInteractionType() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.zy();
        }
        return -1;
    }

    @Override // com.byazt.qt.k
    public String getLifecycleId() {
        return null;
    }

    @Override // com.byazt.qt.k
    public Map<String, Object> getMediaExtraInfo() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.eb();
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public w getMediationManager() {
        return new e(new l(this.hp));
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.k
    public void registerClickableRects(JSONObject jSONObject) {
    }

    @Override // com.byazt.qt.k
    public void render() {
        com.byazt.qrd.l lVar = this.f21495j;
        if (lVar != null) {
            lVar.hp(this.f21498w, 0.0f, 0.0f);
        }
        com.byazt.qrd.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp(this.f21498w, 0.0f, 0.0f);
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        this.f21497s = lVar;
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(lVar);
        }
    }

    @Override // com.byazt.qt.k
    public void setCanInterruptVideoPlay(boolean z2) {
    }

    @Override // com.byazt.qt.k
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        this.f21496l = hpVar;
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(activity, hpVar);
        }
    }

    @Override // com.byazt.qt.k
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(dialog, numArr);
        }
    }

    @Override // com.byazt.qt.k
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        this.f21494a = jxVar;
        l();
    }

    @Override // com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.l lVar) {
        this.f21495j = lVar;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.k
    public void setSlideIntervalTime(int i2) {
    }

    @Override // com.byazt.qt.k
    public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
        this.eb = jxVar;
        j();
    }

    @Override // com.byazt.qt.k
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.k
    public void unRegisterRects() {
    }

    @Override // com.byazt.qt.k
    public void uploadDislikeEvent(String str) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(str);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void hp() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(new com.byazt.qre.hp() { // from class: com.byazt.ji.hp.1
                @Override // com.byazt.qre.hp
                public void hp(com.byazt.dq.hp hpVar) {
                }

                @Override // com.byazt.qre.hp
                public void l(View view) {
                    if (hp.this.f21495j != null) {
                        hp.this.f21495j.l(view, 0);
                    }
                    if (hp.this.jx != null) {
                        hp.this.jx.l(view, 0);
                    }
                }

                @Override // com.byazt.qre.hp
                public void hp() {
                    if (hp.this.f21496l != null) {
                        hp.this.f21496l.hp(0, "ad closed", true);
                    }
                    if (hp.this.jx != null) {
                        hp.this.jx.hp();
                    }
                }

                @Override // com.byazt.qre.hp
                public void hp(View view) {
                    if (hp.this.f21495j != null) {
                        hp.this.f21495j.hp(view, 0);
                    }
                    if (hp.this.jx != null) {
                        hp.this.jx.hp(view, 0);
                    }
                }
            });
        }
    }

    private void jx() {
        com.byazt.gu.l lVar;
        gu guVar = this.hp;
        if (guVar == null || (lVar = this.f21497s) == null) {
            return;
        }
        guVar.hp(lVar);
    }

    private void l() {
        com.byazt.gu.jx jxVar;
        gu guVar = this.hp;
        if (guVar == null || (jxVar = this.f21494a) == null) {
            return;
        }
        guVar.hp(jxVar);
    }

    @Override // com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.hp hpVar) {
        this.jx = hpVar;
    }
}
