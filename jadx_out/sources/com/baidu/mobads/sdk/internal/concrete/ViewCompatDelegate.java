package com.baidu.mobads.sdk.internal.concrete;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.internal.a.a;
import com.baidu.mobads.sdk.internal.a.c;
import com.baidu.mobads.sdk.internal.av;
import com.baidu.mobads.sdk.internal.bn;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class ViewCompatDelegate implements a {

    /* renamed from: c, reason: collision with root package name */
    private final c f11376c;

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicInteger f11374b = new AtomicInteger(100000);

    /* renamed from: a, reason: collision with root package name */
    private static final String f11373a = "generateViewId";

    /* renamed from: d, reason: collision with root package name */
    private static final boolean f11375d = av.a((Class<?>) ViewCompat.class, f11373a, (Class<?>[]) new Class[0]);

    public ViewCompatDelegate(@NonNull IAdInterListener iAdInterListener) {
        this.f11376c = c.a(iAdInterListener, this);
    }

    @SuppressLint({"NewApi"})
    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i2;
        int i3;
        if (f11375d) {
            return ViewCompat.generateViewId();
        }
        if (bn.a((Context) null).a() >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f11374b;
            i2 = atomicInteger.get();
            i3 = i2 + 1;
            if (i3 > 16777215) {
                i3 = 1;
            }
        } while (!atomicInteger.compareAndSet(i2, i3));
        return i2;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return this.f11376c.getCode();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return this.f11376c.getData();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f11376c.getDelegator();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return this.f11376c.getMessage();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f11376c.getTarget();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return this.f11376c.getType();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public Object handleEvent(String str, String str2, Object[] objArr) {
        if (f11373a.equals(str2)) {
            return Integer.valueOf(generateViewId());
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
        this.f11376c.setTarget(obj);
    }
}
