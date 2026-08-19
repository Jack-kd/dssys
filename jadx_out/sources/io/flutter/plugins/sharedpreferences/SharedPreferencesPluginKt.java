package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.Preferences;
import com.anythink.core.common.f.f;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.text.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a1\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a#\u0010\u000b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\u000b\u0010\f\"\u0014\u0010\r\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u000e\"\u0014\u0010\u000f\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e\"\u0014\u0010\u0010\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000e\"\u0014\u0010\u0011\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000e\"\u0014\u0010\u0012\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e\"%\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"", f.a.f3242b, "", f.a.f3244d, "", "allowList", "", "preferencesFilter", "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)Z", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;", "listEncoder", "transformPref", "(Ljava/lang/Object;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)Ljava/lang/Object;", "TAG", "Ljava/lang/String;", "SHARED_PREFERENCES_NAME", "LIST_PREFIX", "JSON_LIST_PREFIX", "DOUBLE_PREFIX", "Landroid/content/Context;", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "sharedPreferencesDataStore$delegate", "LC1/a;", "getSharedPreferencesDataStore", "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", "sharedPreferencesDataStore", "shared_preferences_android_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class SharedPreferencesPluginKt {

    @NotNull
    public static final String DOUBLE_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu";

    @NotNull
    public static final String JSON_LIST_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!";

    @NotNull
    public static final String LIST_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu";

    @NotNull
    public static final String TAG = "SharedPreferencesPlugin";
    static final /* synthetic */ kotlin.reflect.k[] $$delegatedProperties = {kotlin.jvm.internal.m.h(new PropertyReference1Impl(SharedPreferencesPluginKt.class, "sharedPreferencesDataStore", "getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1))};

    @NotNull
    public static final String SHARED_PREFERENCES_NAME = "FlutterSharedPreferences";

    @NotNull
    private static final C1.a sharedPreferencesDataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default(SHARED_PREFERENCES_NAME, null, null, null, 14, null);

    @NotNull
    public static final DataStore<Preferences> getSharedPreferencesDataStore(@NotNull Context context) {
        kotlin.jvm.internal.j.e(context, "<this>");
        return (DataStore) sharedPreferencesDataStore$delegate.getValue(context, $$delegatedProperties[0]);
    }

    public static final boolean preferencesFilter(@NotNull String key, @Nullable Object obj, @Nullable Set<String> set) {
        kotlin.jvm.internal.j.e(key, "key");
        return set == null ? (obj instanceof Boolean) || (obj instanceof Long) || (obj instanceof String) || (obj instanceof Double) : set.contains(key);
    }

    @Nullable
    public static final Object transformPref(@Nullable Object obj, @NotNull SharedPreferencesListEncoder listEncoder) {
        kotlin.jvm.internal.j.e(listEncoder, "listEncoder");
        if (!(obj instanceof String)) {
            return obj;
        }
        String str = (String) obj;
        if (!z.H(str, LIST_PREFIX, false, 2, null)) {
            if (!z.H(str, DOUBLE_PREFIX, false, 2, null)) {
                return obj;
            }
            String strSubstring = str.substring(40);
            kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
            return Double.valueOf(Double.parseDouble(strSubstring));
        }
        if (z.H(str, JSON_LIST_PREFIX, false, 2, null)) {
            return obj;
        }
        String strSubstring2 = str.substring(40);
        kotlin.jvm.internal.j.d(strSubstring2, "substring(...)");
        List<String> listDecode = listEncoder.decode(strSubstring2);
        kotlin.jvm.internal.j.b(listDecode);
        return listDecode;
    }
}
