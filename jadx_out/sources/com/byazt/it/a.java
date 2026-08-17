package com.byazt.it;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import com.byazt.xa.q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 836, 54})
/* loaded from: classes.dex */
public class a extends l implements q.hp {

    /* renamed from: b, reason: collision with root package name */
    public boolean f21212b;
    public int cx;
    public final List<eb> di;
    public boolean ec;
    public int gu;
    public int jl;

    /* renamed from: k, reason: collision with root package name */
    public int f21213k;

    /* renamed from: n, reason: collision with root package name */
    public boolean f21214n;
    public long ns;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public int f21215u;

    /* renamed from: v, reason: collision with root package name */
    public int f21216v;
    public int vv;
    public Handler xs;
    public String zy;

    public a(Context context) {
        super(context);
        this.jl = 0;
        this.zy = "";
        this.f21213k = 0;
        this.f21216v = 0;
        this.f21215u = 0;
        this.xs = new com.byazt.xa.q(Looper.getMainLooper(), this);
        this.vv = 0;
        this.ec = false;
        this.sz = false;
        this.f21214n = false;
        this.ns = 0L;
        this.cx = 0;
        this.f21212b = false;
        this.di = new ArrayList();
    }

    private void gu() {
        if (this.f21214n) {
            this.f21214n = false;
            int i2 = this.cx;
            this.cx = 0;
            l(i2);
        }
    }

    private void j() {
        if (this.sz) {
            com.byazt.xs.jx jxVar = this.f21223l;
            View viewQ = jxVar != null ? jxVar.q() : null;
            if ((this.f21216v & 2) != 0 && viewQ != null && viewQ.getVisibility() != 0) {
                this.f21215u |= 2;
            }
            if ((this.f21216v & 1) != 0 && viewQ != null && !viewQ.hasWindowFocus()) {
                this.f21215u |= 1;
            }
            if (this.f21215u != 0) {
                w();
            } else {
                gu();
            }
        }
    }

