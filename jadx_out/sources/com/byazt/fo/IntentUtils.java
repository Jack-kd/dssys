package com.byazt.fo;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.bytedance.pangle.Zeus;
import java.lang.ref.WeakReference;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 49, 1268})
/* loaded from: classes2.dex */
public class IntentUtils {
    public static HashMap<Long, WeakReference<Bundle>> hp = new HashMap<>();

    public static void hp(Intent intent, String str) {
        long longExtra = intent.getLongExtra("pangle_use_memory", 0L);
        if (Zeus.getPlugin(str).mUseMemoryForActivityIntent && longExtra == 0) {
            longExtra = System.currentTimeMillis();
        }
        if (longExtra != 0) {
            Bundle extras = intent.getExtras();
            intent.replaceExtras((Bundle) null);
            hp(longExtra, extras);
            intent.putExtra("pangle_use_memory", longExtra);
        }
    }

    @Keep
    public static void setUseMemory(Intent intent) {
        intent.putExtra("pangle_use_memory", System.currentTimeMillis());
    }

    private static void hp(long j2, Bundle bundle) {
        hp.put(Long.valueOf(j2), new WeakReference<>(bundle));
    }

    public static void hp(Intent intent) {
        Bundle bundleHp;
        long longExtra = intent.getLongExtra("pangle_use_memory", 0L);
        if (longExtra == 0 || (bundleHp = hp(longExtra)) == null) {
            return;
        }
        intent.putExtras(bundleHp);
    }

    private static Bundle hp(long j2) {
        WeakReference<Bundle> weakReferenceRemove = hp.remove(Long.valueOf(j2));
        if (weakReferenceRemove != null) {
            return weakReferenceRemove.get();
        }
        return null;
    }
}
