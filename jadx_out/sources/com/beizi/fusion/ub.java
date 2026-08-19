package com.beizi.fusion;

import android.content.ContentValues;
import android.database.Cursor;

/* loaded from: classes2.dex */
public interface ub {
    String[] getColumns();

    ContentValues getContentValuesStruct();

    void parseFromDb(Cursor cursor);
}
