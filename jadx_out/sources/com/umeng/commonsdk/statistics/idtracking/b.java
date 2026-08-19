package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* loaded from: classes5.dex */
public class b extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50288a = "android_id";

    /* renamed from: b, reason: collision with root package name */
    private Context f50289b;

    public b(Context context) {
        super("android_id");
        this.f50289b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getAndroidId(this.f50289b);
    }
}
