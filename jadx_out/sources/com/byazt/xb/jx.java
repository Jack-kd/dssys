package com.byazt.xb;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.byazt.ik.a;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Array;

@com.byazt.kj.hp(hp = {0, 1, 905, 30})
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class jx implements Application.ActivityLifecycleCallbacks {
    public Fragment hp;

    public jx(Fragment fragment) {
        this.hp = fragment;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostSaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        Object[] objArr;
        Object obj;
        if (this.hp.getActivity() != activity) {
            return;
        }
        try {
            Parcelable parcelable = bundle.getParcelable("android:fragments");
            if (parcelable != null && (objArr = (Object[]) FieldUtils.readField(parcelable, "mActive")) != null) {
                int length = objArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        obj = null;
                        break;
                    }
                    obj = objArr[i2];
                    Object field = FieldUtils.readField(obj, "mTag");
                    if ("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin".equals(field) || ((field instanceof String) && (((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle") || ((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle")))) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (obj != null) {
                    Object[] objArr2 = (Object[]) Array.newInstance(Class.forName("android.app.FragmentState"), objArr.length - 1);
                    int[] iArr = new int[objArr.length - 1];
                    int i3 = 0;
                    for (int i4 = 0; i4 < objArr.length; i4++) {
                        Object obj2 = objArr[i4];
                        if (obj2 != obj) {
                            objArr2[i3] = obj2;
                            iArr[i3] = i4;
                            i3++;
                        }
                    }
                    FieldUtils.writeField(parcelable, "mActive", objArr2);
                    FieldUtils.writeField(parcelable, "mAdded", iArr);
                }
            }
        } catch (Throwable th) {
            a.hp(th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object[] objArr;
        Object obj;
        if (this.hp.getActivity() != activity) {
            return;
        }
        try {
            Parcelable parcelable = bundle.getParcelable("android:fragments");
            if (parcelable != null && (objArr = (Object[]) FieldUtils.readField(parcelable, "mActive")) != null) {
                int length = objArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        obj = null;
                        break;
                    }
                    obj = objArr[i2];
                    Object field = FieldUtils.readField(obj, "mTag");
                    if ("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin".equals(field) || ((field instanceof String) && (((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle") || ((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle")))) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (obj != null) {
                    Object[] objArr2 = (Object[]) Array.newInstance(Class.forName("android.app.FragmentState"), objArr.length - 1);
                    int[] iArr = new int[objArr.length - 1];
                    int i3 = 0;
                    for (int i4 = 0; i4 < objArr.length; i4++) {
                        Object obj2 = objArr[i4];
                        if (obj2 != obj) {
                            objArr2[i3] = obj2;
                            iArr[i3] = i4;
                            i3++;
                        }
                    }
                    FieldUtils.writeField(parcelable, "mActive", objArr2);
                    FieldUtils.writeField(parcelable, "mAdded", iArr);
                }
            }
        } catch (Throwable th) {
            a.hp(th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
