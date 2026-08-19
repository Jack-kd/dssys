package com.smartdigimkt.r2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f43025a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.e f43026b;

    /* renamed from: c, reason: collision with root package name */
    public int f43027c;

    /* renamed from: d, reason: collision with root package name */
    public View f43028d;

    /* renamed from: e, reason: collision with root package name */
    public View f43029e;

    /* renamed from: f, reason: collision with root package name */
    public View f43030f;

    /* renamed from: g, reason: collision with root package name */
    public View f43031g;

    /* renamed from: h, reason: collision with root package name */
    public View f43032h;

    /* renamed from: i, reason: collision with root package name */
    public View f43033i;

    /* renamed from: j, reason: collision with root package name */
    public View f43034j;

    /* renamed from: k, reason: collision with root package name */
    public View f43035k;

    /* renamed from: l, reason: collision with root package name */
    public com.smartdigimkt.n2.a f43036l;

    public t(com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.e eVar) {
        this.f43025a = cVar;
        this.f43026b = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x03ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r21, android.view.View r22) {
        /*
            Method dump skipped, instructions count: 1252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.r2.t.a(android.content.Context, android.view.View):void");
    }

    public static void a(Context context, View view, float f2) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).bottomMargin = com.smartdigimkt.c5.k.a(context, f2);
        } else if (layoutParams instanceof LinearLayout.LayoutParams) {
            ((LinearLayout.LayoutParams) layoutParams).bottomMargin = com.smartdigimkt.c5.k.a(context, f2);
        }
    }
}
