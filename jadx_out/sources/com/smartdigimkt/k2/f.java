package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public Context f41304a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.m3.c f41305b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.l3.a f41306c;

    /* renamed from: d, reason: collision with root package name */
    public ViewGroup f41307d;

    /* renamed from: e, reason: collision with root package name */
    public int f41308e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f41309f;

    /* renamed from: g, reason: collision with root package name */
    public View f41310g;

    /* renamed from: h, reason: collision with root package name */
    public e f41311h;

    public abstract void a(int i2, HashMap map);

    public void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        this.f41304a = context;
        this.f41305b = cVar;
        this.f41306c = aVar;
        this.f41307d = viewGroup;
        this.f41308e = i2;
        this.f41311h = eVar;
        this.f41309f = relativeLayout;
        this.f41310g = view;
    }
}
