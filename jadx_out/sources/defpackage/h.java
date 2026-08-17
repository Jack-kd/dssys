package defpackage;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.B;
import kotlin.collections.m;
import kotlin.collections.q;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final h f50717a = new h();

    public final boolean a(Object obj, Object obj2) {
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        if ((obj instanceof int[]) && (obj2 instanceof int[])) {
            return Arrays.equals((int[]) obj, (int[]) obj2);
        }
        if ((obj instanceof long[]) && (obj2 instanceof long[])) {
            return Arrays.equals((long[]) obj, (long[]) obj2);
        }
        if ((obj instanceof double[]) && (obj2 instanceof double[])) {
            return Arrays.equals((double[]) obj, (double[]) obj2);
        }
        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
            Object[] objArr = (Object[]) obj;
            Object[] objArr2 = (Object[]) obj2;
            if (objArr.length == objArr2.length) {
                Iterable iterableF = m.F(objArr);
                if (!(iterableF instanceof Collection) || !((Collection) iterableF).isEmpty()) {
                    Iterator it = iterableF.iterator();
                    while (it.hasNext()) {
                        int iNextInt = ((B) it).nextInt();
                        if (!f50717a.a(objArr[iNextInt], objArr2[iNextInt])) {
                        }
                    }
                }
                return true;
            }
            return false;
        }
        if ((obj instanceof List) && (obj2 instanceof List)) {
            List list = (List) obj;
            List list2 = (List) obj2;
            if (list.size() == list2.size()) {
                Iterable iterableM = q.m((Collection) obj);
                if (!(iterableM instanceof Collection) || !((Collection) iterableM).isEmpty()) {
                    Iterator it2 = iterableM.iterator();
                    while (it2.hasNext()) {
                        int iNextInt2 = ((B) it2).nextInt();
                        if (!f50717a.a(list.get(iNextInt2), list2.get(iNextInt2))) {
                        }
                    }
                }
                return true;
            }
            return false;
        }
        if (!(obj instanceof Map) || !(obj2 instanceof Map)) {
            return j.a(obj, obj2);
        }
        Map map = (Map) obj;
        Map map2 = (Map) obj2;
        if (map.size() == map2.size()) {
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!map2.containsKey(entry.getKey()) || !f50717a.a(entry.getValue(), map2.get(entry.getKey()))) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final List b(Throwable exception) {
        j.e(exception, "exception");
        if (exception instanceof WakelockPlusFlutterError) {
            WakelockPlusFlutterError wakelockPlusFlutterError = (WakelockPlusFlutterError) exception;
            return q.o(wakelockPlusFlutterError.getCode(), wakelockPlusFlutterError.getMessage(), wakelockPlusFlutterError.getDetails());
        }
        return q.o(exception.getClass().getSimpleName(), exception.toString(), "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    }
}
