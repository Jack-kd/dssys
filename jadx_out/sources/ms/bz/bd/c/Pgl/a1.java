package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.umeng.analytics.pro.ek;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes5.dex */
public final class a1 {
    private final Context hp;

    public a1(Context context) {
        this.hp = context;
    }

    private static String hp(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5904a2", new byte[]{com.sigmob.sdk.archives.tar.e.f35444J, 58, 79, 85, 91}));
        String string = columnIndex > 0 ? cursor.getString(columnIndex) : null;
        int columnIndex2 = cursor.getColumnIndex((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "48604d", new byte[]{38, com.sigmob.sdk.archives.tar.e.f35447M, 65, 65}));
        if (columnIndex2 > 0) {
            cursor.getInt(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "777e0c", new byte[]{35, 45, 84, 24, 29, 113, com.sigmob.sdk.archives.tar.e.f35442H}));
        if (columnIndex3 > 0) {
            cursor.getLong(columnIndex3);
        }
        return string;
    }

    public final void hp(pblk.pblb pblbVar) throws PackageManager.NameNotFoundException {
        Cursor cursorQuery;
        try {
            this.hp.getPackageManager().getPackageInfo((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c554ea", new byte[]{113, 56, 75, ek.f49294l, 87, 115, 105, ek.f49294l, 113, 42, 116, 59, 95, 77, 95, 56, 111, 4, 97, 106, 123, com.sigmob.sdk.archives.tar.e.f35445K, 85, 68, 81}), 0);
        } catch (Exception unused) {
        }
        Uri uri = Uri.parse((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "796d82", new byte[]{37, com.sigmob.sdk.archives.tar.e.f35446L, 75, 4, 2, 43, 32, 66, 40, 123, 37, com.sigmob.sdk.archives.tar.e.f35446L, 72, 94, 10, 32, 61, 2, 114, 122, 32, com.sigmob.sdk.archives.tar.e.f35449O, 92, 29, 2, 107, 59, 8, 98, 58, 47, 63, 86, 20, 12, 106}));
        try {
            cursorQuery = this.hp.getContentResolver().query(uri, null, null, new String[]{(String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9eca94", new byte[]{39, 102, 25, 17})}, null);
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        try {
            String strHp = hp(cursorQuery);
            if (pblbVar != null) {
                pblbVar.hp(strHp);
            }
            if (cursorQuery == null) {
                return;
            }
        } catch (Throwable unused3) {
            if (cursorQuery == null) {
                return;
            }
            cursorQuery.close();
        }
        cursorQuery.close();
    }
}
