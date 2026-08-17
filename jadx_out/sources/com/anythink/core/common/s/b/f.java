package com.anythink.core.common.s.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes2.dex */
public class f implements com.anythink.core.common.s.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7657a = "f";

    /* renamed from: b, reason: collision with root package name */
    private final Context f7658b;

    /* renamed from: c, reason: collision with root package name */
    private final String f7659c;

    /* renamed from: d, reason: collision with root package name */
    private final int f7660d;

    public f(com.anythink.core.common.s.c cVar) {
        this.f7658b = cVar.a();
        this.f7659c = cVar.b();
        this.f7660d = cVar.d();
    }

    private static boolean a(int i2) {
        return i2 != 2;
    }

    private String d() {
        return this.f7659c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.core.common.s.a
    public final <V> V b(String str, V v2) {
        if (this.f7658b != null && !TextUtils.isEmpty(this.f7659c) && !TextUtils.isEmpty(str) && v2 != 0) {
            try {
                SharedPreferences sharedPreferences = this.f7658b.getSharedPreferences(this.f7659c, 0);
                if (v2 instanceof String) {
                    return (V) sharedPreferences.getString(str, (String) v2);
                }
                if (v2 instanceof Integer) {
                    return (V) Integer.valueOf(sharedPreferences.getInt(str, ((Integer) v2).intValue()));
                }
                if (v2 instanceof Long) {
                    return (V) Long.valueOf(sharedPreferences.getLong(str, ((Long) v2).longValue()));
                }
                if (v2 instanceof Double) {
                    return (V) Double.valueOf(sharedPreferences.getFloat(str, Float.parseFloat(v2.toString())));
                }
                if (v2 instanceof Float) {
                    return (V) Float.valueOf(sharedPreferences.getFloat(str, ((Float) v2).floatValue()));
                }
                if (v2 instanceof Boolean) {
                    return (V) Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) v2).booleanValue()));
                }
            } catch (Throwable unused) {
            }
        }
        return v2;
    }

    @Override // com.anythink.core.common.s.a
    public final int c() {
        return 0;
    }

    @Override // com.anythink.core.common.s.a
    public final <V> void a(String str, V v2) {
        a(str, (String) v2, this.f7660d);
    }

    @Override // com.anythink.core.common.s.a
    public final <V> void a(String str, V v2, int i2) {
        if (this.f7658b == null || TextUtils.isEmpty(this.f7659c) || TextUtils.isEmpty(str) || v2 == null) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f7658b.getSharedPreferences(this.f7659c, 0).edit();
            a(editorEdit, str, v2);
            if (a(i2)) {
                editorEdit.apply();
            } else {
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void a(Map<String, Object> map) {
        a(map, this.f7660d);
    }

    @Override // com.anythink.core.common.s.a
    public final void a(Map<String, Object> map, int i2) {
        if (this.f7658b == null || map == null || map.isEmpty()) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f7658b.getSharedPreferences(this.f7659c, 0).edit();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                a(editorEdit, entry.getKey(), entry.getValue());
            }
            if (a(i2)) {
                editorEdit.apply();
            } else {
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void b(String str) {
        if (this.f7658b == null || TextUtils.isEmpty(this.f7659c)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f7658b.getSharedPreferences(this.f7659c, 0).edit();
            editorEdit.remove(str);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    private static void a(SharedPreferences.Editor editor, String str, Object obj) {
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

    @Override // com.anythink.core.common.s.a
    public final void b() {
        if (this.f7658b == null || TextUtils.isEmpty(this.f7659c)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = this.f7658b.getSharedPreferences(this.f7659c, 0).edit();
            editorEdit.clear();
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.s.a
    public final Map<String, Object> a() {
        if (this.f7658b != null && !TextUtils.isEmpty(this.f7659c)) {
            try {
                return this.f7658b.getSharedPreferences(this.f7659c, 0).getAll();
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    @Override // com.anythink.core.common.s.a
    public final boolean a(String str) {
        if (this.f7658b != null && !TextUtils.isEmpty(this.f7659c)) {
            try {
                return this.f7658b.getSharedPreferences(this.f7659c, 0).contains(str);
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
