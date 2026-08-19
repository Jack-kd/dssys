package com.smartdigimkt.f;

import android.util.Log;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class t {
    public static Object[] a(Object obj, ArrayList arrayList, File file, ArrayList arrayList2) throws NoSuchMethodException, SecurityException {
        Method methodA;
        try {
            methodA = m.a(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class);
        } catch (NoSuchMethodException unused) {
            Log.e("sdm_plugin", "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure");
            try {
                methodA = m.a(obj, "makeDexElements", List.class, File.class, List.class);
            } catch (NoSuchMethodException e2) {
                Log.e("sdm_plugin", "NoSuchMethodException: makeDexElements(List,File,List) failure");
                throw e2;
            }
        }
        return (Object[]) methodA.invoke(obj, arrayList, file, arrayList2);
    }
}
