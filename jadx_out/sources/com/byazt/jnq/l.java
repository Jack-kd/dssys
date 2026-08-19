package com.byazt.jnq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.ktf.j;
import com.byazt.pd.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 34})
/* loaded from: classes.dex */
public class l implements j.hp {
    public Context hp;

    private Context getContext() {
        Context context = this.hp;
        return context == null ? sz.getContext() : context;
    }

    private boolean hp(Uri uri) {
        return uri == null || TextUtils.isEmpty(uri.getPath());
    }

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) throws Exception {
        String[] strArrSplit;
        if (!hp(uri) && (strArrSplit = uri.getPath().split(ServiceReference.DELIMITER)) != null && strArrSplit.length >= 4) {
            String str2 = strArrSplit[2];
            String str3 = strArrSplit[3];
            com.byazt.pd.j jVarHp = hp(str2);
            if (jVarHp != null) {
                jVarHp.delete(str3, str, strArr);
            }
        }
        return 0;
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return "t_db";
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) throws SQLException {
        String[] strArrSplit;
        if (!hp(uri) && (strArrSplit = uri.getPath().split(ServiceReference.DELIMITER)) != null && strArrSplit.length >= 5) {
            String str = strArrSplit[2];
            String str2 = strArrSplit[4];
            com.byazt.pd.j jVarHp = hp(str);
            if (jVarHp != null) {
                if ("execSQL".equals(str2)) {
                    String queryParameter = uri.getQueryParameter("sql");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        jVarHp.hp(Uri.decode(queryParameter));
                    }
                } else if ("transactionBegin".equals(str2)) {
                    jVarHp.jx();
                } else if ("transactionSetSuccess".equals(str2)) {
                    jVarHp.j();
                } else if ("transactionEnd".equals(str2)) {
                    jVarHp.w();
                }
            }
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
        this.hp = context;
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) throws Exception {
        String[] strArrSplit;
        if (!hp(uri) && (strArrSplit = uri.getPath().split(ServiceReference.DELIMITER)) != null && strArrSplit.length >= 4) {
            String str = strArrSplit[2];
            String str2 = strArrSplit[3];
            com.byazt.pd.j jVarHp = hp(str);
            if (jVarHp != null) {
                jVarHp.insert(str2, null, contentValues);
            }
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String[] strArrSplit;
        if (!hp(uri) && (strArrSplit = uri.getPath().split(ServiceReference.DELIMITER)) != null && strArrSplit.length >= 4) {
            String str3 = strArrSplit[2];
            String str4 = strArrSplit[3];
            com.byazt.pd.j jVarHp = hp(str3);
            if (jVarHp != null) {
                return jVarHp.query(str4, strArr, str, strArr2, null, null, str2);
            }
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) throws Exception {
        String[] strArrSplit;
        if (!hp(uri) && (strArrSplit = uri.getPath().split(ServiceReference.DELIMITER)) != null && strArrSplit.length >= 4) {
            String str2 = strArrSplit[2];
            String str3 = strArrSplit[3];
            com.byazt.pd.j jVarHp = hp(str2);
            if (jVarHp != null) {
                jVarHp.update(str3, contentValues, str, strArr);
            }
        }
        return 0;
    }

    private com.byazt.pd.j hp(String str) {
        if ("ttopensdk.db".equals(str)) {
            return jx.hp(getContext()).hp();
        }
        if ("ttopensdk2.db".equals(str)) {
            return com.byazt.pd.hp.hp(getContext()).hp();
        }
        return null;
    }
}
