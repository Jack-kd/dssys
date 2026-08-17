package com.byazt.xi;

import android.annotation.TargetApi;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 703, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final ValueSet hp = hp(0).l();
    public static final Function<SparseArray<Object>, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public static final Bridge f27668l;

    /* renamed from: j, reason: collision with root package name */
    public final SparseArray<Object> f27669j;

    /* renamed from: w, reason: collision with root package name */
    public ValueSet f27670w;

    @com.byazt.kj.hp(hp = {0, 1, 703, 219})
    public static final class hp implements Bridge {
        private hp() {
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i2, ValueSet valueSet, Class<T> cls) {
            if (cls == Boolean.class || cls == Boolean.TYPE) {
                return (T) Boolean.FALSE;
            }
            if (cls == Integer.TYPE || cls == Integer.class) {
                return (T) 0;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                return (T) 0L;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return (T) Double.valueOf(0.0d);
            }
            if (cls == Float.TYPE || cls == Float.class) {
                return (T) Float.valueOf(0.0f);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            return jx.hp;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 703, 1055})
    /* renamed from: com.byazt.xi.jx$jx, reason: collision with other inner class name */
    public static final class C0407jx implements ValueSet {
        public final SparseArray<Object> hp;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public ValueSet f27671l;

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public <T> T[] arrayValue(int i2, Class<T> cls) {
            Object obj = this.hp.get(i2);
            if (obj == null) {
                ValueSet valueSet = this.f27671l;
                if (valueSet != null) {
                    return (T[]) valueSet.arrayValue(i2, cls);
                }
                return null;
            }
            Class<?> cls2 = obj.getClass();
            if (cls2.isArray() && cls.isAssignableFrom(cls2.getComponentType())) {
                return (T[]) ((Object[]) obj);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean booleanValue(int i2) {
            return booleanValue(i2, false);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean containsKey(int i2) {
            ValueSet valueSet;
            int iIndexOfKey = this.hp.indexOfKey(i2);
            return (iIndexOfKey >= 0 || (valueSet = this.f27671l) == null) ? iIndexOfKey >= 0 : valueSet.containsKey(i2);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public double doubleValue(int i2) {
            ValueSet valueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (valueSet = this.f27671l) != null) {
                return valueSet.doubleValue(i2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            if (obj instanceof Double) {
                return ((Double) obj).doubleValue();
            }
            return 0.0d;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public float floatValue(int i2) {
            return floatValue(i2, 0.0f);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int intValue(int i2) {
            return intValue(i2, 0);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean isEmpty() {
            return size() <= 0;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public Set<Integer> keys() {
            int size = this.hp.size();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < size; i2++) {
                hashSet.add(Integer.valueOf(this.hp.keyAt(i2)));
            }
            ValueSet valueSet = this.f27671l;
            if (valueSet != null) {
                hashSet.addAll(valueSet.keys());
            }
            this.jx = hashSet.size();
            return hashSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public long longValue(int i2) {
            return longValue(i2, 0L);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public <T> T objectValue(int i2, Class<T> cls) {
            Supplier supplier = (T) this.hp.get(i2);
            if (supplier == null) {
                ValueSet valueSet = this.f27671l;
                if (valueSet != null) {
                    return (T) valueSet.objectValue(i2, cls);
                }
                return null;
            }
            if (supplier instanceof Supplier) {
                supplier = (T) supplier.get();
            }
            if (cls.isInstance(supplier)) {
                return (T) supplier;
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public void remove(int i2) {
            this.hp.remove(i2);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int size() {
            if (this.jx < 0) {
                keys();
            }
            return this.jx;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public SparseArray<Object> sparseArray() {
            SparseArray<Object> sparseArray;
            SparseArray<Object> sparseArray2 = new SparseArray<>();
            ValueSet valueSet = this.f27671l;
            if (valueSet != null && (sparseArray = valueSet.sparseArray()) != null && sparseArray.size() > 0) {
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    sparseArray2.put(sparseArray.keyAt(i2), sparseArray.valueAt(i2));
                }
            }
            SparseArray<Object> sparseArray3 = this.hp;
            if (sparseArray3 != null && sparseArray3.size() > 0) {
                for (int i3 = 0; i3 < this.hp.size(); i3++) {
                    sparseArray2.put(this.hp.keyAt(i3), this.hp.valueAt(i3));
                }
            }
            return sparseArray2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public String stringValue(int i2) {
            return stringValue(i2, null);
        }

        private C0407jx(SparseArray<Object> sparseArray, ValueSet valueSet) {
            this.jx = -1;
            this.hp = sparseArray;
            this.f27671l = valueSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean booleanValue(int i2, boolean z2) {
            ValueSet valueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (valueSet = this.f27671l) != null) {
                return valueSet.booleanValue(i2, z2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public float floatValue(int i2, float f2) {
            ValueSet valueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (valueSet = this.f27671l) != null) {
                return valueSet.floatValue(i2, f2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Float ? ((Float) obj).floatValue() : f2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int intValue(int i2, int i3) {
            ValueSet valueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (valueSet = this.f27671l) != null) {
                return valueSet.intValue(i2, i3);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Integer ? ((Integer) obj).intValue() : i3;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public long longValue(int i2, long j2) {
            ValueSet valueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (valueSet = this.f27671l) != null) {
                return valueSet.longValue(i2, j2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Long ? ((Long) obj).longValue() : j2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public String stringValue(int i2, String str) {
            ValueSet valueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (valueSet = this.f27671l) != null) {
                return valueSet.stringValue(i2, str);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof String ? obj.toString() : str;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 703, 224})
    @TargetApi(24)
    public static final class l<T, R> implements Function<T, R> {
        private l() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.function.Function
        public R apply(T t2) {
            if (!(t2 instanceof SparseArray)) {
                return null;
            }
            Class cls = (Class) ((SparseArray) t2).get(-99999985);
            if (cls == Boolean.class || cls == Boolean.TYPE) {
                return (R) Boolean.FALSE;
            }
            if (cls == Integer.TYPE || cls == Integer.class) {
                return (R) 0;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                return (R) 0L;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return (R) Double.valueOf(0.0d);
            }
            if (cls == Float.TYPE || cls == Float.class) {
                return (R) Float.valueOf(0.0f);
            }
            return null;
        }
    }

    static {
        f27668l = new hp();
        jx = new l();
    }

    private jx(SparseArray<Object> sparseArray) {
        this.f27669j = sparseArray == null ? new SparseArray<>() : sparseArray;
    }

    public static final jx hp() {
        return new jx(new SparseArray());
    }

    public ValueSet l() {
        return new C0407jx(this.f27669j, this.f27670w);
    }

    public static final jx hp(int i2) {
        return new jx(new SparseArray(i2));
    }

    public static final jx hp(SparseArray<Object> sparseArray) {
        return new jx(sparseArray);
    }

    public jx hp(int i2, Object obj) {
        this.f27669j.put(i2, obj);
        return this;
    }

    public jx hp(int i2, String str) {
        this.f27669j.put(i2, str);
        return this;
    }

    public jx hp(int i2, int i3) {
        this.f27669j.put(i2, Integer.valueOf(i3));
        return this;
    }

    public jx hp(int i2, double d2) {
        this.f27669j.put(i2, Double.valueOf(d2));
        return this;
    }

    public jx hp(int i2, boolean z2) {
        this.f27669j.put(i2, Boolean.valueOf(z2));
        return this;
    }

    public jx hp(int i2, long j2) {
        this.f27669j.put(i2, Long.valueOf(j2));
        return this;
    }

    public jx hp(int i2, float f2) {
        this.f27669j.put(i2, Float.valueOf(f2));
        return this;
    }
}
