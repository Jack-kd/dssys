package com.byazt.rdt;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.Window;
import com.anythink.core.common.f.f;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.umeng.analytics.pro.cl;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 817, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final jx hp = new jx();

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f25188a;
    public mp eb;
    public volatile boolean gu;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.cs.l f25193s;

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f25194w;

    /* renamed from: l, reason: collision with root package name */
    public float f25191l = -2.0f;
    public float jx = -2.0f;

    /* renamed from: j, reason: collision with root package name */
    public double f25190j = -2.0d;

    /* renamed from: q, reason: collision with root package name */
    public AtomicInteger f25192q = new AtomicInteger();

    /* renamed from: e, reason: collision with root package name */
    public AtomicInteger f25189e = new AtomicInteger();
    public ConcurrentHashMap<Window, com.byazt.iz.l> jl = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Window, com.byazt.cs.l> zy = new ConcurrentHashMap<>();

    private jx() {
        com.byazt.zn.hp hpVarJx = s.u().jx();
        if (hpVarJx == null) {
            return;
        }
        hpVarJx.l(new hp.jx() { // from class: com.byazt.rdt.jx.1
            @Override // com.byazt.zn.hp.jx, com.byazt.zn.hp.InterfaceC0436hp
            public void hp(String str, Window window) {
                super.hp(str, window);
                if (!TextUtils.isEmpty(str) && str.contains("com.byted.live.lite")) {
                    jx jxVar = jx.this;
                    jxVar.hp(window, jxVar.eb, jx.this.gu);
                }
            }

            @Override // com.byazt.zn.hp.jx, com.byazt.zn.hp.InterfaceC0436hp
            public void l(String str, Window window) {
                super.l(str, window);
                if (!TextUtils.isEmpty(str) && str.contains("com.byted.live.lite")) {
                    jx jxVar = jx.this;
                    jxVar.l(window, jxVar.eb, false);
                }
            }
        });
    }

    private void e() {
        if (this.f25192q.get() > 0 && ky.j(this.eb)) {
            this.f25192q.decrementAndGet();
        }
    }

    private void eb() {
        if (ky.j(this.eb)) {
            this.f25189e.incrementAndGet();
        }
    }

    private void q() {
        if (ky.j(this.eb)) {
            this.f25192q.incrementAndGet();
        }
    }

    private void s() {
        if (this.f25189e.get() > 0 && ky.j(this.eb)) {
            this.f25189e.decrementAndGet();
        }
    }

    public float a() {
        if (this.jx == -2.0f) {
            if (((AudioManager) sz.getContext().getSystemService(MediaFormat.KEY_AUDIO)) == null) {
                return 0.0f;
            }
            this.jx = r0.getStreamVolume(3);
        }
        return this.jx;
    }

    public boolean j() {
        return this.f25188a;
    }

    public boolean jx() {
        return this.f25194w;
    }

    public float w() {
        return this.f25191l;
    }

    public static jx hp() {
        return hp;
    }

    private void jx(Window window, mp mpVar) {
        if (window == null) {
            return;
        }
        com.byazt.cs.l lVar = this.zy.get(window);
        if (lVar != null) {
            int iJl = ky.jl(mpVar);
            if (ky.j(mpVar)) {
                s();
                if (this.f25189e.get() != 0) {
                    return;
                }
            }
            lVar.w(iJl);
        }
        this.zy.remove(window);
    }

    public double l() {
        return this.f25190j;
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        double dOptDouble = jSONObject.optDouble("day_factor", 0.0d);
        this.f25190j = hp.hp((((l.hp() ? 1 : -1) * jSONObject.optDouble("week_factor", 0.0d)) + ((l.jx() ? 1 : -1) * dOptDouble) + ((DeviceUtils.hp.l(sz.getContext()) >= 50.0f ? 1 : -1) * jSONObject.optDouble("battery_factor", 0.0d))) * jSONObject.optDouble("factor", 0.0d), jSONObject);
    }

    public void l(float f2) {
        this.jx = f2;
    }

    public void l(@ForbidWrapParam Context context, mp mpVar, boolean z2) {
        l(hp(context), mpVar, z2);
    }

    public void l(Window window, mp mpVar, boolean z2) {
        if (ky.eb(mpVar) && z2) {
            l(window, mpVar);
        }
        if (ky.a(mpVar)) {
            jx(window, mpVar);
        }
    }

    private void l(Window window, mp mpVar) {
        if (window == null) {
            return;
        }
        com.byazt.iz.l lVar = this.jl.get(window);
        if (lVar != null) {
            boolean zJ = ky.j(mpVar);
            int iJl = ky.jl(mpVar);
            if (zJ) {
                e();
                if (this.f25192q.get() != 0) {
                    return;
                }
            }
            lVar.w(iJl);
        }
        this.jl.remove(window);
    }

    public void hp(boolean z2) {
        this.f25194w = z2;
    }

    public void hp(float f2) {
        this.f25191l = f2;
    }

    public void hp(Context context, mp mpVar, boolean z2) {
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        this.gu = z2;
        hp(window, mpVar, z2);
    }

    private void hp(Window window, mp mpVar) {
        if (ky.eb(mpVar)) {
            this.eb = mpVar;
            com.byazt.iz.l lVar = new com.byazt.iz.l(window);
            boolean zJx = lVar.jx(ky.jl(mpVar));
            if (window == null || !zJx) {
                return;
            }
            q();
            this.jl.put(window, lVar);
        }
    }

    private void hp(boolean z2, mp mpVar, Window window) {
        if (!z2 && ky.a(mpVar)) {
            this.eb = mpVar;
            com.byazt.cs.l lVar = new com.byazt.cs.l();
            this.f25193s = lVar;
            lVar.hp(df.eb(mpVar));
            this.f25193s.hp(ky.wv(mpVar));
            boolean zJx = this.f25193s.jx(ky.jl(mpVar));
            if (window == null || !zJx) {
                return;
            }
            eb();
            this.zy.put(window, this.f25193s);
        }
    }

    public void hp(Window window, mp mpVar, boolean z2) {
        if (window == null) {
            return;
        }
        hp(window, mpVar);
        hp(z2, mpVar, window);
    }

    private Window hp(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getWindow();
        }
        return null;
    }

    public int hp(int i2, mp mpVar) {
        JSONObject jSONObjectXv;
        JSONArray jSONArrayOptJSONArray;
        int i3;
        int iJl = ky.jl(mpVar);
        if ((iJl == 9 || iJl == 5) && (jSONObjectXv = sz.l().xv()) != null) {
            int iOptInt = jSONObjectXv.optInt(cl.f49062q);
            double dOptDouble = jSONObjectXv.optDouble(f.a.f3244d);
            if (iOptInt == 1 && (jSONArrayOptJSONArray = jSONObjectXv.optJSONArray("valid_type")) != null && jSONArrayOptJSONArray.length() != 0) {
                boolean z2 = false;
                for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                    if (iJl == jSONArrayOptJSONArray.optInt(i4)) {
                        z2 = true;
                    }
                }
                if (z2 && (i3 = (int) (dOptDouble * 100.0d)) >= 0 && i3 <= 100) {
                    return i3;
                }
            }
        }
        return i2;
    }

    public void hp(int i2) {
        com.byazt.cs.l lVar = this.f25193s;
        if (lVar != null) {
            int iW = lVar.w();
            if (this.f25188a) {
                return;
            }
            this.f25188a = iW != i2;
            return;
        }
        this.f25188a = true;
    }
}
