package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Keep;
import com.anythink.core.common.f.f;
import com.kwad.sdk.liteapi.LiteApiLogger;

@Keep
/* loaded from: classes4.dex */
public class MeizuDeviceIDHelper {
    private static final String TAG = "MeizuDeviceIDHelper";
    private Context mContext;

    public MeizuDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    private String getOaid(Cursor cursor) {
        String string;
        string = "";
        if (cursor != null && !cursor.isClosed()) {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex(f.a.f3244d);
            string = columnIndex > 0 ? cursor.getString(columnIndex) : "";
            int columnIndex2 = cursor.getColumnIndex("code");
            if (columnIndex2 > 0) {
                cursor.getInt(columnIndex2);
            }
            int columnIndex3 = cursor.getColumnIndex("expired");
            if (columnIndex3 > 0) {
                cursor.getLong(columnIndex3);
            }
        }
        return string;
    }

    private boolean isMeizuSupport() {
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager != null) {
                if (packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null) {
                    return true;
                }
            }
        } catch (Exception e2) {
            LiteApiLogger.printStackTrace(e2);
        }
        return false;
    }

    public String getOAID() {
        String oaid = "";
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mContext.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
                oaid = getOaid(cursorQuery);
                LiteApiLogger.i(TAG, "getOAID oaid:" + oaid);
                return oaid;
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    OaidInnerUtils.closeQuietly(cursorQuery);
                    return oaid;
                } finally {
                    OaidInnerUtils.closeQuietly(cursorQuery);
                }
            }
        } catch (Exception e2) {
            LiteApiLogger.i(TAG, "getOAID service not found;");
            LiteApiLogger.printStackTrace(e2);
        }
    }
}
