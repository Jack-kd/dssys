package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class at {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11048a = z.f11752p;

    /* renamed from: b, reason: collision with root package name */
    private static final String f11049b = "pauseDlByPk";

    /* renamed from: c, reason: collision with root package name */
    private static final String f11050c = "cancelDlByPk";

    /* renamed from: d, reason: collision with root package name */
    private static final String f11051d = "resumeDownload";

    /* renamed from: e, reason: collision with root package name */
    private static final String f11052e = "getDownloadStatus";

    /* renamed from: g, reason: collision with root package name */
    private static at f11053g;

    /* renamed from: f, reason: collision with root package name */
    private au f11054f;

    private at(Context context) {
        this.f11054f = au.a(context, f11048a);
    }

    public static at a(Context context) {
        if (f11053g == null) {
            synchronized (at.class) {
                try {
                    if (f11053g == null) {
                        f11053g = new at(context);
                    }
                } finally {
                }
            }
        }
        return f11053g;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f11054f.a(null, f11050c, str);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f11054f.a(null, f11049b, str, 1);
    }

    public boolean a(Context context, JSONObject jSONObject, String str, String str2) {
        if (context == null || jSONObject == null) {
            return false;
        }
        Object objB = this.f11054f.b(null, f11051d, context, jSONObject, str, str2);
        if (objB instanceof Boolean) {
            return ((Boolean) objB).booleanValue();
        }
        return false;
    }

    public int a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (bw.a(context, str)) {
            return 103;
        }
        Object objB = this.f11054f.b(null, f11052e, str);
        if (objB instanceof Integer) {
            return ((Integer) objB).intValue();
        }
        return -1;
    }
}