    private void jl() {
        if (this.di.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.di);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((eb) obj).hp(this.zy);
        }
    }

    private void jx() {
        if (this.sz) {
            return;
        }
        this.sz = true;
        this.ec = false;
        this.f21214n = false;
        this.cx = 0;
        this.f21212b = false;
        this.f21215u = 0;
        jl();
        l(this.jl);
        j();
    }

    private void l(int i2) {
        this.xs.removeMessages(1001);
        long jMax = Math.max(0, i2);
        this.ns = SystemClock.uptimeMillis() + jMax;
        this.xs.sendEmptyMessageDelayed(1001, jMax);
    }

    private void w() {
        if (this.f21214n) {
            return;
        }
        this.cx = (int) Math.max(0L, this.ns - SystemClock.uptimeMillis());
        this.xs.removeMessages(1001);
        this.f21214n = true;
    }

    private void zy() {
        if (this.di.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.di);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((eb) obj).l(this.zy);
        }
    }

    @Override // com.byazt.it.l
    public void a() {
        super.a();
        Map<String, Object> map = this.f21226w;
        if (map == null) {
            this.zy = "";
            return;
        }
        Object obj = map.get("name");
        if (obj != null) {
            this.zy = String.valueOf(obj);
        } else {
            this.zy = "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    @Override // com.byazt.it.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(java.lang.Object... r4) {
        /*
            r3 = this;
            java.util.Map<java.lang.String, java.lang.Object> r4 = r3.f21226w
            r0 = 1
            if (r4 == 0) goto L7f
            java.lang.String r1 = "name"
            java.lang.Object r4 = r4.get(r1)
            if (r4 == 0) goto L14
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r3.zy = r4
            goto L18
        L14:
            java.lang.String r4 = ""
            r3.zy = r4
        L18:
            java.util.Map<java.lang.String, java.lang.Object> r4 = r3.f21226w
            java.lang.String r1 = "condition"
            java.lang.Object r4 = r4.get(r1)
            r1 = 0
            if (r4 == 0) goto L2e
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r4 = com.byazt.xa.jx.hp(r4, r1)
            r3.f21213k = r4
            goto L30
        L2e:
            r3.f21213k = r1
        L30:
            java.util.Map<java.lang.String, java.lang.Object> r4 = r3.f21226w
            java.lang.String r2 = "pauseMode"
            java.lang.Object r4 = r4.get(r2)
            if (r4 == 0) goto L45
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r4 = com.byazt.xa.jx.hp(r4, r1)
            r3.f21216v = r4
            goto L47
        L45:
            r3.f21216v = r1
        L47:
            java.util.Map<java.lang.String, java.lang.Object> r4 = r3.f21226w
            java.lang.String r2 = "loop"
            java.lang.Object r4 = r4.get(r2)
            if (r4 == 0) goto L5c
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r4 = com.byazt.xa.jx.hp(r4, r0)
            r3.gu = r4
            goto L5e
        L5c:
            r3.gu = r0
        L5e:
            int r4 = r3.gu
            if (r4 > 0) goto L66
            r4 = -1
            r3.vv = r4
            goto L68
        L66:
            r3.vv = r4
        L68:
            java.util.Map<java.lang.String, java.lang.Object> r4 = r3.f21226w
            java.lang.String r2 = "duration"
            java.lang.Object r4 = r4.get(r2)
            if (r4 != 0) goto L75
            r3.jl = r1
            goto L7f
        L75:
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r4 = com.byazt.xa.jx.hp(r4, r1)
            r3.jl = r4
        L7f:
            int r4 = r3.f21213k
            if (r4 == 0) goto La4
            if (r4 != r0) goto L9e
            com.byazt.xs.jx r4 = r3.f21223l
            if (r4 == 0) goto L9b
            android.view.View r4 = r4.q()
            if (r4 == 0) goto L9b
            com.byazt.xs.jx r4 = r3.f21223l
            android.view.View r4 = r4.q()
            int r4 = r4.getVisibility()
            if (r4 == 0) goto La4
        L9b:
            r3.ec = r0
            goto La7
        L9e:
            r1 = 2
            if (r4 != r1) goto La4
            r3.ec = r0
            goto La7
        La4:
            r3.jx()
        La7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.it.a.hp(java.lang.Object[]):boolean");
    }

    public String l() {
        return this.zy;
    }

    public void hp(int i2) {
        if (this.f21213k == 1 && this.ec && i2 == 0) {
            jx();
        }
        if (!this.sz || (this.f21216v & 2) == 0) {
            return;
        }
        if (i2 == 0) {
            this.f21215u &= -3;
        } else {
            this.f21215u |= 2;
        }
        j();
    }

    public void hp() {
        if (this.f21213k == 2 && this.ec) {
            jx();
        }
    }

    public void hp(boolean z2) {
        if (!this.sz || (this.f21216v & 1) == 0) {
            return;
        }
        if (z2) {
            this.f21215u &= -2;
        } else {
            this.f21215u |= 1;
        }
        j();
    }

    @Override // com.byazt.xa.q.hp
    public void hp(Message message) {
        int i2;
        int i3;
        if (message.what != 1001) {
            return;
        }
        this.hp.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
        int i4 = this.vv - 1;
        this.vv = i4;
        if (i4 < 0 && (i3 = this.jl) != 0) {
            l(i3);
            return;
        }
        if (i4 > 0 && (i2 = this.jl) != 0) {
            l(i2);
            return;
        }
        this.xs.removeMessages(1001);
        this.ns = 0L;
        if (this.f21212b) {
            return;
        }
        this.f21212b = true;
        zy();
    }

    public void hp(eb ebVar) {
        if (ebVar == null || this.di.contains(ebVar)) {
            return;
        }
        this.di.add(ebVar);
    }
}
