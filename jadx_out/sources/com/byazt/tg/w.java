package com.byazt.tg;

import android.content.Context;
import com.byazt.jz.s;
import com.byazt.ql.k;
import com.byazt.ql.n;
import com.byazt.ql.ns;
import com.byazt.ymw.di;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 755, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends com.byazt.it.l implements ns {
    public di gu;

    public w(Context context) {
        super(context);
        this.gu = new di(context, 2, s.u().j());
    }

    private int gu() {
        JSONObject jSONObjectHp;
        com.byazt.xs.jx jxVar = this.f21223l;
        if (jxVar == null) {
            return 0;
        }
        JSONObject jSONObjectE = jxVar.e();
        if (jSONObjectE != null) {
            return jSONObjectE.optInt("meta_hashcode", 0);
        }
        k kVarPu = this.f21223l.pu();
        if (kVarPu == null || (jSONObjectHp = kVarPu.hp()) == null) {
            return 0;
        }
        return jSONObjectHp.optInt("meta_hashcode", 0);
    }

    @Override // com.byazt.ql.ns
    public void hp() {
    }

    @Override // com.byazt.ql.ns
    public void jx() {
    }

    @Override // com.byazt.ql.ns
    public void l() {
    }

    @Override // com.byazt.ql.ns
    public void hp(n nVar) {
    }

    @Override // com.byazt.ql.ns
    public void j() {
        if (this.gu == null || !this.f21223l.q().isShown()) {
            return;
        }
        this.gu.hp(gu());
    }

    @Override // com.byazt.ql.ns
    public void w() {
        di diVar = this.gu;
        if (diVar != null) {
            diVar.l(gu());
        }
    }

    @Override // com.byazt.ql.ns
    public void hp(JSONObject jSONObject) {
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        this.f21223l.hp(this);
        if (this.gu == null) {
            this.gu = new di(this.f21221e, 2, s.u().j());
        }
        k kVarPu = this.f21223l.pu();
        if (kVarPu == null) {
            return false;
        }
        Map<String, Object> mapL = kVarPu.l();
        if (mapL != null) {
            Object obj = mapL.get("rotation_angle");
            if (obj instanceof Integer) {
                this.gu.l(((Integer) obj).floatValue());
            }
            Object obj2 = mapL.get("calculation_method_twist");
            if (obj2 instanceof Integer) {
                this.gu.a(((Integer) obj2).intValue());
            }
            Object obj3 = mapL.get("twist_config");
            if (obj3 instanceof JSONObject) {
                this.gu.hp((JSONObject) obj3);
            }
            Object obj4 = mapL.get("twist_interact_conf");
            if (obj4 instanceof JSONObject) {
                this.gu.l((JSONObject) obj4);
            }
        }
        this.gu.hp(new di.hp() { // from class: com.byazt.tg.w.1
            @Override // com.byazt.ymw.di.hp
            public void hp(int i2) {
                if (w.this.hp == null || i2 != 2) {
                    return;
                }
                w.this.hp.hp(w.this.f21223l, w.this.f21220a, w.this.jx.l(), w.this.jx);
            }
        });
        return false;
    }

    @Override // com.byazt.ql.ns
    public void hp(boolean z2) {
        di diVar = this.gu;
        if (diVar != null) {
            if (z2) {
                diVar.hp(gu());
            } else {
                diVar.l(gu());
            }
        }
    }
}
