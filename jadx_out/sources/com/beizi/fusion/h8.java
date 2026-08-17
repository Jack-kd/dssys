package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.y1;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class h8 {

    /* renamed from: b, reason: collision with root package name */
    private static h8 f14247b;

    /* renamed from: a, reason: collision with root package name */
    private Map f14248a = new HashMap();

    public static h8 a() {
        if (f14247b == null) {
            synchronized (h8.class) {
                try {
                    if (f14247b == null) {
                        f14247b = new h8();
                    }
                } finally {
                }
            }
        }
        return f14247b;
    }

    public y1.b.C0179b b(String str) {
        try {
            if (!TextUtils.isEmpty(str) && this.f14248a.containsKey(str)) {
                return (y1.b.C0179b) this.f14248a.get(str);
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void b(y1.b.C0179b c0179b, String str) {
        if (c0179b == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(str) && this.f14248a.containsKey(str)) {
                this.f14248a.put(str, c0179b);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(y1.b.C0179b c0179b, String str) {
        if (c0179b == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str) || this.f14248a.containsKey(str)) {
                return;
            }
            this.f14248a.put(str, c0179b);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && this.f14248a.containsKey(str)) {
                this.f14248a.remove(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
