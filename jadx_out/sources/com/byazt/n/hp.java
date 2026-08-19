package com.byazt.n;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.byazt.fn.zy;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bz;
import java.io.File;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 28})
/* loaded from: classes3.dex */
public class hp implements zy {
    private boolean jx(DownloadInfo downloadInfo) throws JSONException {
        StringBuilder sb = new StringBuilder();
        sb.append(downloadInfo.getSavePath());
        String str = File.separator;
        sb.append(str);
        sb.append(downloadInfo.getName());
        String string = sb.toString();
        File file = new File(string);
        String strHp = com.byazt.gb.w.hp(jl.getContext(), com.byazt.ni.jx.hp(downloadInfo, file), string);
        boolean zRenameTo = false;
        if (!TextUtils.isEmpty(strHp)) {
            String str2 = strHp + ".apk";
            if (str2.equals(downloadInfo.getName())) {
                return true;
            }
            try {
                zRenameTo = file.renameTo(new File(downloadInfo.getSavePath() + str + str2));
                if (zRenameTo) {
                    downloadInfo.setName(str2);
                }
            } catch (Exception unused) {
            }
        }
        return zRenameTo;
    }

    @Override // com.byazt.fn.zy
    public void hp(DownloadInfo downloadInfo) throws BaseException {
        if (downloadInfo == null || !jx(downloadInfo)) {
            return;
        }
        hp(jl.getContext(), downloadInfo);
    }

    @Override // com.byazt.fn.zy
    public boolean l(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            return com.byazt.y.w.l(com.byazt.jb.hp.hp(downloadInfo.getId()));
        }
        return false;
    }

    private void hp(Context context, final DownloadInfo downloadInfo) {
        String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{bz.f48985d}, "_data=? ", new String[]{str}, null);
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            downloadInfo.safePutToDBJsonData("file_content_uri", ContentUris.withAppendedId(MediaStore.Files.getContentUri("external"), cursorQuery.getInt(cursorQuery.getColumnIndex(bz.f48985d))).toString());
        } else {
            MediaScannerConnection.scanFile(context, new String[]{str}, new String[]{AdBaseConstants.MIME_APK}, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.byazt.n.hp.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str2, Uri uri) {
                    if (uri != null) {
                        downloadInfo.safePutToDBJsonData("file_content_uri", uri.toString());
                        com.byazt.yk.jx.di().hp(downloadInfo);
                    }
                }
            });
        }
        com.byazt.xq.a.hp(cursorQuery);
    }
}
