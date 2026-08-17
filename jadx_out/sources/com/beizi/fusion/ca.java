package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.jc;

/* loaded from: classes2.dex */
public abstract class ca implements fc, ya {

    /* renamed from: a, reason: collision with root package name */
    protected y9 f13232a;

    /* renamed from: b, reason: collision with root package name */
    protected NativeModel f13233b;

    /* renamed from: c, reason: collision with root package name */
    protected Context f13234c;

    /* renamed from: d, reason: collision with root package name */
    protected String f13235d;

    /* renamed from: e, reason: collision with root package name */
    protected jc.a f13236e;

    @Override // com.beizi.fusion.fc
    public void a(Context context, NativeModel nativeModel, String str) {
        this.f13234c = context;
        this.f13232a = a();
        this.f13233b = nativeModel;
        this.f13235d = str;
    }

    @Override // com.beizi.fusion.ya
    public xa d() {
        return this.f13232a;
    }

    public y9 a() {
        return new y9();
    }
}
