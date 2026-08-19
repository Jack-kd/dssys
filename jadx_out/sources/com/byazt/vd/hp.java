package com.byazt.vd;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.ITTProvider;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1741, 28})
/* loaded from: classes3.dex */
public class hp implements ITTProvider {
    public Function<SparseArray<Object>, Object> hp;

    public hp(Object obj) {
        if (obj instanceof Function) {
            this.hp = (Function) obj;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, -7999906);
            sparseArray.put(-99999985, Integer.class);
            sparseArray.put(-7999921, uri);
            sparseArray.put(-7999923, str);
            sparseArray.put(-7999924, strArr);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public String getTableName() {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -7999901);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -7999903);
        sparseArray.put(-99999985, String.class);
        sparseArray.put(-7999921, uri);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public void init() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, -7999902);
            sparseArray.put(-99999985, Void.class);
            this.hp.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public void injectContext(Context context) {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, -7999900);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(-7999920, context);
            this.hp.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -7999905);
        sparseArray.put(-99999985, Uri.class);
        sparseArray.put(-7999921, uri);
        sparseArray.put(-7999922, contentValues);
        return (Uri) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -7999904);
        sparseArray.put(-99999985, Cursor.class);
        sparseArray.put(-7999921, uri);
        sparseArray.put(-7999922, strArr);
        sparseArray.put(-7999923, str);
        sparseArray.put(-7999924, strArr2);
        sparseArray.put(-7999925, str2);
        return (Cursor) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, -7999907);
            sparseArray.put(-99999985, Integer.class);
            sparseArray.put(-7999921, uri);
            sparseArray.put(-7999922, contentValues);
            sparseArray.put(-7999923, str);
            sparseArray.put(-7999924, strArr);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }
}
