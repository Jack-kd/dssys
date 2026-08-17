package com.byazt.fgx;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1762, 38})
/* loaded from: classes2.dex */
public class j {
    public int delete(Uri uri, String str, String[] strArr) {
        String[] strArrSplit = uri.getPath().split(ServiceReference.DELIMITER);
        if (strArrSplit[2].equals("clean")) {
            jx.hp(uri.getQueryParameter("sp_file_name"));
            return 0;
        }
        String str2 = strArrSplit[3];
        if (jx.hp(uri.getQueryParameter("sp_file_name"), str2)) {
            jx.l(uri.getQueryParameter("sp_file_name"), str2);
        }
        return 0;
    }

    public String getType(Uri uri) {
        String[] strArrSplit = uri.getPath().split(ServiceReference.DELIMITER);
        String str = strArrSplit[2];
        String str2 = strArrSplit[3];
        if (str.equals("contain")) {
            StringBuilder sb = new StringBuilder();
            sb.append(jx.hp(uri.getQueryParameter("sp_file_name"), str2));
            return sb.toString();
        }
        return jx.hp(uri.getQueryParameter("sp_file_name"), str2, str);
    }

    public String hp() {
        return "t_sp";
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        if (contentValues == null) {
            return null;
        }
        String str = uri.getPath().split(ServiceReference.DELIMITER)[3];
        Object obj = contentValues.get(f.a.f3244d);
        if (obj != null) {
            jx.hp(uri.getQueryParameter("sp_file_name"), str, obj);
        }
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Map<String, ?> mapL;
        if (!uri.getPath().split(ServiceReference.DELIMITER)[2].equals("get_all") || (mapL = jx.l(uri.getQueryParameter("sp_file_name"))) == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"cursor_name", "cursor_type", "cursor_value"});
        for (String str3 : mapL.keySet()) {
            Object[] objArr = new Object[3];
            objArr[0] = str3;
            Object obj = mapL.get(str3);
            objArr[2] = obj;
            if (obj instanceof Boolean) {
                objArr[1] = "boolean";
            } else if (obj instanceof String) {
                objArr[1] = "string";
            } else if (obj instanceof Integer) {
                objArr[1] = IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL;
            } else if (obj instanceof Long) {
                objArr[1] = "long";
            } else if (obj instanceof Float) {
                objArr[1] = "float";
            }
            matrixCursor.addRow(objArr);
        }
        return matrixCursor;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (contentValues == null) {
            return 0;
        }
        insert(uri, contentValues);
        return 0;
    }
}
