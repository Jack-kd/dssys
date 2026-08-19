package com.ubix.ssp.ad.e.a0.y.d;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.ubix.ssp.ad.e.a0.n;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class b extends Instrumentation {

    /* renamed from: a, reason: collision with root package name */
    private final Instrumentation f46503a;

    /* renamed from: b, reason: collision with root package name */
    private Object f46504b;

    /* renamed from: c, reason: collision with root package name */
    final String f46505c = new String(n.a().a("YW5kcm9pZC5hcHAuSW5zdHJ1bWVudGF0aW9u"));

    public b(Instrumentation instrumentation) {
        this.f46503a = instrumentation;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0168 A[Catch: InvocationTargetException -> 0x0031, Exception -> 0x0089, TRY_LEAVE, TryCatch #3 {InvocationTargetException -> 0x0031, blocks: (B:5:0x0014, B:16:0x004c, B:18:0x005e, B:20:0x006c, B:21:0x0086, B:25:0x008b, B:28:0x00a3, B:29:0x00a6, B:30:0x00b6, B:32:0x00bf, B:34:0x00ed, B:35:0x00f3, B:37:0x0100, B:38:0x0105, B:40:0x010a, B:44:0x0118, B:46:0x0124, B:47:0x0126, B:60:0x0154, B:62:0x0168, B:64:0x016e, B:66:0x0172, B:71:0x0180, B:72:0x0183, B:50:0x012d, B:52:0x0139, B:54:0x0141, B:74:0x0189, B:76:0x0197, B:77:0x01b3, B:13:0x0036), top: B:111:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0180 A[Catch: InvocationTargetException -> 0x0031, Exception -> 0x017b, TryCatch #2 {Exception -> 0x017b, blocks: (B:64:0x016e, B:66:0x0172, B:71:0x0180, B:72:0x0183), top: B:113:0x016e }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0224  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.app.Instrumentation.ActivityResult a(boolean r20, android.content.Context r21, android.os.IBinder r22, android.os.IBinder r23, android.app.Activity r24, android.content.Intent[] r25, int r26, android.os.Bundle r27) throws java.lang.IllegalAccessException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.y.d.b.a(boolean, android.content.Context, android.os.IBinder, android.os.IBinder, android.app.Activity, android.content.Intent[], int, android.os.Bundle):android.app.Instrumentation$ActivityResult");
    }

    private Object b(Object obj, int i2, List<Object> list) throws SecurityException {
        Object objB;
        if (obj != null && i2 >= 0 && !list.contains(obj)) {
            list.add(obj);
            if (a(obj)) {
                return obj;
            }
            Class<?> superclass = obj.getClass();
            for (int i3 = 0; i3 < 2 && superclass != null; i3++) {
                for (Field field : superclass.getDeclaredFields()) {
                    try {
                        field.setAccessible(true);
                        objB = b(field.get(obj), i2 - 1, list);
                    } catch (Exception unused) {
                    }
                    if (objB != null) {
                        return objB;
                    }
                }
                superclass = superclass.getSuperclass();
            }
        }
        return null;
    }

    public void execStartActivities(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent[] intentArr, Bundle bundle) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        a(true, context, iBinder, iBinder2, activity, intentArr, 0, bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle) {
        return a(false, context, iBinder, iBinder2, activity, new Intent[]{intent}, i2, bundle);
    }

    public Object findTarget(Object obj) throws SecurityException {
        ArrayList arrayList = new ArrayList();
        Object objA = a(obj, 5, arrayList);
        if (objA != null) {
            return objA;
        }
        arrayList.clear();
        return b(obj, 3, arrayList);
    }

    private Object a(Object obj, int i2, List<Object> list) throws SecurityException {
        Object objA;
        if (obj != null && i2 > 0 && !list.contains(obj)) {
            list.add(obj);
            if (a(obj)) {
                return obj;
            }
            for (Field field : obj.getClass().getDeclaredFields()) {
                try {
                    field.setAccessible(true);
                    objA = a(field.get(obj), i2 - 1, list);
                } catch (Exception unused) {
                }
                if (objA != null) {
                    return objA;
                }
            }
        }
        return null;
    }

    private boolean a(Object obj) {
        if (obj != null) {
            return obj.getClass().getName().equals(this.f46505c);
        }
        return false;
    }
}
