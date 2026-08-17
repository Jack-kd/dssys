package com.byazt.lsx;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l hp;

    /* renamed from: l, reason: collision with root package name */
    public List<hp> f22782l = new CopyOnWriteArrayList();

    @com.byazt.kj.hp(hp = {0, 1, 310, 123})
    public static class hp {
        public j hp;

        /* renamed from: l, reason: collision with root package name */
        public JSONObject f22783l;

        public hp(j jVar, JSONObject jSONObject) {
            this.hp = jVar;
            this.f22783l = jSONObject;
        }

        public j hp() {
            return this.hp;
        }

        public JSONObject l() {
            return com.byazt.lsx.hp.hp(this.hp, this.f22783l);
        }
    }

    private l() {
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void jx() {
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- event 清空埋点辅助模块");
        List<hp> list = this.f22782l;
        if (list != null) {
            list.clear();
        }
    }

    public List<hp> l() {
        return this.f22782l;
    }

    public void hp(j jVar, JSONObject jSONObject) {
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- event 保存到埋点辅助模块");
        this.f22782l.add(new hp(jVar, jSONObject));
    }
}
