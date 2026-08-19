package com.sigmob.sdk.splash;

import android.content.Context;
import android.widget.RelativeLayout;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;

/* renamed from: com.sigmob.sdk.splash.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
class C1372b extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    protected int f38644a;

    public C1372b(Context context) {
        super(context);
    }

    public static C1372b a(Context context, BaseAdUnit baseAdUnit) {
        MaterialMeta material;
        Integer num;
        if (context == null || baseAdUnit == null || (material = baseAdUnit.getMaterial()) == null || (num = material.creative_type) == null) {
            return null;
        }
        return num.intValue() == EnumC1270n.CreativeTypeSplashVideo.a() ? new h(context, baseAdUnit) : new C1373c(context);
    }

    public void b() {
    }

    public void c() {
    }

    public int getDuration() {
        return this.f38644a;
    }

    public void setAspectRatio(float f2) {
    }

    public void a() {
        setVisibility(0);
    }

    public boolean a(BaseAdUnit baseAdUnit) {
        return false;
    }
}
