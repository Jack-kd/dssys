package com.smartdigimkt.f3;

import android.content.ContentValues;
import android.text.TextUtils;
import com.anythink.core.common.f.s;

/* loaded from: classes5.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40266a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40267b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f40268c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f40269d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f40270e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ a0 f40271f;

    public z(a0 a0Var, String str, String str2, long j2, long j3, int i2) {
        this.f40271f = a0Var;
        this.f40266a = str;
        this.f40267b = str2;
        this.f40268c = j2;
        this.f40269d = j3;
        this.f40270e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k3.r rVar = this.f40271f.f40205b;
        String str = this.f40266a;
        String str2 = this.f40267b;
        long j2 = this.f40268c;
        long j3 = this.f40269d;
        int i2 = this.f40270e;
        synchronized (rVar) {
            if (!TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(s.a.f3400b, str);
                        contentValues.put("file_path", str2);
                        contentValues.put(s.a.f3402d, Integer.valueOf(i2));
                        contentValues.put(s.a.f3403e, Long.valueOf(j3));
                        contentValues.put(s.a.f3404f, Long.valueOf(j2));
                        contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
                        if (rVar.b(str)) {
                            rVar.b().update(s.a.f3399a, contentValues, "video_url = ? ", new String[]{str});
                        } else {
                            rVar.b().insert(s.a.f3399a, null, contentValues);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }
}
