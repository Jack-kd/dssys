package com.smartdigimkt.c0;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.smartdigimkt.c5.a0;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f39614a = a0.a("dggRsoxvIodjv");

    /* renamed from: b, reason: collision with root package name */
    public static final String f39615b = a0.a("ghhsOlqn");

    /* renamed from: c, reason: collision with root package name */
    public static final String f39616c = a0.a("snjQdph");

    /* renamed from: d, reason: collision with root package name */
    public static final String f39617d = a0.a("frqwhqw=22frp1klkrqru1lg1urxwhu1urxwhufrqwhqwsurylghu2ghhsolqnVwduwBurxwhDxwkrulw|@frp1klkrqru1ppv1dgv1uhprwh");

    public static boolean a(Context context, String str) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (contentResolver == null) {
                return false;
            }
            try {
                Cursor cursorQuery = contentResolver.query(Uri.parse(f39617d), null, str, null, null, null);
                if (cursorQuery == null) {
                    if (cursorQuery == null) {
                        return false;
                    }
                    cursorQuery.close();
                    return false;
                }
                try {
                    Bundle extras = cursorQuery.getExtras();
                    if (extras == null) {
                        cursorQuery.close();
                        return false;
                    }
                    if (extras.getInt("code") == 0) {
                        cursorQuery.close();
                        return true;
                    }
                    extras.getString("msg");
                    cursorQuery.close();
                    return false;
                } finally {
                }
            } catch (Throwable th) {
                th.getMessage();
                return false;
            }
        } catch (Throwable th2) {
            th2.getMessage();
            return false;
        }
    }
}
