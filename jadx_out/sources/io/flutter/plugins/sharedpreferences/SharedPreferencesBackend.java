package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.preference.PreferenceManager;
import com.anythink.core.common.f.f;
import io.flutter.plugin.common.BinaryMessenger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010 \u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b \u0010\u0019J-\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120!2\u0006\u0010\u000b\u001a\u00020\nH\u0017¢\u0006\u0004\b\"\u0010#J'\u0010%\u001a\u00020\u000f2\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010!2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b%\u0010&J3\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020(0'2\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010!2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b)\u0010*J!\u0010+\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b-\u0010.J!\u0010/\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b/\u00100J!\u00101\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b1\u00102J!\u00104\u001a\u0004\u0018\u0001032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b4\u00105J'\u00106\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010!2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b6\u00107J-\u00108\u001a\b\u0012\u0004\u0012\u00020\u00120!2\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010!2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b8\u00109R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010:R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010;R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010<¨\u0006="}, d2 = {"Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "Landroid/content/Context;", com.umeng.analytics.pro.g.f49337X, "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;", "listEncoder", "<init>", "(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;", "options", "Landroid/content/SharedPreferences;", "createSharedPreferences", "(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Landroid/content/SharedPreferences;", "Lkotlin/j;", "tearDown", "()V", "", f.a.f3242b, "", f.a.f3244d, "setBool", "(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "setString", "(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "", "setInt", "(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "", "setDouble", "(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "setEncodedStringList", "", "setDeprecatedStringList", "(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "allowList", "clear", "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "", "", "getAll", "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/util/Map;", "getInt", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/Long;", "getBool", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/Boolean;", "getDouble", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/Double;", "getString", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/String;", "Lio/flutter/plugins/sharedpreferences/StringListResult;", "getStringList", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Lio/flutter/plugins/sharedpreferences/StringListResult;", "getPlatformEncodedStringList", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/util/List;", "getKeys", "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/util/List;", "Lio/flutter/plugin/common/BinaryMessenger;", "Landroid/content/Context;", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;", "shared_preferences_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesBackend\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,520:1\n1#2:521\n808#3,11:522\n536#4:533\n521#4,6:534\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesBackend\n*L\n453#1:522,11\n466#1:533\n466#1:534,6\n*E\n"})
/* loaded from: classes5.dex */
public final class SharedPreferencesBackend implements SharedPreferencesAsyncApi {

    @NotNull
    private Context context;

    @NotNull
    private SharedPreferencesListEncoder listEncoder;

    @NotNull
    private BinaryMessenger messenger;

    public SharedPreferencesBackend(@NotNull BinaryMessenger messenger, @NotNull Context context, @NotNull SharedPreferencesListEncoder listEncoder) {
        kotlin.jvm.internal.j.e(messenger, "messenger");
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(listEncoder, "listEncoder");
        this.messenger = messenger;
        this.context = context;
        this.listEncoder = listEncoder;
        try {
            SharedPreferencesAsyncApi.INSTANCE.setUp(messenger, this, "shared_preferences");
        } catch (Exception e2) {
            Log.e(SharedPreferencesPluginKt.TAG, "Received exception while setting up SharedPreferencesBackend", e2);
        }
    }

    private final SharedPreferences createSharedPreferences(SharedPreferencesPigeonOptions options) {
        if (options.getFileName() == null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
            kotlin.jvm.internal.j.b(defaultSharedPreferences);
            return defaultSharedPreferences;
        }
        SharedPreferences sharedPreferences = this.context.getSharedPreferences(options.getFileName(), 0);
        kotlin.jvm.internal.j.b(sharedPreferences);
        return sharedPreferences;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void clear(@Nullable List<String> allowList, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        SharedPreferences.Editor editorEdit = sharedPreferencesCreateSharedPreferences.edit();
        kotlin.jvm.internal.j.d(editorEdit, "edit(...)");
        Map<String, ?> all = sharedPreferencesCreateSharedPreferences.getAll();
        kotlin.jvm.internal.j.d(all, "getAll(...)");
        ArrayList arrayList = new ArrayList();
        for (String str : all.keySet()) {
            if (SharedPreferencesPluginKt.preferencesFilter(str, all.get(str), allowList != null ? kotlin.collections.y.e0(allowList) : null)) {
                arrayList.add(str);
            }
        }
        Iterator it = arrayList.iterator();
        kotlin.jvm.internal.j.d(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            kotlin.jvm.internal.j.d(next, "next(...)");
            editorEdit.remove((String) next);
        }
        editorEdit.apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @NotNull
    public Map<String, Object> getAll(@Nullable List<String> allowList, @NotNull SharedPreferencesPigeonOptions options) {
        Object value;
        kotlin.jvm.internal.j.e(options, "options");
        Map<String, ?> all = createSharedPreferences(options).getAll();
        kotlin.jvm.internal.j.d(all, "getAll(...)");
        HashMap map = new HashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            if (SharedPreferencesPluginKt.preferencesFilter(entry.getKey(), entry.getValue(), allowList != null ? kotlin.collections.y.e0(allowList) : null) && (value = entry.getValue()) != null) {
                String key = entry.getKey();
                Object objTransformPref = SharedPreferencesPluginKt.transformPref(value, this.listEncoder);
                kotlin.jvm.internal.j.c(objTransformPref, "null cannot be cast to non-null type kotlin.Any");
                map.put(key, objTransformPref);
            }
        }
        return map;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public Boolean getBool(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        if (sharedPreferencesCreateSharedPreferences.contains(key)) {
            return Boolean.valueOf(sharedPreferencesCreateSharedPreferences.getBoolean(key, true));
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public Double getDouble(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        if (!sharedPreferencesCreateSharedPreferences.contains(key)) {
            return null;
        }
        Object objTransformPref = SharedPreferencesPluginKt.transformPref(sharedPreferencesCreateSharedPreferences.getString(key, ""), this.listEncoder);
        kotlin.jvm.internal.j.c(objTransformPref, "null cannot be cast to non-null type kotlin.Double");
        return (Double) objTransformPref;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public Long getInt(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        long j2;
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        if (!sharedPreferencesCreateSharedPreferences.contains(key)) {
            return null;
        }
        try {
            j2 = sharedPreferencesCreateSharedPreferences.getLong(key, 0L);
        } catch (ClassCastException unused) {
            j2 = sharedPreferencesCreateSharedPreferences.getInt(key, 0);
        }
        return Long.valueOf(j2);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @NotNull
    public List<String> getKeys(@Nullable List<String> allowList, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(options, "options");
        Map<String, ?> all = createSharedPreferences(options).getAll();
        kotlin.jvm.internal.j.d(all, "getAll(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            kotlin.jvm.internal.j.d(key, "<get-key>(...)");
            if (SharedPreferencesPluginKt.preferencesFilter(key, entry.getValue(), allowList != null ? kotlin.collections.y.e0(allowList) : null)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return kotlin.collections.y.a0(linkedHashMap.keySet());
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public List<String> getPlatformEncodedStringList(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        List list;
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        if (sharedPreferencesCreateSharedPreferences.contains(key)) {
            String string = sharedPreferencesCreateSharedPreferences.getString(key, "");
            kotlin.jvm.internal.j.b(string);
            if (z.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null) && !z.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null) && (list = (List) SharedPreferencesPluginKt.transformPref(sharedPreferencesCreateSharedPreferences.getString(key, ""), this.listEncoder)) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (obj instanceof String) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public String getString(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        if (sharedPreferencesCreateSharedPreferences.contains(key)) {
            return sharedPreferencesCreateSharedPreferences.getString(key, "");
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public StringListResult getStringList(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        SharedPreferences sharedPreferencesCreateSharedPreferences = createSharedPreferences(options);
        if (!sharedPreferencesCreateSharedPreferences.contains(key)) {
            return null;
        }
        String string = sharedPreferencesCreateSharedPreferences.getString(key, "");
        kotlin.jvm.internal.j.b(string);
        return z.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null) ? new StringListResult(string, StringListLookupResultType.JSON_ENCODED) : z.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null) ? new StringListResult(null, StringListLookupResultType.PLATFORM_ENCODED) : new StringListResult(null, StringListLookupResultType.UNEXPECTED_STRING);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setBool(@NotNull String key, boolean value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        createSharedPreferences(options).edit().putBoolean(key, value).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Deprecated(message = "This is just for testing, use `setEncodedStringList`")
    public void setDeprecatedStringList(@NotNull String key, @NotNull List<String> value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(options, "options");
        createSharedPreferences(options).edit().putString(key, SharedPreferencesPluginKt.LIST_PREFIX + this.listEncoder.encode(value)).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setDouble(@NotNull String key, double value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        createSharedPreferences(options).edit().putString(key, SharedPreferencesPluginKt.DOUBLE_PREFIX + value).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setEncodedStringList(@NotNull String key, @NotNull String value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(options, "options");
        createSharedPreferences(options).edit().putString(key, value).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setInt(@NotNull String key, long value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        createSharedPreferences(options).edit().putLong(key, value).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setString(@NotNull String key, @NotNull String value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(options, "options");
        createSharedPreferences(options).edit().putString(key, value).apply();
    }

    public final void tearDown() {
        SharedPreferencesAsyncApi.INSTANCE.setUp(this.messenger, null, "shared_preferences");
    }

    public /* synthetic */ SharedPreferencesBackend(BinaryMessenger binaryMessenger, Context context, SharedPreferencesListEncoder sharedPreferencesListEncoder, int i2, kotlin.jvm.internal.f fVar) {
        this(binaryMessenger, context, (i2 & 4) != 0 ? new ListEncoder() : sharedPreferencesListEncoder);
    }
}
