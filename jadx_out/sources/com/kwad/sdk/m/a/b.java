package com.kwad.sdk.m.a;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.utils.ab;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.core.response.a.a {
    public static final String TAG = "Ranger_" + b.class.getSimpleName();
    public Object bne;
    public String bnf;
    public String bng;
    public boolean bnh;

    @NonNull
    public String bni;
    public C0630b bnj;
    public b bnk;

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public String bnl;
        public String bnm;
        public String bnn;
        public List<String> bno;
        public List<a> bnp = new ArrayList();
        public Object bnq;
        public List<Object> bnr;
        public String className;
        public String fieldName;

        private Object TP() {
            Object objHK = null;
            try {
            } catch (Exception e2) {
                c.d(b.TAG, Log.getStackTraceString(e2));
            }
            if (TextUtils.isEmpty(this.className)) {
                c.w(b.TAG, "SpecialParam className is null");
                return null;
            }
            objHK = ab.hK(this.className);
            c.d(b.TAG, "Class.forName(className):" + this.className + " value:" + objHK);
            List<a> list = this.bnp;
            if (list != null && !list.isEmpty()) {
                for (a aVar : this.bnp) {
                    aVar.bnq = objHK;
                    c.d(b.TAG, "param.ob:" + aVar.bnq);
                    try {
                        ab.a(aVar.bnq, aVar.fieldName, aVar.getValue());
                    } catch (Exception e3) {
                        c.d(b.TAG, Log.getStackTraceString(e3));
                    }
                }
            }
            c.d(b.TAG, "return value in special:" + objHK);
            return objHK;
        }

        private Object TQ() throws ClassNotFoundException {
            if (TextUtils.isEmpty(this.bnn)) {
                return ar(this.bnl, this.bnm);
            }
            this.bnr = new ArrayList();
            Iterator<String> it = this.bno.iterator();
            while (it.hasNext()) {
                Object objAr = ar(this.bnn, it.next());
                if (objAr != null) {
                    this.bnr.add(objAr);
                }
            }
            return this.bnr;
        }

        private static Object ar(String str, String str2) throws ClassNotFoundException {
            try {
                Class<?> cls = Class.forName(str);
                if (cls == Integer.class) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                if (cls == Long.class) {
                    return Long.valueOf(Long.parseLong(str2));
                }
                if (cls == Float.class) {
                    return Float.valueOf(Float.parseFloat(str2));
                }
                if (cls == Boolean.class) {
                    return Boolean.valueOf(Boolean.parseBoolean(str2));
                }
                if (cls == Double.class) {
                    return Double.valueOf(Double.parseDouble(str2));
                }
                if (cls == String.class) {
                    return str2;
                }
                return null;
            } catch (Exception e2) {
                c.w(b.TAG, Log.getStackTraceString(e2));
                return null;
            }
        }

        public final Object getValue() {
            return (TextUtils.isEmpty(this.bnl) && TextUtils.isEmpty(this.bnn)) ? TP() : TQ();
        }
    }

    @KsJson
    /* renamed from: com.kwad.sdk.m.a.b$b, reason: collision with other inner class name */
    public static class C0630b extends com.kwad.sdk.core.response.a.a {
        public boolean bns;
        public List<a> bnt;
        public Object[] bnu;
        public String name;

        public final boolean TO() {
            if (!TextUtils.isEmpty(this.name)) {
                return false;
            }
            List<a> list = this.bnt;
            return (list == null || list.isEmpty()) && this.bnu == null;
        }

        public final Object[] TR() {
            List<a> list = this.bnt;
            if (list == null || list.isEmpty()) {
                return null;
            }
            Object[] objArr = new Object[this.bnt.size()];
            for (int i2 = 0; i2 < this.bnt.size(); i2++) {
                objArr[i2] = this.bnt.get(i2).getValue();
            }
            return objArr;
        }
    }

    public final boolean TO() {
        if (this.bne != null || !TextUtils.isEmpty(this.bnf) || !TextUtils.isEmpty(this.bng) || !TextUtils.isEmpty(this.bni)) {
            return false;
        }
        C0630b c0630b = this.bnj;
        if (c0630b != null && !c0630b.TO()) {
            return false;
        }
        b bVar = this.bnk;
        return bVar == null || bVar.TO();
    }
}
