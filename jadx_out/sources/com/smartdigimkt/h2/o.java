package com.smartdigimkt.h2;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final Context f40510a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f40511b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f40512c;

    /* renamed from: d, reason: collision with root package name */
    public final RelativeLayout f40513d;

    /* renamed from: e, reason: collision with root package name */
    public final int f40514e;

    /* renamed from: f, reason: collision with root package name */
    public final View f40515f;

    /* renamed from: h, reason: collision with root package name */
    public e0 f40517h;

    /* renamed from: i, reason: collision with root package name */
    public final com.smartdigimkt.k2.e f40518i;

    /* renamed from: j, reason: collision with root package name */
    public Map f40519j;

    /* renamed from: k, reason: collision with root package name */
    public final n f40520k = new n(this);

    /* renamed from: g, reason: collision with root package name */
    public final ConcurrentLinkedQueue f40516g = new ConcurrentLinkedQueue();

    public o(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, int i2, RelativeLayout relativeLayout, View view, com.smartdigimkt.k2.e eVar) {
        this.f40510a = context;
        this.f40511b = cVar;
        this.f40512c = aVar;
        this.f40514e = i2;
        this.f40513d = relativeLayout;
        this.f40515f = view;
        this.f40518i = eVar;
        com.smartdigimkt.m3.e eVar2 = aVar.f41644r;
        int iY = i2 == 3 ? eVar2.f41951m : com.smartdigimkt.c5.h.y(context);
        long j2 = eVar2.f41967r0;
        String str = eVar2.f41970s0;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i3);
                    int iOptInt = jSONObjectOptJSONObject.optInt("cgf_type", -1);
                    if (!a(iOptInt, iY)) {
                        long jOptLong = jSONObjectOptJSONObject.optLong("cgf_st", -1L);
                        if (iOptInt > 0 && jOptLong >= 0) {
                            this.f40516g.add(new e0(this.f40510a, this.f40511b, this.f40512c, this.f40514e, new d0(i3 + 1, iOptInt, j2, jOptLong, eVar2.f41973t0, iY), this.f40513d, this.f40515f, this.f40518i, this.f40520k));
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void a() {
        e0 e0Var = this.f40517h;
        if (e0Var != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = e0Var.f40494s;
            e0Var.f40495t = jCurrentTimeMillis - j2;
            if (j2 > 0) {
                com.smartdigimkt.l3.a aVar = e0Var.f40478c;
                com.smartdigimkt.m3.c cVar = e0Var.f40477b;
                boolean zH = com.smartdigimkt.z.z.h(cVar, aVar);
                int i2 = e0Var.f40493r;
                int i3 = e0Var.f40482g;
                long j3 = e0Var.f40494s;
                long j4 = e0Var.f40495t;
                if (aVar != null && cVar != null) {
                    com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, null);
                    cVar2.f42817a = "1004699";
                    cVar2.a(aVar);
                    cVar2.f42828l = zH ? "2" : "1";
                    cVar2.f42829m = String.valueOf(i2);
                    cVar2.f42830n = String.valueOf(j3);
                    cVar2.f42831o = String.valueOf(j4);
                    cVar2.f42832p = String.valueOf(aVar.f41628b);
                    cVar2.f42833q = String.valueOf(i3);
                    if (cVar instanceof com.smartdigimkt.m3.b) {
                        com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
                        cVar2.f42834r = String.valueOf(bVar.f42054o0);
                        cVar2.f42835s = String.valueOf(bVar.f41806a);
                    }
                    com.smartdigimkt.y3.h.a(cVar2);
                }
            }
            com.smartdigimkt.b4.e.a().f39592b.removeCallbacks(e0Var.f40491p);
            BaseG2CV2View baseG2CV2View = e0Var.f40484i;
            if (baseG2CV2View != null) {
                baseG2CV2View.release();
                com.smartdigimkt.z3.d.a(e0Var.f40484i);
            }
            View view = e0Var.f40480e;
            if (view != null) {
                view.setBackgroundColor(Color.parseColor("#80000000"));
                e0Var.f40480e.setVisibility(8);
            }
            this.f40517h = null;
        }
    }

    public final void b() {
        e0 e0Var = this.f40517h;
        if (e0Var == null) {
            c();
            return;
        }
        if (e0Var.f40492q) {
            return;
        }
        e0Var.f40492q = true;
        e0Var.f40485j = SystemClock.elapsedRealtime();
        com.smartdigimkt.b4.e.a().a(e0Var.f40486k, e0Var.f40491p);
    }

    public final void c() {
        a();
        if (this.f40516g.size() > 0) {
            this.f40517h = (e0) this.f40516g.poll();
            b();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x008d A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x009d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int r6, int r7) {
        /*
            r5 = this;
            r0 = 0
            r1 = 3
            r2 = 1
            switch(r6) {
                case 1: goto L8e;
                case 2: goto L7c;
                case 3: goto L75;
                case 4: goto L66;
                case 5: goto L66;
                case 6: goto L8e;
                case 7: goto L8e;
                case 8: goto L15;
                case 9: goto L15;
                case 10: goto L15;
                case 11: goto L8e;
                case 12: goto L8e;
                case 13: goto L8;
                default: goto L6;
            }
        L6:
            goto L8d
        L8:
            com.smartdigimkt.l3.a r6 = r5.f40512c
            int r6 = r6.f41628b
            r3 = 4
            if (r6 == r3) goto L11
            if (r6 != r1) goto L8d
        L11:
            if (r7 != r2) goto L8d
            goto L8c
        L15:
            com.smartdigimkt.l3.a r1 = r5.f40512c
            int r1 = r1.f41628b
            if (r1 != r2) goto L1e
            if (r7 != r2) goto L1e
            goto L1f
        L1e:
            r0 = r2
        L1f:
            if (r0 != 0) goto L65
            r7 = 9
            if (r6 != r7) goto L32
            com.smartdigimkt.t1.d r7 = com.smartdigimkt.t1.d.a()
            java.lang.String r1 = "g2c_chop"
            boolean r7 = r7.c(r1)
            if (r7 != 0) goto L32
            r0 = r2
        L32:
            r7 = 10
            r1 = 8
            if (r6 == r1) goto L3a
            if (r6 != r7) goto L47
        L3a:
            com.smartdigimkt.t1.d r3 = com.smartdigimkt.t1.d.a()
            java.lang.String r4 = "g2c_finger_icon_v2"
            boolean r3 = r3.c(r4)
            if (r3 != 0) goto L47
            r0 = r2
        L47:
            if (r6 != r7) goto L56
            com.smartdigimkt.t1.d r7 = com.smartdigimkt.t1.d.a()
            java.lang.String r3 = "g2c_lucky_bag"
            boolean r7 = r7.c(r3)
            if (r7 != 0) goto L56
            r0 = r2
        L56:
            if (r6 != r1) goto L65
            com.smartdigimkt.t1.d r6 = com.smartdigimkt.t1.d.a()
            java.lang.String r7 = "g2c_lucky_bag_v2"
            boolean r6 = r6.c(r7)
            if (r6 != 0) goto L65
            goto L9d
        L65:
            return r0
        L66:
            int r6 = r5.f40514e
            if (r6 == r2) goto L6f
            r7 = 2
            if (r6 == r7) goto L6f
            if (r6 != r1) goto L8d
        L6f:
            android.view.View r6 = r5.f40515f
            if (r6 != 0) goto L74
            return r2
        L74:
            return r0
        L75:
            int r6 = r5.f40514e
            if (r6 == r2) goto L8c
            if (r6 != r1) goto L8d
            goto L8c
        L7c:
            com.smartdigimkt.m3.c r6 = r5.f40511b
            com.smartdigimkt.l3.a r7 = r5.f40512c
            boolean r6 = com.smartdigimkt.z.z.h(r6, r7)
            if (r6 != 0) goto L8d
            int r6 = r5.f40514e
            if (r6 == r2) goto L8c
            if (r6 != r1) goto L8d
        L8c:
            return r0
        L8d:
            return r2
        L8e:
            r7 = 6
            if (r6 != r7) goto L9e
            com.smartdigimkt.t1.d r6 = com.smartdigimkt.t1.d.a()
            java.lang.String r7 = "g2c_finger_icon"
            boolean r6 = r6.c(r7)
            if (r6 != 0) goto L9e
        L9d:
            return r2
        L9e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.h2.o.a(int, int):boolean");
    }
}
