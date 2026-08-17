package com.smartdigimkt.m1;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.smartdigimkt.e5.v;
import com.smartdigimkt.z.z;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public final Context f41743a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.k f41744b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f41745c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f41746d;

    /* renamed from: e, reason: collision with root package name */
    public com.smartdigimkt.p1.a f41747e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f41748f;

    /* renamed from: g, reason: collision with root package name */
    public String f41749g;

    /* renamed from: h, reason: collision with root package name */
    public final int f41750h;

    /* renamed from: i, reason: collision with root package name */
    public int f41751i;

    /* renamed from: j, reason: collision with root package name */
    public int f41752j;

    /* renamed from: k, reason: collision with root package name */
    public JSONArray f41753k;

    /* renamed from: l, reason: collision with root package name */
    public long f41754l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f41755m = false;

    public t(Context context, com.smartdigimkt.m3.k kVar, com.smartdigimkt.l3.a aVar, boolean z2) {
        this.f41750h = 1;
        this.f41743a = context.getApplicationContext();
        this.f41744b = kVar;
        this.f41745c = aVar;
        this.f41746d = z2;
        this.f41750h = z.h(kVar, aVar) ? 1 : 2;
    }

    public abstract View a(Context context, v vVar);

    public final boolean a(boolean z2, boolean z3) {
        com.smartdigimkt.m3.k kVar = this.f41744b;
        if (kVar.f41825p != 67) {
            return false;
        }
        if (!z3) {
            if (this.f41755m) {
                return false;
            }
            this.f41755m = true;
        }
        return kVar.a(z2, z3);
    }

    public View b() {
        return null;
    }

    public abstract ViewGroup c();

    public abstract View d();

    public final com.smartdigimkt.i0.l a() {
        com.smartdigimkt.i0.l lVar = new com.smartdigimkt.i0.l(this.f41745c, "");
        View viewD = d();
        if (viewD != null) {
            lVar.f40669e = viewD.getWidth();
            lVar.f40670f = viewD.getHeight();
            try {
                int[] iArr = new int[2];
                viewD.getLocationOnScreen(iArr);
                lVar.f40676l = iArr[0];
                lVar.f40677m = iArr[1];
            } catch (Throwable unused) {
            }
            long j2 = this.f41754l;
            if (j2 > 0) {
                lVar.f40678n = j2;
            }
        }
        return lVar;
    }
}
