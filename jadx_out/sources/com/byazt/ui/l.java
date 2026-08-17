package com.byazt.ui;

import android.content.ContentValues;
import android.database.Cursor;

/* loaded from: classes3.dex */
public interface l {
    int delete(String str, String str2, String[] strArr);

    void insert(String str, ContentValues contentValues);

    Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5);

    int update(String str, ContentValues contentValues, String str2, String[] strArr);
}
