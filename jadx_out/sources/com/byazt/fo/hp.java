package com.byazt.fo;

import android.app.Activity;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 49, 28})
/* loaded from: classes2.dex */
public class hp implements View.OnClickListener {
    public final Activity hp;

    /* renamed from: j, reason: collision with root package name */
    public Method f20084j;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f20085l;

    public hp(@NonNull Activity activity, int i2, @NonNull String str) {
        this.hp = activity;
        this.f20085l = str;
        this.jx = i2;
    }

    @NonNull
    private void hp(@Nullable Activity activity, @NonNull String str) throws NoSuchMethodException, SecurityException {
        try {
            Method method = activity.getClass().getMethod(this.f20085l, View.class);
            if (method != null) {
                this.f20084j = method;
                return;
            }
        } catch (NoSuchMethodException unused) {
        }
        throw new IllegalStateException("Could not find method " + this.f20085l + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.jx);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NonNull View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f20084j == null) {
            hp(this.hp, this.f20085l);
        }
        try {
            this.f20084j.invoke(this.hp, view);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException("Could not execute method for android:onClick", e3);
        }
    }
}
