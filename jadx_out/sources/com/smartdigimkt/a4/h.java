package com.smartdigimkt.a4;

import android.os.Handler;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: d, reason: collision with root package name */
    public final Map f39333d;

    /* renamed from: e, reason: collision with root package name */
    public final f f39334e;

    /* renamed from: f, reason: collision with root package name */
    public b f39335f;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f39337h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f39338i;

    /* renamed from: b, reason: collision with root package name */
    public long f39331b = 0;

    /* renamed from: g, reason: collision with root package name */
    public final g f39336g = new g(this);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f39330a = new ArrayList(50);

    /* renamed from: c, reason: collision with root package name */
    public final d f39332c = new d(this);

    public h(WeakHashMap weakHashMap, f fVar, Handler handler) {
        this.f39333d = weakHashMap;
        this.f39334e = fVar;
        this.f39337h = handler;
    }

    public final void a(long j2) {
        for (Map.Entry entry : this.f39333d.entrySet()) {
            if (((e) entry.getValue()).f39322c < j2) {
                this.f39330a.add((View) entry.getKey());
            }
        }
        ArrayList arrayList = this.f39330a;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            this.f39333d.remove((View) obj);
        }
        this.f39330a.clear();
    }
}
