package com.byazt.anq;

import android.view.LayoutInflater;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;

@com.byazt.kj.hp(hp = {0, 1, 1051, 34})
/* loaded from: classes2.dex */
public class l {
    public static void hp(LayoutInflater layoutInflater) {
        try {
            FieldUtils.writeField(layoutInflater, "mFactory", (Object) null);
        } catch (Throwable unused) {
            ZeusLogger.w(ZeusLogger.TAG_RESOURCES, "clearFactory failed.");
        }
        try {
            FieldUtils.writeField(layoutInflater, "mFactory2", (Object) null);
        } catch (Throwable unused2) {
            ZeusLogger.w(ZeusLogger.TAG_RESOURCES, "clearFactory failed.");
        }
    }
}
