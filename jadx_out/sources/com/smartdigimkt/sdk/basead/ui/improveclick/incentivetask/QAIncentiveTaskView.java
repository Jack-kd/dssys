package com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.work.WorkRequest;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.k2.n;
import com.smartdigimkt.m2.m;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class QAIncentiveTaskView extends BaseIncentiveTaskView {

    /* renamed from: c, reason: collision with root package name */
    public TextView f43993c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f43994d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f43995e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f43996f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f43997g;

    /* renamed from: h, reason: collision with root package name */
    public View f43998h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43999i;

    /* renamed from: j, reason: collision with root package name */
    public long f44000j;

    public QAIncentiveTaskView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public final void a() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_inctask_qa", "layout"), this);
        this.f43993c = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_title", "id"));
        this.f43994d = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_subtitle", "id"));
        this.f43995e = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_answer_hint", "id"));
        this.f43996f = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_answer_right", "id"));
        this.f43997g = (TextView) findViewById(k.a(getContext(), "myoffer_inctask_answer_wrong", "id"));
        this.f43998h = findViewById(k.a(getContext(), "myoffer_inctask_close_view", "id"));
        ImageView imageView = (ImageView) findViewById(k.a(getContext(), "myoffer_inctask_right_hint", "id"));
        this.f43999i = imageView;
        if (imageView != null) {
            String strB = k.a() ? d.a().b(b.d.f2201o) : d.a().b(b.d.f2200n);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            a0.a().a(new o(3, strB), -1, -1, new com.smartdigimkt.m2.k(this));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView
    public void initSetting(c cVar, e eVar, long j2, com.smartdigimkt.m2.c cVar2) {
        super.initSetting(cVar, eVar, j2, cVar2);
        long j3 = eVar.f41947k1;
        long j4 = eVar.f41984x;
        if (j4 <= 0) {
            j4 = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        }
        long jMin = (j2 > 0 ? Math.min(j4, j2) : j4) - eVar.f41944j1;
        if (j3 > jMin) {
            j3 = jMin;
        }
        if (j3 == 0) {
            com.smartdigimkt.m2.c cVar3 = this.f43981b;
            if (cVar3 != null) {
                ((n) cVar3).a();
                return;
            }
            return;
        }
        this.f44000j = (j2 < j4 ? j4 - j2 : 0L) + j3;
        double d2 = j3 / 1000.0d;
        String str = String.format(getContext().getString(k.a(getContext(), "myoffer_inctask_qa_title", "string")), Integer.valueOf((int) Math.ceil(d2)));
        String str2 = String.format(getContext().getString(k.a(getContext(), "myoffer_inctask_qa_subtitle", "string")), Integer.valueOf((int) Math.ceil(d2)));
        TextView textView = this.f43993c;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.f43994d;
        if (textView2 != null) {
            textView2.setText(str2);
        }
        if (this.f43996f != null) {
            String str3 = !TextUtils.isEmpty(cVar.f41810c) ? cVar.f41810c : !TextUtils.isEmpty(cVar.f41812d) ? cVar.f41812d : "";
            if (!TextUtils.isEmpty(str3)) {
                this.f43996f.setText(str3);
            }
            this.f43996f.setOnClickListener(new m(this));
        }
        if (this.f43997g != null) {
            if (!TextUtils.isEmpty(eVar.f41973t0)) {
                this.f43997g.setText(eVar.f41973t0);
            }
            this.f43997g.setOnClickListener(new com.smartdigimkt.m2.n(this));
        }
        View view = this.f43998h;
        if (view != null) {
            view.setOnClickListener(new com.smartdigimkt.m2.o(this));
        }
    }

    public QAIncentiveTaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QAIncentiveTaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
