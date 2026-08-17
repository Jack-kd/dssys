package com.byazt.da;

import android.util.SparseArray;
import com.byazt.fp.j;
import com.byazt.fp.w;
import com.byazt.xi.jx;
import com.byazt.xi.l;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.LongSupplier;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 844, 28})
/* loaded from: classes2.dex */
public class hp {
    public static Result hp(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        return l.hp().hp(valueSetL.intValue(-999900)).hp(valueSetL.stringValue(-999901)).hp(valueSetL.booleanValue(-999903)).hp(l((SparseArray<Object>) valueSetL.objectValue(-999902, SparseArray.class))).l();
    }

    public static Object j(Object obj) {
        final HashMap map = new HashMap();
        ((Map) obj).forEach(new BiConsumer<Object, Object>() { // from class: com.byazt.da.hp.3
            @Override // java.util.function.BiConsumer
            public void accept(Object obj2, Object obj3) {
                if (obj3 instanceof Bridge) {
                    map.put(obj2, new com.byazt.fp.jx((Bridge) obj3));
                    return;
                }
                if (obj3 instanceof ValueSet) {
                    map.put(obj2, new com.byazt.fp.hp((ValueSet) obj3));
                    return;
                }
                if (obj3 instanceof EventListener) {
                    map.put(obj2, new j((EventListener) obj3));
                    return;
                }
                if (obj3 == Bridge.class) {
                    map.put(obj2, Function.class);
                } else if (obj3 == ValueSet.class) {
                    map.put(obj2, SparseArray.class);
                } else {
                    map.put(obj2, obj3);
                }
            }
        });
        return map;
    }

    public static Object jx(Object obj) {
        final HashMap map = new HashMap();
        ((Map) obj).forEach(new BiConsumer<Object, Object>() { // from class: com.byazt.da.hp.2
            @Override // java.util.function.BiConsumer
            public void accept(Object obj2, Object obj3) {
                if (obj3 instanceof Function) {
                    if ((obj3 instanceof LongSupplier) && ((LongSupplier) obj3).getAsLong() == -99999981) {
                        map.put(obj2, new w((Function) obj3));
                        return;
                    } else {
                        map.put(obj2, new com.byazt.fp.l((Function) obj3));
                        return;
                    }
                }
                if (obj3 instanceof SparseArray) {
                    map.put(obj2, hp.l((SparseArray<Object>) obj3));
                    return;
                }
                if (obj3 == Function.class) {
                    map.put(obj2, Bridge.class);
                } else if (obj3 == SparseArray.class) {
                    map.put(obj2, ValueSet.class);
                } else {
                    map.put(obj2, obj3);
                }
            }
        });
        return map;
    }

    public static ValueSet l(SparseArray<Object> sparseArray) {
        SparseArray<Object> sparseArrayHp;
        if (sparseArray == null) {
            return null;
        }
        jx jxVarHp = jx.hp();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            int iKeyAt = sparseArray.keyAt(i2);
            hp(jxVarHp, iKeyAt, sparseArray.get(iKeyAt));
        }
        if ((sparseArray instanceof com.byazt.wi.hp) && (sparseArrayHp = ((com.byazt.wi.hp) sparseArray).hp()) != null && sparseArrayHp.size() > 0) {
            for (int i3 = 0; i3 < sparseArrayHp.size(); i3++) {
                int iKeyAt2 = sparseArrayHp.keyAt(i3);
                hp(jxVarHp, iKeyAt2, sparseArrayHp.get(iKeyAt2));
            }
        }
        return jxVarHp.l();
    }

    private static void hp(jx jxVar, int i2, final Object obj) {
        if (obj instanceof Function) {
            if ((obj instanceof LongSupplier) && ((LongSupplier) obj).getAsLong() == -99999981) {
                jxVar.hp(i2, new w((Function) obj));
                return;
            } else {
                jxVar.hp(i2, new com.byazt.fp.l((Function) obj));
                return;
            }
        }
        if (obj instanceof SparseArray) {
            if (i2 == -99999979) {
                jxVar.hp(i2, hp((SparseArray<Object>) obj));
                return;
            } else {
                jxVar.hp(i2, l((SparseArray<Object>) obj));
                return;
            }
        }
        if ((obj instanceof Supplier) && !(obj instanceof Function) && !(obj instanceof ValueSet)) {
            jxVar.hp(i2, new Supplier<Object>() { // from class: com.byazt.da.hp.1
                @Override // java.util.function.Supplier
                public Object get() {
                    return hp.l(((Supplier) obj).get());
                }
            });
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (!list.isEmpty() && (list.get(0) instanceof Function)) {
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new com.byazt.fp.l((Function) it.next()));
                }
                jxVar.hp(i2, arrayList);
                return;
            }
            jxVar.hp(i2, obj);
            return;
        }
        if (obj instanceof Map) {
            jxVar.hp(i2, jx(obj));
        } else {
            jxVar.hp(i2, obj);
        }
    }

    public static Object l(Object obj) {
        if (obj instanceof Function) {
            return new com.byazt.fp.l((Function) obj);
        }
        if (obj instanceof SparseArray) {
            return l((SparseArray<Object>) obj);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.isEmpty() || !(list.get(0) instanceof Function)) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.byazt.fp.l((Function) it.next()));
            }
            return arrayList;
        }
        if (obj instanceof Map) {
            return jx(obj);
        }
        if (obj == Function.class) {
            return Bridge.class;
        }
        return obj == SparseArray.class ? ValueSet.class : obj;
    }

    public static SparseArray<Object> hp(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return new SparseArray<>();
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            return (SparseArray) objApply;
        }
        return new SparseArray<>();
    }

    public static Object hp(Object obj) {
        if (obj instanceof Bridge) {
            return new com.byazt.fp.jx((Bridge) obj);
        }
        if (obj instanceof ValueSet) {
            return new com.byazt.fp.hp((ValueSet) obj);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.isEmpty() || !(list.get(0) instanceof Bridge)) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.byazt.fp.jx((Bridge) it.next()));
            }
            return arrayList;
        }
        if (obj instanceof Map) {
            return j(obj);
        }
        if (obj == Bridge.class) {
            return Function.class;
        }
        return obj == ValueSet.class ? SparseArray.class : obj;
    }

    public static SparseArray<Object> hp(Result result) {
        if (result == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-999900, Integer.valueOf(result.code()));
        sparseArray.put(-999901, result.message());
        sparseArray.put(-999903, Boolean.valueOf(result.isSuccess()));
        sparseArray.put(-999902, new com.byazt.fp.hp(result.values()));
        return sparseArray;
    }
}
