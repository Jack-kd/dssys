package com.smartdigimkt.y4;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class f implements com.smartdigimkt.v4.a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f45260a;

    /* renamed from: b, reason: collision with root package name */
    public final String f45261b;

    /* renamed from: c, reason: collision with root package name */
    public final int f45262c;

    public f(com.smartdigimkt.v4.d dVar) {
        this.f45260a = dVar.f44718a;
        this.f45261b = dVar.f44719b;
        this.f45262c = dVar.f44721d;
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(Object obj, String str) {
        a(str, obj, this.f45262c);
    }

    @Override // com.smartdigimkt.v4.a
    public final Object b(Object obj, String str) {
        if (this.f45260a != null && !TextUtils.isEmpty(this.f45261b) && !TextUtils.isEmpty(str)) {
            try {
                SharedPreferences sharedPreferences = this.f45260a.getSharedPreferences(this.f45261b, 0);
                if (obj instanceof String) {
                    return sharedPreferences.getString(str, (String) obj);
                }
                if (obj instanceof Integer) {
                    return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
                }
                if (obj instanceof Long) {
                    return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
                }
                if (obj instanceof Double) {
                    return Double.valueOf(sharedPreferences.getFloat(str, Float.parseFloat(obj.toString())));
                }
                if (obj instanceof Float) {
                    return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
                }
                if (obj instanceof Boolean) {
                    return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return obj;
    }

    @Override // com.smartdigimkt.v4.a
    public final void clear() {
        if (this.f45260a == null || TextUtils.isEmpty(this.f45261b)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f45260a.getSharedPreferences(this.f45261b, 0).edit();
            editorEdit.clear();
            editorEdit.apply();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final Map getAll() {
        if (this.f45260a != null && !TextUtils.isEmpty(this.f45261b)) {
            try {
                return this.f45260a.getSharedPreferences(this.f45261b, 0).getAll();
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return null;
    }

    @Override // com.smartdigimkt.v4.a
    public final void remove(String str) {
        if (this.f45260a == null || TextUtils.isEmpty(this.f45261b)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f45260a.getSharedPreferences(this.f45261b, 0).edit();
            editorEdit.remove(str);
            editorEdit.apply();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(String str, Object obj, int i2) {
        if (this.f45260a == null || TextUtils.isEmpty(this.f45261b) || TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f45260a.getSharedPreferences(this.f45261b, 0).edit();
            a(editorEdit, str, obj);
            if (i2 != 2) {
                editorEdit.apply();
            } else {
                editorEdit.commit();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(HashMap map) {
        a(this.f45262c, map);
    }

    public final void a(int i2, HashMap map) {
        if (this.f45260a == null || map.isEmpty()) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f45260a.getSharedPreferences(this.f45261b, 0).edit();
            for (Map.Entry entry : map.entrySet()) {
                a(editorEdit, (String) entry.getKey(), entry.getValue());
            }
            if (i2 != 2) {
                editorEdit.apply();
            } else {
                editorEdit.commit();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static void a(SharedPreferences.Editor editor, String str, Object obj) {
        String string = obj.toString();
        if (obj instanceof String) {
            editor.putString(str, (String) obj);
            return;
        }
        if (obj instanceof Integer) {
            editor.putInt(str, Integer.parseInt(string));
            return;
        }
        if (obj instanceof Long) {
            editor.putLong(str, Long.parseLong(string));
            return;
        }
        if (obj instanceof Double) {
            editor.putFloat(str, Float.parseFloat(string));
        } else if (obj instanceof Float) {
            editor.putFloat(str, Float.parseFloat(string));
        } else if (obj instanceof Boolean) {
            editor.putBoolean(str, Boolean.parseBoolean(string));
        }
    }
}
