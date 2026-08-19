package com.byazt.ton;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.ktf.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1140, 54})
/* loaded from: classes3.dex */
public class a implements j.hp {
    public static volatile a hp;
    public static List<j.hp> jx;

    /* renamed from: l, reason: collision with root package name */
    public static WeakReference<Context> f25969l;

    static {
        List<j.hp> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        jx = listSynchronizedList;
        listSynchronizedList.add(new jx());
        jx.add(new com.byazt.jnq.l());
        jx.add(new com.byazt.en.hp());
        jx.add(new hp(new com.byazt.tnk.hp("csj")));
        Iterator<j.hp> it = jx.iterator();
        while (it.hasNext()) {
            it.next().init();
        }
    }

    private a() {
    }

    private Context getContext() {
        WeakReference<Context> weakReference = f25969l;
        return (weakReference == null || weakReference.get() == null) ? sz.getContext() : f25969l.get();
    }

    public static a hp(Context context) {
        if (context != null) {
            f25969l = new WeakReference<>(context.getApplicationContext());
        }
        if (hp == null) {
            synchronized (a.class) {
                try {
                    if (hp == null) {
                        hp = new a();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private boolean l(Uri uri) {
        return true;
    }

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        try {
            j.hp hpVarHp = hp(uri);
            if (hpVarHp != null) {
                return hpVarHp.delete(uri, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return "";
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        try {
            j.hp hpVarHp = hp(uri);
            if (hpVarHp != null) {
                return hpVarHp.getType(uri);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
        Iterator<j.hp> it = jx.iterator();
        while (it.hasNext()) {
            it.next().injectContext(context);
        }
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        try {
            j.hp hpVarHp = hp(uri);
            if (hpVarHp != null) {
                return hpVarHp.insert(uri, contentValues);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            j.hp hpVarHp = hp(uri);
            if (hpVarHp != null) {
                return hpVarHp.query(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        try {
            j.hp hpVarHp = hp(uri);
            if (hpVarHp != null) {
                return hpVarHp.update(uri, contentValues, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private j.hp hp(Uri uri) {
        if (uri == null || !l(uri)) {
            return null;
        }
        String[] strArrSplit = uri.getPath().split(ServiceReference.DELIMITER);
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (j.hp hpVar : jx) {
            if (str.equals(hpVar.getTableName())) {
                return hpVar;
            }
        }
        return null;
    }
}
