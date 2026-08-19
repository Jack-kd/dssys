package com.smartdigimkt.china.formatbusiness.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e.i0;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.d;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.m3.n;
import com.smartdigimkt.m3.o;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;
import com.smartdigimkt.v1.q2;
import com.smartdigimkt.v1.u4;
import com.smartdigimkt.v1.v4;
import com.smartdigimkt.y3.h;

/* loaded from: classes5.dex */
public class RvDoubleTaskIncentiveTaskView extends CountDownSkipIncentiveTaskView {

    /* renamed from: n, reason: collision with root package name */
    public final i0 f39863n;

    /* renamed from: o, reason: collision with root package name */
    public n f39864o;

    /* renamed from: p, reason: collision with root package name */
    public d f39865p;

    public RvDoubleTaskIncentiveTaskView(Context context, i0 i0Var) {
        super(context);
        this.f39863n = i0Var;
    }

    public static boolean b(c cVar) {
        if (cVar == null) {
            return false;
        }
        int i2 = cVar.f41824o;
        if (i2 == 3) {
            return TextUtils.isEmpty(cVar.f41820k) && TextUtils.isEmpty(cVar.f41822m);
        }
        if (i2 == 6) {
            return TextUtils.isEmpty(cVar.f41782C);
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final String a(long j2) {
        if (!n()) {
            return super.a(j2);
        }
        if (!a(this.f43982c)) {
            return getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue", "string"));
        }
        return getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue_experience", "string"), Integer.valueOf(Math.max(1, (int) Math.ceil(j2 / 1000.0d))));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final void c() {
        if (!n()) {
            super.c();
            return;
        }
        if (!b(this.f43982c)) {
            super.c();
            return;
        }
        i0 i0Var = this.f39863n;
        if (i0Var != null) {
            i0Var.f41329m = true;
            a aVar = i0Var.f41306c;
            c cVar = i0Var.f41305b;
            BaseIncentiveTaskView baseIncentiveTaskView = i0Var.f41326j;
            if (baseIncentiveTaskView instanceof CountDownSkipIncentiveTaskView) {
                ((CountDownSkipIncentiveTaskView) baseIncentiveTaskView).isShowingTaskCompletedManualClaimUi();
            }
            h.b(16, 53, aVar, cVar, (String) null, false);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final void d() {
        TextView textView;
        if (n() && (textView = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_cta", "id"))) != null) {
            if (a(this.f43982c)) {
                textView.setText(getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue_experience", "string"), Integer.valueOf(Math.max(1, (int) Math.ceil(a(this.f43983d) / 1000.0d)))));
            } else {
                textView.setText(getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue", "string")));
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final void e() throws Throwable {
        a aVar;
        e eVar;
        if (n()) {
            i0 i0Var = this.f39863n;
            if (i0Var != null && (aVar = i0Var.f41306c) != null && (eVar = aVar.f41644r) != null && com.smartdigimkt.m3.h.a(eVar.f41897T1)) {
                i0Var.f39941s = true;
                i0Var.f41329m = true;
            }
            boolean z2 = a(this.f43982c) && this.f43989j != null;
            TextView textView = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_cta", "id"));
            if (textView != null) {
                if (a(this.f43982c)) {
                    e eVar2 = this.f43983d;
                    int iC = o.c(eVar2 != null ? eVar2.f41897T1 : null);
                    if (z2) {
                        textView.setText(a(this.f43989j.f45443e));
                    } else if (iC >= 1) {
                        textView.setText(getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue_experience", "string"), Integer.valueOf(iC)));
                    } else {
                        textView.setText(getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue", "string")));
                    }
                } else {
                    textView.setText(getContext().getString(k.a(getContext(), "myoffer_inctask_double_cta_continue", "string")));
                }
            }
            if (a(this.f43982c)) {
                e eVar3 = this.f43983d;
                int iC2 = o.c(eVar3 != null ? eVar3.f41897T1 : null);
                if (iC2 >= 1) {
                    long jA = a(this.f43983d);
                    if (jA <= 0) {
                        jA = iC2 * 1000;
                    }
                    com.smartdigimkt.m2.h hVar = this.f43989j;
                    boolean z3 = hVar != null;
                    if (jA > 0 && hVar == null) {
                        String str = String.format(getContext().getString(k.a(getContext(), "myoffer_inctask_cts_hint", "string")), Integer.valueOf((int) Math.ceil(jA / 1000.0d)));
                        TextView textView2 = this.f43984e;
                        if (textView2 != null) {
                            textView2.setText(str);
                        }
                        this.f43989j = new com.smartdigimkt.m2.h(this, jA);
                    }
                    if (this.f43989j != null) {
                        if (!z3) {
                            d();
                        }
                        com.smartdigimkt.m2.h hVar2 = this.f43989j;
                        hVar2.a(hVar2.f45443e, hVar2.f45440b);
                        this.f43989j.b();
                    }
                }
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final void f() {
        i0 i0Var;
        if (n() && o() && (i0Var = this.f39863n) != null) {
            h.b(16, 53, i0Var.f41306c, i0Var.f41305b, (String) null, false);
        }
        com.smartdigimkt.m2.c cVar = this.f43981b;
        if (cVar != null) {
            ((com.smartdigimkt.k2.n) cVar).a(-1L);
        }
        i0 i0Var2 = this.f39863n;
        if (i0Var2 != null) {
            i0Var2.b();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final String g() {
        return !n() ? super.g() : getContext().getString(k.a(getContext(), "myoffer_inctask_double_completed_cta", "string"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public int getCountDownSkipLayoutResId() {
        return k.a(getContext(), "myoffer_inctask_count_down_skip_double", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final String h() {
        return !n() ? super.h() : getContext().getString(k.a(getContext(), "myoffer_inctask_double_completed_title", "string"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final boolean i() {
        if (!n() || !j() || !a(this.f43982c)) {
            return false;
        }
        e eVar = this.f43983d;
        return o.c(eVar != null ? eVar.f41897T1 : null) >= 1;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView, com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void initSetting(c cVar, e eVar, long j2, com.smartdigimkt.m2.c cVar2) {
        int i2;
        TextView textView;
        super.initSetting(cVar, eVar, j2, cVar2);
        if (n()) {
            Context context = getContext();
            TextView textView2 = (TextView) findViewById(k.a(context, "myoffer_inctask_overlay_title", "id"));
            if (textView2 != null) {
                textView2.setText(context.getString(k.a(context, "myoffer_inctask_double_overlay_title", "string")));
            }
            TextView textView3 = (TextView) findViewById(k.a(context, "myoffer_inctask_overlay_subtitle", "id"));
            if (textView3 != null) {
                textView3.setText(context.getString(k.a(context, "myoffer_inctask_double_overlay_subtitle", "string")));
            }
            TextView textView4 = (TextView) findViewById(k.a(context, "myoffer_inctask_cta", "id"));
            if (textView4 != null) {
                textView4.setText(context.getString(k.a(context, "myoffer_inctask_double_cta_initial", "string")));
            }
            c cVar3 = this.f43982c;
            if (cVar3 != null && (((i2 = cVar3.f41824o) == 1 || i2 == 4) && (textView = (TextView) findViewById(k.a(context, "myoffer_inctask_title", "id"))) != null)) {
                textView.setText(context.getString(k.a(context, "myoffer_inctask_double_task_title_link14", "string")));
            }
            TextView textView5 = (TextView) findViewById(k.a(context, "myoffer_inctask_double_second_reward_text", "id"));
            if (textView5 != null) {
                textView5.setVisibility(0);
                textView5.setText(context.getString(k.a(context, "myoffer_inctask_double_second_reward_hint", "string")));
            }
        }
        q();
        b();
        d dVar = eVar != null ? eVar.f41897T1 : null;
        this.f39865p = dVar;
        this.f39864o = o.a(dVar);
        post(new Runnable() { // from class: Y0.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f728b.l();
            }
        });
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final boolean j() {
        if (n()) {
            return o();
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final boolean k() {
        i0 i0Var;
        return n() && (i0Var = this.f39863n) != null && i0Var.f39941s;
    }

    public final void l() {
        ImageView imageView = (ImageView) findViewById(k.a(getContext(), "myoffer_inctask_close_view", "id"));
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: Y0.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f729b.c(view);
                }
            });
        }
    }

    public final boolean m() {
        i0 i0Var;
        return n() && j() && a(this.f43982c) && this.f43989j != null && !this.f43991l && (i0Var = this.f39863n) != null && i0Var.f39941s;
    }

    public final boolean n() {
        e eVar = this.f43983d;
        return com.smartdigimkt.m3.h.a(eVar != null ? eVar.f41897T1 : null);
    }

    public final boolean o() {
        e eVar;
        int i2;
        int i3;
        if (this.f43982c == null || (eVar = this.f43983d) == null || !com.smartdigimkt.m3.h.a(eVar.f41897T1)) {
            return false;
        }
        c cVar = this.f43982c;
        if ((cVar != null && ((i3 = cVar.f41824o) == 1 || i3 == 4)) || (i2 = cVar.f41824o) == 2) {
            return true;
        }
        if (i2 == 3 || i2 == 6) {
            return !b(cVar);
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView, com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void onPause() throws Throwable {
        if (m() && !com.smartdigimkt.s2.c.f43115b && com.smartdigimkt.s2.c.f43114a.get() <= 0 && com.smartdigimkt.s2.c.f43116c.get() <= 0) {
            com.smartdigimkt.m2.h hVar = this.f43989j;
            if (hVar.f45441c) {
                hVar.a(hVar.f45443e, hVar.f45440b);
            }
        }
        super.onPause();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView, com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void onResume() {
        if (m()) {
            this.f43989j.b();
        }
        super.onResume();
        b();
    }

    public final void p() {
        i0 i0Var = this.f39863n;
        if (i0Var != null) {
            if (o.a(i0Var.f41306c.f41644r.f41897T1).f42134b != 2) {
                i0Var.b();
                return;
            }
            com.smartdigimkt.k2.e eVar = i0Var.f41311h;
            if (eVar instanceof q2) {
                ((q2) eVar).f44581a.c(1);
            }
        }
    }

    public final void q() {
        TextView textView;
        if (n() && (textView = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_cta", "id"))) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: Y0.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Throwable {
                    this.f726b.b(view);
                }
            });
        }
    }

    public final void r() {
        d dVar;
        e eVar;
        Context context = getContext();
        i0 i0Var = this.f39863n;
        if (i0Var != null) {
            a aVar = i0Var.f41306c;
            dVar = (aVar == null || (eVar = aVar.f41644r) == null) ? null : eVar.f41897T1;
        } else {
            dVar = this.f39865p;
        }
        Runnable runnable = new Runnable() { // from class: Y0.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f727b.p();
            }
        };
        i0 i0Var2 = this.f39863n;
        a aVar2 = i0Var2 != null ? i0Var2.f41306c : null;
        c cVar = i0Var2 != null ? i0Var2.f41305b : null;
        if (context == null) {
            return;
        }
        n nVarA = o.a(dVar);
        boolean z2 = nVarA.f42134b == 2;
        String string = nVarA.f42136d;
        if (TextUtils.isEmpty(string)) {
            string = context.getString(k.a(context, z2 ? "myoffer_rv_double_retention_main_disallow" : "myoffer_rv_double_retention_main_allow", "string"));
        }
        String string2 = nVarA.f42137e;
        if (TextUtils.isEmpty(string2)) {
            string2 = context.getString(k.a(context, "myoffer_rv_double_retention_leave", "string"));
        }
        String string3 = nVarA.f42138f;
        if (TextUtils.isEmpty(string3)) {
            string3 = context.getString(k.a(context, "myoffer_rv_double_retention_stay", "string"));
        }
        v4.a(context, string, string3, string2, runnable, aVar2, cVar, u4.TASK_CARD_CLOSE);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final long a(e eVar) {
        if (!n()) {
            return super.a(eVar);
        }
        int iC = o.c(eVar != null ? eVar.f41897T1 : null);
        return iC > 0 ? iC * 1000 : super.a(eVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a6, code lost:
    
        if (r7 == 1) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.china.formatbusiness.ui.RvDoubleTaskIncentiveTaskView.c(android.view.View):void");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final boolean a(long j2, long j3, e eVar) {
        c cVar;
        if (!n()) {
            return super.a(j2, j3, eVar);
        }
        if (o()) {
            c cVar2 = this.f43982c;
            if ((cVar2 != null && cVar2.f41824o == 3 && (!TextUtils.isEmpty(cVar2.f41820k) || !TextUtils.isEmpty(cVar2.f41822m))) || ((cVar = this.f43982c) != null && cVar.f41824o == 6 && !TextUtils.isEmpty(cVar.f41782C))) {
                int iC = o.c(eVar != null ? eVar.f41897T1 : null);
                if (iC >= 1 && iC <= 15 && j2 > 0) {
                    return true;
                }
            }
            return false;
        }
        int iC2 = o.c(eVar != null ? eVar.f41897T1 : null);
        if (iC2 < 1 || iC2 > 15) {
            return super.a(j2, j3, eVar);
        }
        return j2 > 0;
    }

    public static boolean a(c cVar) {
        if (cVar == null) {
            return false;
        }
        int i2 = cVar.f41824o;
        return i2 == 3 || i2 == 6;
    }
}
