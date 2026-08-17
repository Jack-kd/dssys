package com.byazt.wx;

import android.webkit.JavascriptInterface;
import com.byazt.oa.di;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 1484, 38})
/* loaded from: classes3.dex */
public class j {
    public WeakReference<di> hp;

    public j(di diVar) {
        this.hp = new WeakReference<>(diVar);
    }

    public void hp(di diVar) {
        this.hp = new WeakReference<>(diVar);
    }

    @JavascriptInterface
    public void invokeMethod(String str) {
        WeakReference<di> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().invokeMethod(str);
    }
}
