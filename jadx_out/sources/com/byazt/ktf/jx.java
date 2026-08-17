package com.byazt.ktf;

import android.util.SparseArray;
import com.byazt.ymw.u;
import com.bytedance.sdk.openadsdk.TTC;
import com.bytedance.sdk.openadsdk.TTILog;
import com.bytedance.sdk.openadsdk.TTM;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 959, 30})
/* loaded from: classes.dex */
public class jx {

    public interface hp {
        void hp();

        void hp(String str, String str2);

        void hp(String str, String str2, Throwable th);

        void hp(String str, Throwable th);

        void j(String str, String str2);

        void jx(String str, String str2);

        void l(String str, String str2);
    }

    public static void hp(Object obj) {
        try {
            if (!l(obj)) {
                if (obj != null) {
                    hp(null, obj, j(obj), false);
                    return;
                }
                return;
            }
            Function function = (Function) obj;
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, -8999924);
            sparseArray.put(-99999985, Object.class);
            Object objApply = function.apply(sparseArray);
            if (objApply != null) {
                SparseArray sparseArray2 = new SparseArray();
                sparseArray2.put(-99999987, -8999923);
                sparseArray2.put(-99999985, String.class);
                hp(function, objApply, (String) function.apply(sparseArray2), true);
            }
        } catch (Throwable th) {
            Objects.toString(obj);
            th.getMessage();
        }
    }

    private static String j(Object obj) {
        if (obj == null) {
            return "";
        }
        TTC ttc = obj instanceof Class ? (TTC) ((Class) obj).getAnnotation(TTC.class) : (TTC) obj.getClass().getAnnotation(TTC.class);
        return ttc == null ? "" : ttc.value();
    }

    public static void jx(Object obj) {
        String strJ = "";
        try {
            if (l(obj)) {
                SparseArray sparseArray = new SparseArray();
                sparseArray.put(-99999987, -8999923);
                sparseArray.put(-99999985, String.class);
                strJ = (String) ((Function) obj).apply(sparseArray);
            } else {
                TTC ttc = (TTC) obj.getClass().getAnnotation(TTC.class);
                if (ttc != null) {
                    strJ = j(ttc);
                }
            }
        } catch (Throwable unused) {
        }
        strJ.getClass();
        if (strJ.equals(TKDownloadReason.KSAD_TK_NET)) {
            com.byazt.qxx.jx.hp = null;
        }
    }

    public static boolean l(Object obj) {
        Boolean bool;
        if (obj == null || !(obj instanceof Function)) {
            return false;
        }
        try {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, -99999986);
            sparseArray.put(-99999985, SparseArray.class);
            SparseArray sparseArray2 = (SparseArray) ((Function) obj).apply(sparseArray);
            if (sparseArray2 != null && (bool = (Boolean) sparseArray2.get(-99999978)) != null) {
                if (bool.booleanValue()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @com.byazt.kj.hp(hp = {0, 1, 959, 224})
    public static class l implements hp {
        public Object hp;

        /* renamed from: l, reason: collision with root package name */
        public Function f22190l;

        public l(Object obj) {
            this.hp = obj;
        }

        @Override // com.byazt.ktf.jx.hp
        public void hp(String str, String str2) {
            if (this.f22190l != null) {
                hp(-8999900, str, str2, null);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).v(str, str2);
            }
        }

        @Override // com.byazt.ktf.jx.hp
        public void j(String str, String str2) {
            if (this.f22190l != null) {
                hp(-8999905, str, str2, null);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).e(str, str2);
            }
        }

        @Override // com.byazt.ktf.jx.hp
        public void jx(String str, String str2) {
            if (this.f22190l != null) {
                hp(-8999902, str, str2, null);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).i(str, str2);
            }
        }

        @Override // com.byazt.ktf.jx.hp
        public void l(String str, String str2) {
            if (this.f22190l != null) {
                hp(-8999901, str, str2, null);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).d(str, str2);
            }
        }

        public l(Function<SparseArray<Object>, Object> function) {
            this.f22190l = function;
        }

        @Override // com.byazt.ktf.jx.hp
        public void hp(String str, String str2, Throwable th) {
            if (this.f22190l != null) {
                hp(-8999905, str, str2, th);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).e(str, str2, th);
            }
        }

        @Override // com.byazt.ktf.jx.hp
        public void hp(String str, Throwable th) {
            if (this.f22190l != null) {
                hp(-8999905, str, null, th);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).e(str, th);
            }
        }

        @Override // com.byazt.ktf.jx.hp
        public void hp() {
            if (this.f22190l != null) {
                SparseArray sparseArray = new SparseArray();
                sparseArray.put(-99999987, -8999907);
                sparseArray.put(-99999985, Void.class);
                this.f22190l.apply(sparseArray);
            }
            Object obj = this.hp;
            if (obj != null) {
                ((TTILog) obj).flush();
            }
        }

        private void hp(int i2, String str, String str2, Throwable th) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, Integer.valueOf(i2));
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(-8999920, str);
            sparseArray.put(-8999921, str2);
            sparseArray.put(-8999922, th);
            this.f22190l.apply(sparseArray);
        }
    }

    private static void l(Function<SparseArray<Object>, Object> function, Object obj, boolean z2) throws SecurityException {
        if (u.jx()) {
            com.byazt.qxx.jx jxVar = new com.byazt.qxx.jx();
            com.byazt.qxx.jx.hp = jxVar;
            try {
                for (Method method : obj.getClass().getDeclaredMethods()) {
                    if (z2) {
                        SparseArray<Object> sparseArray = new SparseArray<>();
                        sparseArray.put(-99999987, -8999909);
                        sparseArray.put(-99999985, Integer.class);
                        sparseArray.put(-8999925, method);
                        Integer num = (Integer) function.apply(sparseArray);
                        if (num != null) {
                            method.setAccessible(true);
                            jxVar.hp(num.intValue(), method);
                        }
                    } else {
                        TTM ttm = (TTM) method.getAnnotation(TTM.class);
                        if (ttm != null) {
                            method.setAccessible(true);
                            jxVar.hp(ttm.value(), method);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            jxVar.hp(obj);
        }
    }

    private static void hp(Function<SparseArray<Object>, Object> function, Object obj, String str, boolean z2) throws SecurityException {
        if (obj == null) {
            return;
        }
        str.getClass();
        if (str.equals("log")) {
            hp(function, obj, z2);
        } else if (str.equals(TKDownloadReason.KSAD_TK_NET)) {
            l(function, obj, z2);
        }
        obj.toString();
    }

    private static void hp(Function<SparseArray<Object>, Object> function, Object obj, boolean z2) {
        try {
            if (z2) {
                com.byazt.oz.l.hp((hp) new l(function), true);
            } else if (obj instanceof TTILog) {
                com.byazt.oz.l.hp((hp) new l(obj), true);
            }
        } catch (Throwable unused) {
        }
    }

    public static com.byazt.qxx.l hp(String str) {
        str.getClass();
        if (str.equals(TKDownloadReason.KSAD_TK_NET)) {
            return com.byazt.qxx.jx.hp;
        }
        return null;
    }
}
