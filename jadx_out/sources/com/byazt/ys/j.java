package com.byazt.ys;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.qjq.e;
import com.byazt.qt.eb;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1746, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.oj.hp {
    public com.byazt.qre.jx hp;

    public j(com.byazt.qre.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.oj.hp
    public String getActionText() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.j();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public int getAdImageMode() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.s();
        }
        return 0;
    }

    @Override // com.byazt.oj.hp
    public String getDescription() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.hp();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public com.byazt.oj.jx getDislikeDialog(Activity activity) {
        com.byazt.qre.jx jxVar;
        if (activity == null || (jxVar = this.hp) == null) {
            return null;
        }
        return new l(activity, null, jxVar);
    }

    @Override // com.byazt.oj.hp
    public eb getDislikeDialog2(Activity activity) {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.l(activity);
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public com.byazt.qt.j getDislikeInfo() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.jl();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public String getIconUrl() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.l();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public List<String> getImageList() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.a();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public String getImageUrl() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.jx();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public int getInteractionType() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.q();
        }
        return 0;
    }

    @Override // com.byazt.oj.hp
    public com.byazt.oj.j getNativeAdAppInfo() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar == null || jxVar.e() == null) {
            return null;
        }
        return new jx(this.hp.e());
    }

    @Override // com.byazt.oj.hp
    public String getSource() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.eb();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public double getStarRating() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.w();
        }
        return 0.0d;
    }

    @Override // com.byazt.oj.hp
    public String getTitle() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.hp();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public boolean hasDislike() {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.gu();
        }
        return false;
    }

    @Override // com.byazt.oj.hp
    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.tl.j jVar) {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.hp(activity, viewGroup, list, list2, list3, e.hp(jVar));
        }
    }

    @Override // com.byazt.oj.hp
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.hp(activity, hpVar);
        }
    }

    @Override // com.byazt.oj.hp
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.hp(dialog, numArr);
        }
    }

    @Override // com.byazt.oj.hp
    public com.byazt.oj.jx getDislikeDialog(Activity activity, Map<String, Object> map) {
        com.byazt.qre.jx jxVar;
        if (activity == null || map == null || (jxVar = this.hp) == null) {
            return null;
        }
        return new l(activity, map, jxVar);
    }

    @Override // com.byazt.oj.hp
    public eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.qre.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.l(dialog, numArr);
        }
        return null;
    }
}
