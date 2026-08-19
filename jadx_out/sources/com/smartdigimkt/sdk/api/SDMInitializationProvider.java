package com.smartdigimkt.sdk.api;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c4.c;
import com.smartdigimkt.g4.a;
import com.smartdigimkt.g4.f;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public class SDMInitializationProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            Context context = getContext();
            if (context != null) {
                c.a().a((Application) context);
                SDKContext.getInstance().a(context.getApplicationContext());
            }
        } catch (Throwable unused) {
        }
        try {
            f fVarA = f.a();
            Context context2 = getContext();
            fVarA.getClass();
            e.a().a(new a(fVarA, context2), 0L, 7);
            return true;
        } catch (Throwable unused2) {
            return true;
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
