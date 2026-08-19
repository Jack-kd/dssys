package com.smartdigimkt.r1;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.smartdigimkt.p1.u;
import com.smartdigimkt.z.x;
import java.util.Date;

/* loaded from: classes5.dex */
public final class m extends d {

    /* renamed from: g, reason: collision with root package name */
    public com.smartdigimkt.p1.a f42963g;

    /* renamed from: h, reason: collision with root package name */
    public com.smartdigimkt.a4.c f42964h;

    /* renamed from: i, reason: collision with root package name */
    public x f42965i;

    /* renamed from: j, reason: collision with root package name */
    public View f42966j;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f42967k;

    /* renamed from: l, reason: collision with root package name */
    public View f42968l;

    /* renamed from: m, reason: collision with root package name */
    public final g f42969m;

    /* renamed from: n, reason: collision with root package name */
    public final h f42970n;

    /* renamed from: o, reason: collision with root package name */
    public l f42971o;

    public m(Context context, com.smartdigimkt.l3.a aVar, String str, boolean z2) {
        super(context, aVar, str, z2);
        this.f42969m = new g(this);
        this.f42970n = new h(this);
    }

    public final void a(View view, View[] viewArr) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2), viewArr);
            }
            return;
        }
        if ((view instanceof Button) || (view instanceof TextView)) {
            String string = ((TextView) view).getText().toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.smartdigimkt.p3.a aVar = this.f42949e;
            if (TextUtils.equals(string, aVar != null ? aVar.f41817h : "")) {
                viewArr[0] = view;
            }
        }
    }

    public static void a(View view, g gVar) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2), gVar);
            }
            return;
        }
        view.setOnClickListener(gVar);
    }

    public final void a(int i2, int i3, boolean z2) {
        if (!this.f42967k) {
            l lVar = this.f42971o;
            if (lVar != null) {
                lVar.a(114);
            }
            this.f42967k = true;
            com.smartdigimkt.s1.d dVarA = com.smartdigimkt.s1.d.a(this.f42945a);
            com.smartdigimkt.p3.a aVar = this.f42949e;
            dVarA.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str = dVarA.f43107b.format(new Date(jCurrentTimeMillis));
            com.smartdigimkt.i0.c cVarA = dVarA.a(aVar);
            if (cVarA.f40641f.equals(str)) {
                cVarA.f40639d++;
            } else {
                cVarA.f40639d = 1;
                cVarA.f40641f = str;
            }
            cVarA.f40640e = jCurrentTimeMillis;
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.s1.c(dVarA, cVarA));
            com.smartdigimkt.z.p.a(8, this.f42949e, new com.smartdigimkt.i0.l(this.f42946b, ""));
            com.smartdigimkt.p1.a aVar2 = this.f42963g;
            if (aVar2 != null) {
                aVar2.onAdShow(new u());
            }
        }
        if (this.f42965i == null) {
            this.f42965i = new x(this.f42945a, this.f42946b, this.f42949e, this.f42966j);
        }
        com.smartdigimkt.a0.e eVar = this.f42965i.f45338f;
        if (eVar == null || !eVar.f39231e.get()) {
            x xVar = this.f42965i;
            i iVar = new i(this, i2, i3);
            com.smartdigimkt.a0.e eVar2 = xVar.f45338f;
            if (eVar2 != null) {
                eVar2.f39227a = iVar;
            }
            com.smartdigimkt.i0.l lVar2 = new com.smartdigimkt.i0.l(this.f42946b, "");
            if (z2) {
                lVar2.f40675k = true;
            }
            xVar.a(lVar2);
            l lVar3 = this.f42971o;
            if (lVar3 != null) {
                lVar3.a(113);
            }
        }
    }
}
