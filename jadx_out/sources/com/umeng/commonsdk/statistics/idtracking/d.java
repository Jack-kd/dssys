package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* loaded from: classes5.dex */
public class d extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50294a = "idfa";

    /* renamed from: b, reason: collision with root package name */
    private Context f50295b;

    public d(Context context) {
        super(f50294a);
        this.f50295b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getIdfa(this.f50295b);
    }
}
