package com.byazt.fd;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.ITTProvider;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import java.util.function.Function;

@hp(hp = {0, 1, AVMDLDataLoader.KeyIsSetAlogFuncPtr, 1101})
/* loaded from: classes2.dex */
public class TTMultiProvider extends ContentProvider {
    private ITTProvider hp(Uri uri) {
        if (TTAdSdk.getAdManager() == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("proto2_ittprovider", true);
        bundle.putInt("layerType", l(uri));
        return new com.byazt.vd.hp(TTAdSdk.getAdManager().getExtra(Function.class, bundle));
    }

    private int l(Uri uri) {
        try {
            return Integer.parseInt(uri.getQueryParameter("layerType"));
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        if (hp(uri) != null) {
            return hp(uri).delete(uri, str, strArr);
        }
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return hp(uri) != null ? hp(uri).getType(uri) : "";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (hp(uri) != null) {
            return hp(uri).insert(uri, contentValues);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (hp(uri) != null) {
            return hp(uri).query(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (hp(uri) != null) {
            return hp(uri).update(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
