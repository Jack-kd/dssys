package com.octopus.ad.c.g;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.octopus.ad.c.c;

/* loaded from: classes4.dex */
public class a implements c {
    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://cn.nubia.provider.deviceid.dataid/oaid"), null, null, null, null);
        if (cursorQuery != null) {
            string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex("device_ids_grndid")) : null;
            cursorQuery.close();
        }
        return string;
    }
}
