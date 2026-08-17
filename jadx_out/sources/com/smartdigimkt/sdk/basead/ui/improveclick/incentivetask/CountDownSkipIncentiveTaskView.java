package com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.k2.m;
import com.smartdigimkt.k2.n;
import com.smartdigimkt.k2.p;
import com.smartdigimkt.m2.h;
import com.smartdigimkt.m2.i;
import com.smartdigimkt.m2.j;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.basead.ui.SimpleGuideToClickView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public class CountDownSkipIncentiveTaskView extends BaseIncentiveTaskView {

    /* renamed from: c, reason: collision with root package name */
    public c f43982c;

    /* renamed from: d, reason: collision with root package name */
    public e f43983d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f43984e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f43985f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f43986g;

    /* renamed from: h, reason: collision with root package name */
    public RoundImageView f43987h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43988i;

    /* renamed from: j, reason: collision with root package name */
    public h f43989j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f43990k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f43991l;

    /* renamed from: m, reason: collision with root package name */
    public SimpleGuideToClickView f43992m;

    public CountDownSkipIncentiveTaskView(Context context) {
        super(context);
        this.f43990k = false;
    }

    public boolean a(long j2, long j3, e eVar) {
        return j2 < j3;
    }

    public void c() {
        com.smartdigimkt.m2.c cVar = this.f43981b;
        if (cVar != null) {
            p pVar = ((n) cVar).f41322a;
            pVar.f41329m = true;
            com.smartdigimkt.k2.e eVar = pVar.f41311h;
            if (eVar != null) {
                eVar.a(16, pVar.f41330n == 3 ? 53 : 13);
            }
        }
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
        com.smartdigimkt.m2.c cVar = this.f43981b;
        if (cVar != null) {
            ((n) cVar).a(-1L);
            ((n) this.f43981b).a();
        }
    }

    public String g() {
        return getContext().getString(k.a(getContext(), "myoffer_inctask_cts_completed_cta", "string"));
    }

    public int getCountDownSkipLayoutResId() {
        return k.a(getContext(), "myoffer_inctask_count_down_skip", "layout");
    }

    public String h() {
        return getContext().getString(k.a(getContext(), "myoffer_inctask_cts_completed", "string"));
    }

    public boolean i() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initSetting(com.smartdigimkt.m3.c r8, com.smartdigimkt.m3.e r9, long r10, com.smartdigimkt.m2.c r12) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView.initSetting(com.smartdigimkt.m3.c, com.smartdigimkt.m3.e, long, com.smartdigimkt.m2.c):void");
    }

    public boolean isShowingTaskCompletedManualClaimUi() {
        return this.f43991l;
    }

    public boolean j() {
        return this instanceof m;
    }

    public boolean k() {
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void onPause() {
        super.onPause();
        this.f43990k = false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void onResume() {
        super.onResume();
        if (k() || this.f43991l) {
            return;
        }
        if (this.f43990k) {
            showTaskCompletedManualClaimUi();
        } else {
            this.f43990k = true;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void release() {
        this.f43991l = false;
        super.release();
        h hVar = this.f43989j;
        if (hVar != null) {
            hVar.c();
            this.f43989j = null;
        }
    }

    public void showTaskCompletedManualClaimUi() {
        if (this.f43991l) {
            return;
        }
        this.f43991l = true;
        h hVar = this.f43989j;
        if (hVar != null) {
            hVar.c();
            this.f43989j = null;
        }
        TextView textView = this.f43984e;
        if (textView != null) {
            textView.setText(h());
        }
        TextView textView2 = this.f43986g;
        if (textView2 != null) {
            textView2.setText(g());
            this.f43986g.setOnClickListener(new i(this));
        }
        ImageView imageView = this.f43988i;
        if (imageView != null) {
            imageView.setOnClickListener(new j(this));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public final void a() {
        LayoutInflater.from(getContext()).inflate(getCountDownSkipLayoutResId(), this);
        this.f43984e = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_title", "id"));
        this.f43985f = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_desc", "id"));
        this.f43986g = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_cta", "id"));
        this.f43987h = (RoundImageView) findViewById(k.a(getContext(), "myoffer_inctask_icon", "id"));
        this.f43988i = (ImageView) findViewById(k.a(getContext(), "myoffer_inctask_close_view", "id"));
        this.f43992m = (SimpleGuideToClickView) findViewById(k.a(getContext(), "myoffer_g2c_item_g2c_fingerview", "id"));
    }

    public CountDownSkipIncentiveTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43990k = false;
    }

    public CountDownSkipIncentiveTaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43990k = false;
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void b(View view) throws Throwable {
        if (!j()) {
            view.setOnClickListener(null);
        }
        b();
        c();
        if (j()) {
            this.f43990k = false;
            e();
        } else {
            this.f43990k = true;
            if (this.f43989j != null) {
                d();
                h hVar = this.f43989j;
                hVar.a(hVar.f45443e, hVar.f45440b);
            } else {
                showTaskCompletedManualClaimUi();
            }
        }
        SimpleGuideToClickView simpleGuideToClickView = this.f43992m;
        if (simpleGuideToClickView != null) {
            simpleGuideToClickView.setVisibility(8);
        }
    }

    public String a(long j2) {
        return String.format(getContext().getString(k.a(getContext(), "myoffer_inctask_cts_time", "string")), Integer.valueOf((int) Math.ceil(j2 / 1000.0d)));
    }

    public long a(e eVar) {
        if (eVar == null) {
            return 0L;
        }
        return eVar.f41947k1;
    }
}
