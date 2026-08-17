package com.byazt.lw;

import android.content.Context;
import com.umeng.ccg.a;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 717, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f22790j;
    public String jx = "";

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.jj.hp f22791l = new com.byazt.jj.hp();

    public hp(Context context, JSONObject jSONObject) {
        this.hp = context;
        this.f22790j = jSONObject;
    }

    private String j() {
        return this.jx;
    }

    public com.byazt.jj.hp hp() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strL = l();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            this.f22791l.l(strL);
            this.f22791l.hp(jx());
            this.f22791l.hp(jCurrentTimeMillis2 - jCurrentTimeMillis);
            this.f22791l.jx(j());
            this.f22791l.jx();
            if (this.f22790j.has(a.f49746H)) {
                this.f22791l.hp(this.f22790j.optInt(a.f49746H));
            }
            return this.f22791l;
        } catch (Exception e2) {
            com.byazt.fg.hp.l("__kite" + jx() + " doLoad# error " + e2.getMessage());
            return this.f22791l;
        }
    }

    public abstract String jx();

    public abstract String l();
}
