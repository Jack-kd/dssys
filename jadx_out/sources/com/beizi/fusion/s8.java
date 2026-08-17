package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class s8 {

    /* renamed from: a, reason: collision with root package name */
    private static final Map f16223a = new ConcurrentHashMap();

    public static lg a(ib ibVar, boolean z2) {
        return b(ibVar, z2);
    }

    private static lg b(ib ibVar, boolean z2) {
        ng ngVar;
        if (ibVar == null) {
            return null;
        }
        Field[] fieldArrA = a(ibVar.getClass());
        lg lgVar = new lg();
        for (Field field : fieldArrA) {
            if (field != null && (ngVar = (ng) field.getAnnotation(ng.class)) != null && !ngVar.exclude()) {
                Class<?> type = field.getType();
                String strKey = ngVar.key();
                Object objA = sl.a(ibVar, field);
                if (!z2) {
                    a(lgVar, strKey, objA, type, z2);
                } else if (objA != null) {
                    if (!(objA instanceof String)) {
                        a(lgVar, strKey, objA, type, z2);
                    } else if (!TextUtils.isEmpty(objA.toString())) {
                        a(lgVar, strKey, objA, type, z2);
                    }
                }
            }
        }
        return lgVar;
    }

    public static byte[] a(ig igVar) throws IOException {
        if (igVar != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.UTF_8);
                    try {
                        new r8().a(igVar, outputStreamWriter);
                        outputStreamWriter.close();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        return byteArray;
                    } finally {
                    }
                } finally {
                }
            } catch (IOException unused) {
            }
        }
        return new byte[0];
    }

    private static void a(lg lgVar, String str, Object obj, Class cls, boolean z2) {
        if (String.class.isAssignableFrom(cls)) {
            lgVar.a(str, obj != null ? obj.toString() : "");
            return;
        }
        if (Number.class.isAssignableFrom(cls)) {
            lgVar.a(str, obj != null ? (Number) obj : 0);
            return;
        }
        if (List.class.isAssignableFrom(cls)) {
            lgVar.a(str, a(obj, z2));
        } else if (cls.isArray()) {
            lgVar.a(str, a(obj, z2));
        } else if (ib.class.isAssignableFrom(cls)) {
            lgVar.a(str, ((ib) obj).getAnalyseGsonObject());
        }
    }

    private static hg a(Object obj, boolean z2) {
        List listAsList;
        if (obj != null) {
            if (obj instanceof List) {
                listAsList = (List) obj;
            } else {
                listAsList = obj.getClass().isArray() ? Arrays.asList((Object[]) obj) : null;
            }
            if (listAsList != null) {
                hg hgVar = new hg();
                for (Object obj2 : listAsList) {
                    if (obj2 != null) {
                        a(hgVar, obj2, obj2.getClass(), z2);
                    }
                }
                return hgVar;
            }
        }
        return new hg();
    }

    private static void a(hg hgVar, Object obj, Class cls, boolean z2) {
        if (String.class.isAssignableFrom(cls)) {
            hgVar.a(obj.toString());
        } else if (Number.class.isAssignableFrom(cls)) {
            hgVar.a((Number) obj);
        } else if (obj instanceof ib) {
            hgVar.a(((ib) obj).getAnalyseGsonObject());
        }
    }

    private static Field[] a(Class cls) {
        Field[] fieldArr = (Field[]) f16223a.get(cls);
        if (fieldArr != null) {
            return fieldArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Class superclass = cls; superclass != null && !superclass.equals(AnalyseBasicReceiveLog.class) && !superclass.equals(Object.class); superclass = superclass.getSuperclass()) {
            arrayList.addAll(Arrays.asList(superclass.getDeclaredFields()));
        }
        Field[] fieldArr2 = (Field[]) arrayList.toArray(new Field[0]);
        f16223a.put(cls, fieldArr2);
        return fieldArr2;
    }
}
