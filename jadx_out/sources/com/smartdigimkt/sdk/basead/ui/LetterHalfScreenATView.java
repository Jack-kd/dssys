package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.f0.f;
import com.smartdigimkt.f0.g;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.v1.e3;
import com.smartdigimkt.v1.f3;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class LetterHalfScreenATView extends HalfScreenATView {

    /* renamed from: E0, reason: collision with root package name */
    public g f43460E0;

    /* renamed from: F0, reason: collision with root package name */
    public int f43461F0;

    /* renamed from: G0, reason: collision with root package name */
    public int f43462G0;

    public LetterHalfScreenATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void C() {
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        if (basePlayerView != null) {
            this.f43291i0.setPadding(basePlayerView.getPaddingLeft(), basePlayerView.getPaddingTop(), basePlayerView.getPaddingRight(), basePlayerView.getPaddingBottom());
        }
        super.C();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void J() {
        if (b(this.f43275P)) {
            super.J();
        } else {
            getPanelView().setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView
    public final int N() {
        return 109;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView
    public final void O() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43290h0.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f43289g0.getLayoutParams();
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) basePlayerView.getLayoutParams();
        int i2 = this.f43266G;
        int i3 = (i2 - layoutParams2.leftMargin) - layoutParams2.rightMargin;
        int i4 = this.f43461F0 * 2;
        int i5 = i3 - i4;
        this.f43268I = i5;
        this.f43269J = i5;
        this.f43460E0.a(i2 - i4);
        int i6 = this.f43460E0.f40194h;
        layoutParams2.width = -1;
        layoutParams2.height = -2;
        this.f43289g0.setLayoutParams(layoutParams2);
        layoutParams3.width = this.f43268I;
        layoutParams3.height = this.f43269J;
        basePlayerView.setLayoutParams(layoutParams3);
        layoutParams.width = -1;
        layoutParams.height = -2;
        layoutParams.topMargin = this.f43269J;
        layoutParams.bottomMargin = this.f43460E0.f40195i;
        this.f43290h0.setLayoutParams(layoutParams);
        PanelView panelView = this.f43290h0;
        panelView.setPadding(panelView.getPaddingLeft(), this.f43290h0.getPaddingTop(), this.f43290h0.getPaddingRight(), k.a(getContext(), 9.0f) + (i6 - this.f43460E0.f40195i));
        if (!b(this.f43275P)) {
            g gVar = this.f43460E0;
            int i7 = gVar.f40195i;
            layoutParams3.bottomMargin = i7;
            layoutParams3.height = (this.f43269J + gVar.f40194h) - (i7 * 2);
            basePlayerView.setLayoutParams(layoutParams3);
            int paddingLeft = basePlayerView.getPaddingLeft();
            int paddingTop = basePlayerView.getPaddingTop();
            int paddingRight = basePlayerView.getPaddingRight();
            g gVar2 = this.f43460E0;
            basePlayerView.setPadding(paddingLeft, paddingTop, paddingRight, gVar2.f40194h - (gVar2.f40195i * 2));
        }
        this.f43462G0 = layoutParams3.height;
        g gVar3 = this.f43460E0;
        RelativeLayout relativeLayout = this.f43289g0;
        if (gVar3.f40192f || gVar3.f40193g) {
            return;
        }
        gVar3.f40192f = true;
        relativeLayout.postDelayed(new f(gVar3, relativeLayout), 2000L);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final boolean b(int i2) {
        if (this.f43217c.j()) {
            return false;
        }
        return (TextUtils.isEmpty(this.f43217c.f41814e) && TextUtils.isEmpty(this.f43217c.f41810c) && TextUtils.isEmpty(this.f43217c.f41812d)) ? false : true;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        this.f43461F0 = k.a(getContext(), 38.0f);
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_half_screen_letter_vertical", "layout"), this);
        int i2 = this.f43461F0;
        setPadding(i2, 0, i2, 0);
        setBackgroundResource(k.a(getContext(), "dailog_background_color", "color"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        int i2 = (this.f43462G0 * 2) / 3;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, i2, 0, 0);
        return layoutParams;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void q() {
        super.q();
        g gVar = new g(getContext());
        this.f43460E0 = gVar;
        gVar.a((RelativeLayout) this.f43289g0.getParent(), this.f43289g0.getId());
        g gVar2 = this.f43460E0;
        this.f43228n = gVar2.f40187a;
        gVar2.a(this.f43217c, this.f43216b, new f3(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.HalfScreenATView, com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void v() {
        e eVar;
        super.v();
        a aVar = this.f43216b;
        if (aVar == null || (eVar = aVar.f41644r) == null || eVar.f41927e != 0) {
            return;
        }
        this.f43289g0.setOnClickListener(new e3(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void z() {
        super.z();
        g gVar = this.f43460E0;
        if (gVar != null) {
            gVar.a();
        }
    }

    public LetterHalfScreenATView(Context context, a aVar, c cVar, String str, int i2, int i3) {
        super(context, aVar, cVar, str, i2, i3);
        if (this.f43230p != null) {
            HashMap map = new HashMap();
            map.put("screen_style", 1);
            this.f43230p.a(map);
        }
    }
}
