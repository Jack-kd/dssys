package com.smartdigimkt.w4;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class x {

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f44998d = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f44999a;

    /* renamed from: b, reason: collision with root package name */
    public final String f45000b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f45001c = false;

    public x(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        File filesDir = (applicationContext != null ? applicationContext : context).getFilesDir();
        if (filesDir == null) {
            return;
        }
        this.f44999a = filesDir.getAbsolutePath() + "/tktp/";
        this.f45000b = str;
    }
}
