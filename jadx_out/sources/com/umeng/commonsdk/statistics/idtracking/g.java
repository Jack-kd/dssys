package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* loaded from: classes5.dex */
public class g extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50310a = "imei";

    /* renamed from: b, reason: collision with root package name */
    private Context f50311b;

    public g(Context context) {
        super("imei");
        this.f50311b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getImeiNew(this.f50311b);
    }
}
