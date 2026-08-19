package com.beizi.fusion;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class wa implements nd {
    @Override // com.beizi.fusion.nd
    public Map<String, String> getMacrosReplaceMap() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        List<Field> listB = sl.b(getClass());
        if (listB.isEmpty()) {
            return null;
        }
        HashMap map = new HashMap((int) ((listB.size() / 0.75d) + 1.0d));
        for (Field field : listB) {
            field.setAccessible(true);
            try {
                uh uhVar = (uh) field.getAnnotation(uh.class);
                if (uhVar != null) {
                    String strMacros = uhVar.macros();
                    Object obj = field.get(this);
                    map.put(strMacros, obj != null ? obj.toString() : "");
                } else {
                    Object obj2 = field.get(this);
                    if (obj2 instanceof nd) {
                        map.putAll(((nd) obj2).getMacrosReplaceMap());
                    }
                }
            } catch (IllegalAccessException e2) {
                rm.a(e2);
            }
        }
        return map;
    }
}
