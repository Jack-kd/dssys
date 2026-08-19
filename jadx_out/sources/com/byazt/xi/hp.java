package com.byazt.xi;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 703, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final PluginValueSet hp = hp(0).l();

    /* renamed from: l, reason: collision with root package name */
    public static final Function<SparseArray<Object>, Object> f27665l = new C0406hp();

    /* renamed from: j, reason: collision with root package name */
    public PluginValueSet f27666j;
    public final SparseArray<Object> jx;

    @com.byazt.kj.hp(hp = {0, 1, 703, 170})
    /* renamed from: com.byazt.xi.hp$hp, reason: collision with other inner class name */
    public static final class C0406hp<T, R> implements Function<T, R> {
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

        private C0406hp() {
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 703, 255})
    public static final class l implements PluginValueSet {
        public final SparseArray<Object> hp;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public PluginValueSet f27667l;

        private boolean hp() {
            return com.byazt.nn.hp.hp().l() >= 6803 && com.byazt.nn.hp.hp().l() < 7000;
        }

        private boolean l() {
            if (this.hp instanceof com.byazt.fp.hp) {
                return true;
            }
            PluginValueSet pluginValueSet = this.f27667l;
            return pluginValueSet != null && (pluginValueSet.sparseArray() instanceof com.byazt.fp.hp);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public <T> T[] arrayValue(int i2, Class<T> cls) {
            Object obj = this.hp.get(i2);
            if (obj == null) {
                PluginValueSet pluginValueSet = this.f27667l;
                if (pluginValueSet != null) {
                    return (T[]) pluginValueSet.arrayValue(i2, cls);
                }
                return null;
            }
            Class<?> cls2 = obj.getClass();
            if (cls2.isArray() && cls.isAssignableFrom(cls2.getComponentType())) {
                return (T[]) ((Object[]) obj);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean booleanValue(int i2) {
            return booleanValue(i2, false);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean containsKey(int i2) {
            PluginValueSet pluginValueSet;
            int iIndexOfKey = this.hp.indexOfKey(i2);
            return (iIndexOfKey >= 0 || (pluginValueSet = this.f27667l) == null) ? iIndexOfKey >= 0 : pluginValueSet.containsKey(i2);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public double doubleValue(int i2) {
            PluginValueSet pluginValueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (pluginValueSet = this.f27667l) != null) {
                return pluginValueSet.doubleValue(i2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            if (obj instanceof Double) {
                return ((Double) obj).doubleValue();
            }
            return 0.0d;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public float floatValue(int i2) {
            return floatValue(i2, 0.0f);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public int intValue(int i2) {
            return intValue(i2, 0);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean isEmpty() {
            return size() <= 0;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public Set<Integer> keys() {
            int size = this.hp.size();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < size; i2++) {
                hashSet.add(Integer.valueOf(this.hp.keyAt(i2)));
            }
            PluginValueSet pluginValueSet = this.f27667l;
            if (pluginValueSet != null) {
                hashSet.addAll(pluginValueSet.keys());
            }
            this.jx = hashSet.size();
            return hashSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public long longValue(int i2) {
            return longValue(i2, 0L);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public <T> T objectValue(int i2, Class<T> cls) {
            Supplier supplier = (T) this.hp.get(i2);
            if (supplier == null) {
                PluginValueSet pluginValueSet = this.f27667l;
                if (pluginValueSet != null) {
                    return (T) pluginValueSet.objectValue(i2, cls);
                }
                return null;
            }
            if (hp(supplier)) {
                supplier = (T) supplier.get();
            }
            if (cls.isInstance(supplier)) {
                return (T) supplier;
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public void remove(int i2) {
            this.hp.remove(i2);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public int size() {
            if (this.jx < 0) {
                keys();
            }
            return this.jx;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public SparseArray<Object> sparseArray() {
            SparseArray<Object> sparseArray;
            if (com.byazt.nn.hp.hp().l() < 6803 && l()) {
                return new com.byazt.fp.hp(this);
            }
            SparseArray<Object> sparseArray2 = new SparseArray<>();
            PluginValueSet pluginValueSet = this.f27667l;
            if (pluginValueSet != null && (sparseArray = pluginValueSet.sparseArray()) != null && sparseArray.size() > 0) {
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

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public String stringValue(int i2) {
            return stringValue(i2, null);
        }

        private l(SparseArray<Object> sparseArray, PluginValueSet pluginValueSet) {
            this.jx = -1;
            this.hp = sparseArray;
            this.f27667l = pluginValueSet;
        }

        private boolean hp(Object obj) {
            return hp() ? (!(obj instanceof Supplier) || (obj instanceof Function) || (obj instanceof ValueSet)) ? false : true : (obj instanceof Supplier) && !(obj instanceof Function);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean booleanValue(int i2, boolean z2) {
            PluginValueSet pluginValueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (pluginValueSet = this.f27667l) != null) {
                return pluginValueSet.booleanValue(i2, z2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z2;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public float floatValue(int i2, float f2) {
            PluginValueSet pluginValueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (pluginValueSet = this.f27667l) != null) {
                return pluginValueSet.floatValue(i2, f2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Float ? ((Float) obj).floatValue() : f2;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public int intValue(int i2, int i3) {
            PluginValueSet pluginValueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (pluginValueSet = this.f27667l) != null) {
                return pluginValueSet.intValue(i2, i3);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Integer ? ((Integer) obj).intValue() : i3;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public long longValue(int i2, long j2) {
            PluginValueSet pluginValueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (pluginValueSet = this.f27667l) != null) {
                return pluginValueSet.longValue(i2, j2);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof Long ? ((Long) obj).longValue() : j2;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public String stringValue(int i2, String str) {
            PluginValueSet pluginValueSet;
            Object obj = this.hp.get(i2);
            if (obj == null && (pluginValueSet = this.f27667l) != null) {
                return pluginValueSet.stringValue(i2, str);
            }
            if (obj instanceof Supplier) {
                obj = ((Supplier) obj).get();
            }
            return obj instanceof String ? obj.toString() : str;
        }
    }

    private hp(SparseArray<Object> sparseArray, PluginValueSet pluginValueSet) {
        this.jx = sparseArray;
        this.f27666j = pluginValueSet;
    }

    public static final hp hp() {
        return new hp(new SparseArray());
    }

    public PluginValueSet l() {
        return new l(this.jx, this.f27666j);
    }

    public static final hp hp(int i2) {
        return new hp(new SparseArray(i2));
    }

    public static final hp hp(SparseArray<Object> sparseArray) {
        return new hp(sparseArray);
    }

    private hp(SparseArray<Object> sparseArray) {
        this.jx = sparseArray == null ? new SparseArray<>() : sparseArray;
    }

    public static final hp hp(PluginValueSet pluginValueSet) {
        return new hp(new SparseArray(), pluginValueSet);
    }

    public hp hp(int i2, Object obj) {
        this.jx.put(i2, obj);
        return this;
    }

    public hp hp(int i2, String str) {
        this.jx.put(i2, str);
        return this;
    }

    public hp hp(int i2, int i3) {
        this.jx.put(i2, Integer.valueOf(i3));
        return this;
    }

    public hp hp(int i2, double d2) {
        this.jx.put(i2, Double.valueOf(d2));
        return this;
    }

    public hp hp(int i2, boolean z2) {
        this.jx.put(i2, Boolean.valueOf(z2));
        return this;
    }

    public hp hp(int i2, float f2) {
        this.jx.put(i2, Float.valueOf(f2));
        return this;
    }
}
