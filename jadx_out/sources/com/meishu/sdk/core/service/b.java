package com.meishu.sdk.core.service;

import android.app.Activity;
import com.meishu.sdk.core.utils.p0;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class b implements Runnable {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        try {
            WeakReference<Activity> weakReference = d.f31728b;
            Activity activity = weakReference != null ? weakReference.get() : null;
            if (activity != null && !activity.isFinishing()) {
                p0.b.f31950a.f31949a = null;
                activity.finish();
            }
        } finally {
            try {
            } finally {
            }
        }
    }
}
