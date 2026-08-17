package com.octopus.ad.d;

import android.content.Context;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: c, reason: collision with root package name */
    private static g f34024c;

    /* renamed from: a, reason: collision with root package name */
    public h f34025a;

    /* renamed from: b, reason: collision with root package name */
    private String f34026b = "OnLineState";

    private g(Context context) {
        if (context == null) {
            com.octopus.ad.d.b.f.d("OnLineState", "OnLineState init failed,because context cann't be null ");
            return;
        }
        h hVar = new h();
        this.f34025a = hVar;
        hVar.a(context);
    }

    public static g a(Context context) {
        if (f34024c == null) {
            synchronized (g.class) {
                try {
                    if (f34024c == null) {
                        f34024c = new g(context);
                    }
                } finally {
                }
            }
        }
        return f34024c;
    }

    public void a(f fVar) {
        h hVar = this.f34025a;
        if (hVar != null) {
            hVar.a(fVar);
        } else {
            com.octopus.ad.d.b.f.a(this.f34026b, "please init OnLineState first ,you can init it with 'OnLineState.init(context);' in you BaseApplication ");
        }
    }
}
