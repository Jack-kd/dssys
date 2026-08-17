package com.kuaishou.weapon.p0.jni;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.kuaishou.weapon.p0.bf;
import com.kuaishou.weapon.p0.bn;
import com.kuaishou.weapon.p0.bo;
import com.kuaishou.weapon.p0.ci;
import com.kuaishou.weapon.p0.dd;
import com.kuaishou.weapon.p0.h;
import java.lang.reflect.Member;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class Engine {
    private static volatile Engine instance = null;
    public static volatile int loadSoCount = 0;
    public static volatile boolean loadSuccess = false;
    public static volatile String soPath;
    public static volatile String soVersion;

    public static native String abc();

    public static native String bcd();

    public static synchronized Engine getInstance(Context context) {
        try {
            if (!TextUtils.isEmpty(soVersion) && !loadSuccess && instance == null) {
                if (instance == null) {
                    instance = new Engine();
                }
                h hVarA = h.a(context, "re_po_rt");
                try {
                } catch (Throwable th) {
                    loadSuccess = false;
                    try {
                        HashMap map = new HashMap();
                        map.put("e", th.getMessage());
                        map.put("v", soVersion);
                        map.put("l", ci.f30967k);
                        bf.a(context, ci.f30958b, map);
                    } catch (Exception unused) {
                    }
                }
                if (!bn.a(context, bo.f30890d + soVersion.replace(i.f2495E, "") + ".so")) {
                    loadSuccess = false;
                    return instance;
                }
                String strB = hVarA.b(dd.f31111f, "");
                if (TextUtils.isEmpty(strB)) {
                    strB = soVersion;
                    hVarA.c(dd.f31111f, strB, false);
                }
                loadSoCount = hVarA.c(dd.bg);
                if (!TextUtils.equals(strB, soVersion)) {
                    String str = soVersion;
                    loadSoCount = 0;
                    hVarA.c(dd.f31111f, str, false);
                }
                if (loadSoCount + 1 < 10) {
                    loadSoCount++;
                    hVarA.d(dd.bg, loadSoCount);
                    System.loadLibrary(bo.f30890d + soVersion.replace(i.f2495E, ""));
                    bcd();
                    loadSoCount = 0;
                    loadSuccess = true;
                }
                hVarA.d(dd.bg, loadSoCount);
            }
            return instance;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static native int mmo(Member member, int i2, int i3);

    public static native int mqc(Member member, int i2);

    public static native int off();

    public static native String tao(int i2, long j2, Object obj);

    public native byte[] ac(byte[] bArr, byte[] bArr2);

    public native byte[] ar(byte[] bArr, byte[] bArr2);

    public native String cde();

    public native byte[] dc(byte[] bArr, byte[] bArr2);

    public native String def();

    public native byte[] dr(byte[] bArr, byte[] bArr2);

    public native String efg();

    public native String eopq(int i2, int i3, int i4, String str);

    public native String fgh();

    public native String ghi();

    public native String hij();

    public native String klm(int i2, String str);

    public native String nop();

    public native String pqr(int i2, int i3, int i4, String str);

    public native String qrs();

    public native String stu(int i2, int i3, int i4, int i5, String str);
}
