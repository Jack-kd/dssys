package com.byazt.uq;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.nw.eb;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2065})
/* loaded from: classes3.dex */
public class DynamicPrivacyView extends DynamicBaseWidgetImp {
    public LinearLayout cx;
    public TextView hp;

    /* renamed from: l, reason: collision with root package name */
    public TextView f26324l;

    /* renamed from: n, reason: collision with root package name */
    public TextView f26325n;
    public TextView ns;
    public TextView sz;

    public DynamicPrivacyView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.hp = new TextView(this.gu);
        this.f26324l = new TextView(this.gu);
        this.sz = new TextView(this.gu);
        this.cx = new LinearLayout(this.gu);
        this.f26325n = new TextView(this.gu);
        this.ns = new TextView(this.gu);
        this.hp.setTag(9);
        this.f26324l.setTag(10);
        this.sz.setTag(12);
        this.cx.addView(this.sz);
        this.cx.addView(this.ns);
        this.cx.addView(this.f26324l);
        this.cx.addView(this.f26325n);
        this.cx.addView(this.hp);
        addView(this.cx, getWidgetLayoutParams());
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.eb, this.f26307s);
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public boolean jx() {
        this.hp.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.hp.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.f26324l.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.f26324l.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.sz.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.sz.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        this.sz.setText("功能");
        this.f26324l.setText("权限");
        this.f26325n.setText(" | ");
        this.ns.setText(" | ");
        this.hp.setText("隐私");
        eb ebVar = this.jl;
        if (ebVar != null) {
            this.sz.setTextColor(ebVar.eb());
            this.sz.setTextSize(this.jl.w());
            this.f26324l.setTextColor(this.jl.eb());
            this.f26324l.setTextSize(this.jl.w());
            this.f26325n.setTextColor(this.jl.eb());
            this.ns.setTextColor(this.jl.eb());
            this.hp.setTextColor(this.jl.eb());
            this.hp.setTextSize(this.jl.w());
            return false;
        }
        this.sz.setTextColor(-1);
        this.sz.setTextSize(12.0f);
        this.f26324l.setTextColor(-1);
        this.f26324l.setTextSize(12.0f);
        this.f26325n.setTextColor(-1);
        this.ns.setTextColor(-1);
        this.hp.setTextColor(-1);
        this.hp.setTextSize(12.0f);
        return false;
    }
}
