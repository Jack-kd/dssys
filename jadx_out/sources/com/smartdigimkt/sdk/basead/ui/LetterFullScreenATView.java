package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.f0.f;
import com.smartdigimkt.f0.g;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.v1.c3;
import com.smartdigimkt.v1.d3;
import com.smartdigimkt.z.z;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class LetterFullScreenATView extends FullScreenATView {

    /* renamed from: P0, reason: collision with root package name */
    public g f43453P0;

    /* renamed from: Q0, reason: collision with root package name */
    public int f43454Q0;

    /* renamed from: R0, reason: collision with root package name */
    public final int f43455R0;

    /* renamed from: S0, reason: collision with root package name */
    public final int f43456S0;

    /* renamed from: T0, reason: collision with root package name */
    public final int f43457T0;

    /* renamed from: U0, reason: collision with root package name */
    public int f43458U0;

    /* renamed from: V0, reason: collision with root package name */
    public int f43459V0;

    public LetterFullScreenATView(Context context) {
        super(context);
        this.f43454Q0 = k.a(getContext(), 13.0f);
        this.f43455R0 = k.a(getContext(), 60.0f);
        this.f43456S0 = k.a(getContext(), 53.0f);
        this.f43457T0 = k.a(getContext(), 17.0f);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void A() {
        super.A();
        Drawable bgDrawable = this.f43291i0.getBgDrawable();
        if (bgDrawable != null) {
            setBackgroundDrawable(bgDrawable);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void C() {
        PanelView panelView;
        this.f43291i0.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (!z.b(this.f43217c) && (panelView = getPanelView()) != null) {
            panelView.setVisibility(0);
        }
        this.f43289g0.addView(this.f43291i0, 0);
        if (b(this.f43275P)) {
            PanelView panelView2 = getPanelView();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) panelView2.getLayoutParams();
            layoutParams.addRule(3, this.f43291i0.getId());
            layoutParams.height = -2;
            layoutParams.bottomMargin = this.f43453P0.f40195i;
            layoutParams.addRule(12, 0);
            int iA = k.a(getContext(), 30.0f);
            g gVar = this.f43453P0;
            panelView2.setPadding(0, iA, 0, (((gVar.f40195i / 129) * 69) + gVar.f40194h) - layoutParams.bottomMargin);
            panelView2.setBackgroundColor(-1);
            this.f43291i0.getLayoutParams().height = this.f43458U0;
        } else {
            ((RelativeLayout.LayoutParams) this.f43291i0.getLayoutParams()).bottomMargin = this.f43459V0;
            this.f43291i0.getLayoutParams().height = this.f43458U0;
            BaseEndCardView baseEndCardView = this.f43291i0;
            g gVar2 = this.f43453P0;
            baseEndCardView.setPadding(0, 0, 0, (gVar2.f40194h - this.f43459V0) - gVar2.f40195i);
            p();
        }
        g gVar3 = this.f43453P0;
        RelativeLayout relativeLayout = this.f43289g0;
        if (gVar3.f40192f || gVar3.f40193g) {
            return;
        }
        gVar3.f40192f = true;
        relativeLayout.postDelayed(new f(gVar3, relativeLayout), 2000L);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void J() {
        if (b(this.f43275P)) {
            super.J();
        } else {
            getPanelView().setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final boolean b(int i2) {
        if (this.f43217c.j()) {
            return false;
        }
        return (TextUtils.isEmpty(this.f43217c.f41814e) && TextUtils.isEmpty(this.f43217c.f41810c) && TextUtils.isEmpty(this.f43217c.f41812d)) ? false : true;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        e eVar;
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_letter_full_screen", "layout"), this);
        setGravity(13);
        a aVar = this.f43216b;
        if (aVar == null || (eVar = aVar.f41644r) == null || eVar.f41927e != 0) {
            return;
        }
        setOnClickListener(new c3(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public int getPanelViewTypeForShowEndCard() {
        return this.f43275P;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        int i2 = (this.f43458U0 * 2) / 3;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, i2, 0, 0);
        return layoutParams;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(1140850688);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void q() {
        super.q();
        g gVar = new g(getContext());
        this.f43453P0 = gVar;
        gVar.a(this.f43217c, this.f43216b, new d3(this));
        this.f43453P0.a(this, this.f43289g0.getId());
        this.f43453P0.a(this.f43266G - (this.f43454Q0 * 2));
        this.f43458U0 = (this.f43266G - (this.f43454Q0 * 2)) - (this.f43457T0 * 2);
        if (!b(this.f43275P)) {
            g gVar2 = this.f43453P0;
            int i2 = gVar2.f40195i;
            this.f43459V0 = i2;
            this.f43458U0 = ((this.f43458U0 + gVar2.f40194h) - i2) - i2;
        }
        this.f43228n = this.f43453P0.f40187a;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void t() {
        this.f43275P = 109;
        PanelView panelView = getPanelView();
        if (panelView != null) {
            panelView.setLayoutType(this.f43275P);
            ((LinearLayout.LayoutParams) panelView.findViewById(k.a(getContext(), "myoffer_iv_banner_icon", "id")).getLayoutParams()).bottomMargin = k.a(getContext(), 30.0f);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.FullScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void v() {
        this.f43454Q0 = (this.f43266G - ((int) (((this.f43267H - this.f43456S0) - this.f43455R0) * 0.49714285714285716d))) / 2;
        super.v();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43289g0.getLayoutParams();
        int i2 = this.f43457T0;
        layoutParams.setMargins(i2, this.f43455R0, i2, this.f43456S0);
        int i3 = this.f43454Q0;
        setPadding(i3, 0, i3, 0);
    }

    public LetterFullScreenATView(Context context, a aVar, c cVar, String str, int i2, int i3) {
        super(context, aVar, cVar, str, i2, i3);
        this.f43454Q0 = k.a(getContext(), 13.0f);
        this.f43455R0 = k.a(getContext(), 60.0f);
        this.f43456S0 = k.a(getContext(), 53.0f);
        this.f43457T0 = k.a(getContext(), 17.0f);
        if (this.f43230p != null) {
            HashMap map = new HashMap();
            map.put("screen_style", 1);
            this.f43230p.a(map);
        }
    }
}
