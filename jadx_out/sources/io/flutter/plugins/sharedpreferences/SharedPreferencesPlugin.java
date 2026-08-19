package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.z;
import kotlinx.coroutines.AbstractC1664h;
import kotlinx.coroutines.M;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.AbstractC1791a;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ \u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0082@¢\u0006\u0004\b\u0012\u0010\u0013J,\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00170\u00162\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0014H\u0082@¢\u0006\u0004\b\u0018\u0010\u0019J\u001c\u0010\u001c\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001b\u0018\u00010\u001aH\u0082@¢\u0006\u0004\b\u001c\u0010\u001dJ\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00172\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u001bH\u0082@¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\f2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\f2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b$\u0010#J'\u0010(\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J'\u0010*\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b*\u0010+J'\u0010-\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020,2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b-\u0010.J'\u00100\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020/2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b0\u00101J'\u00102\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b2\u0010+J-\u00103\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00142\u0006\u0010'\u001a\u00020&H\u0017¢\u0006\u0004\b3\u00104J'\u00105\u001a\u00020\f2\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00142\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b5\u00106J3\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00170\u00162\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00142\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b7\u00108J!\u00109\u001a\u0004\u0018\u00010,2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b9\u0010:J!\u0010;\u001a\u0004\u0018\u00010%2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b;\u0010<J!\u0010=\u001a\u0004\u0018\u00010/2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b=\u0010>J!\u0010?\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b?\u0010@J!\u0010B\u001a\u0004\u0018\u00010A2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\bB\u0010CJ'\u0010D\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\bD\u0010EJ-\u0010F\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00142\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\bF\u0010GR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010HR\u0018\u0010J\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010L¨\u0006M"}, d2 = {"Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;", "<init>", "()V", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;", "listEncoder", "(Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "Landroid/content/Context;", com.umeng.analytics.pro.g.f49337X, "Lkotlin/j;", "setUp", "(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V", "", f.a.f3242b, f.a.f3244d, "dataStoreSetString", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/e;)Ljava/lang/Object;", "", "allowList", "", "", "getPrefs", "(Ljava/util/List;Lkotlin/coroutines/e;)Ljava/lang/Object;", "", "Landroidx/datastore/preferences/core/Preferences$Key;", "readAllKeys", "(Lkotlin/coroutines/e;)Ljava/lang/Object;", "getValueByKey", "(Landroidx/datastore/preferences/core/Preferences$Key;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;", "options", "setBool", "(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "setString", "(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "", "setInt", "(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "", "setDouble", "(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "setEncodedStringList", "setDeprecatedStringList", "(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "clear", "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V", "getAll", "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/util/Map;", "getInt", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/Long;", "getBool", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/Boolean;", "getDouble", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/Double;", "getString", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/String;", "Lio/flutter/plugins/sharedpreferences/StringListResult;", "getStringList", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Lio/flutter/plugins/sharedpreferences/StringListResult;", "getPlatformEncodedStringList", "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/util/List;", "getKeys", "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/util/List;", "Landroid/content/Context;", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;", "backend", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;", "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;", "shared_preferences_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,520:1\n808#2,11:521\n1869#2,2:532\n53#3:534\n55#3:538\n53#3:539\n55#3:543\n50#4:535\n55#4:537\n50#4:540\n55#4:542\n107#5:536\n107#5:541\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin\n*L\n237#1:521,11\n257#1:532,2\n270#1:534\n270#1:538\n275#1:539\n275#1:543\n270#1:535\n270#1:537\n275#1:540\n275#1:542\n270#1:536\n275#1:541\n*E\n"})
/* loaded from: classes5.dex */
public final class SharedPreferencesPlugin implements FlutterPlugin, SharedPreferencesAsyncApi {

    @Nullable
    private SharedPreferencesBackend backend;
    private Context context;

    @NotNull
    private SharedPreferencesListEncoder listEncoder;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Landroidx/datastore/preferences/core/Preferences;", "<anonymous>", "(Lkotlinx/coroutines/M;)Landroidx/datastore/preferences/core/Preferences;"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_MAX_FPS}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ List<String> $allowList;
        int label;

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "preferences", "Lkotlin/j;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {2, 2, 0})
        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        @SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$clear$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,520:1\n1869#2,2:521\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$clear$1$1\n*L\n136#1:521,2\n*E\n"})
        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C08701 extends SuspendLambda implements Function2<MutablePreferences, kotlin.coroutines.e, Object> {
            final /* synthetic */ List<String> $allowList;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C08701(List<String> list, kotlin.coroutines.e eVar) {
                super(2, eVar);
                this.$allowList = list;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
                C08701 c08701 = new C08701(this.$allowList, eVar);
                c08701.L$0 = obj;
                return c08701;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, kotlin.coroutines.e eVar) {
                return ((C08701) create(mutablePreferences, eVar)).invokeSuspend(kotlin.j.f51397a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                kotlin.coroutines.intrinsics.a.e();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                List<String> list = this.$allowList;
                if (list != null) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        mutablePreferences.remove(PreferencesKeys.booleanKey((String) it.next()));
                    }
                } else {
                    mutablePreferences.clear();
                }
                return kotlin.j.f51397a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(List<String> list, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$allowList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return SharedPreferencesPlugin.this.new AnonymousClass1(this.$allowList, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                return obj;
            }
            kotlin.e.b(obj);
            Context context = SharedPreferencesPlugin.this.context;
            if (context == null) {
                kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                context = null;
            }
            DataStore<Preferences> sharedPreferencesDataStore = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context);
            C08701 c08701 = new C08701(this.$allowList, null);
            this.label = 1;
            Object objEdit = PreferencesKt.edit(sharedPreferencesDataStore, c08701, this);
            return objEdit == objE ? objE : objEdit;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((AnonymousClass1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "preferences", "Lkotlin/j;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$dataStoreSetString$2", f = "SharedPreferencesPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$dataStoreSetString$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<MutablePreferences, kotlin.coroutines.e, Object> {
        final /* synthetic */ Preferences.Key<String> $stringKey;
        final /* synthetic */ String $value;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Preferences.Key<String> key, String str, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$stringKey = key;
            this.$value = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$stringKey, this.$value, eVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, kotlin.coroutines.e eVar) {
            return ((AnonymousClass2) create(mutablePreferences, eVar)).invokeSuspend(kotlin.j.f51397a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
            kotlin.coroutines.intrinsics.a.e();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            mutablePreferences.set(this.$stringKey, this.$value);
            return kotlin.j.f51397a;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/M;", "", "", "", "<anonymous>", "(Lkotlinx/coroutines/M;)Ljava/util/Map;"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getAll$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {150}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getAll$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14541 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ List<String> $allowList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14541(List<String> list, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$allowList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return SharedPreferencesPlugin.this.new C14541(this.$allowList, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                return obj;
            }
            kotlin.e.b(obj);
            SharedPreferencesPlugin sharedPreferencesPlugin = SharedPreferencesPlugin.this;
            List<String> list = this.$allowList;
            this.label = 1;
            Object prefs = sharedPreferencesPlugin.getPrefs(list, this);
            return prefs == objE ? objE : prefs;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14541) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1", f = "SharedPreferencesPlugin.kt", i = {0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE}, m = "invokeSuspend", n = {"preferencesKey", "preferenceFlow"}, s = {"L$0", "L$1"}, v = 1)
    @SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getBool$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,520:1\n53#2:521\n55#2:525\n50#3:522\n55#3:524\n107#4:523\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getBool$1\n*L\n172#1:521\n172#1:525\n172#1:522\n172#1:524\n172#1:523\n*E\n"})
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14551 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ Ref$ObjectRef<Boolean> $value;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14551(String str, SharedPreferencesPlugin sharedPreferencesPlugin, Ref$ObjectRef<Boolean> ref$ObjectRef, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14551(this.$key, this.this$0, this.$value, eVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref$ObjectRef<Boolean> ref$ObjectRef;
            T t2;
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final Preferences.Key<Boolean> keyBooleanKey = PreferencesKeys.booleanKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                final InterfaceC1639c data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
                InterfaceC1639c interfaceC1639c = new InterfaceC1639c() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1

                    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", f.a.f3244d, "Lkotlin/j;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "kotlinx/coroutines/flow/V", "<anonymous>"}, k = 3, mv = {2, 2, 0})
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getBool$1\n*L\n1#1,222:1\n54#2:223\n172#3:224\n*E\n"})
                    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    public static final class AnonymousClass2<T> implements InterfaceC1640d {
                        final /* synthetic */ Preferences.Key $preferencesKey$inlined;
                        final /* synthetic */ InterfaceC1640d $this_unsafeFlow;

                        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "emit", n = {f.a.f3244d, "$completion", f.a.f3244d, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 1)
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            int I$0;
                            Object L$0;
                            Object L$1;
                            Object L$2;
                            Object L$3;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(kotlin.coroutines.e eVar) {
                                super(eVar);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(InterfaceC1640d interfaceC1640d, Preferences.Key key) {
                            this.$this_unsafeFlow = interfaceC1640d;
                            this.$preferencesKey$inlined = key;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.InterfaceC1640d
                        @org.jetbrains.annotations.Nullable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
                            /*
                                r5 = this;
                                boolean r0 = r7 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2$1
                                r0.<init>(r7)
                            L18:
                                java.lang.Object r7 = r0.result
                                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L39
                                if (r2 != r3) goto L31
                                java.lang.Object r6 = r0.L$3
                                kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
                                java.lang.Object r6 = r0.L$1
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1$2$1 r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                                kotlin.e.b(r7)
                                goto L6b
                            L31:
                                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                r6.<init>(r7)
                                throw r6
                            L39:
                                kotlin.e.b(r7)
                                kotlinx.coroutines.flow.d r7 = r5.$this_unsafeFlow
                                r2 = r6
                                androidx.datastore.preferences.core.Preferences r2 = (androidx.datastore.preferences.core.Preferences) r2
                                androidx.datastore.preferences.core.Preferences$Key r4 = r5.$preferencesKey$inlined
                                java.lang.Object r2 = r2.get(r4)
                                java.lang.Object r4 = w1.g.a(r6)
                                r0.L$0 = r4
                                java.lang.Object r4 = w1.g.a(r0)
                                r0.L$1 = r4
                                java.lang.Object r6 = w1.g.a(r6)
                                r0.L$2 = r6
                                java.lang.Object r6 = w1.g.a(r7)
                                r0.L$3 = r6
                                r6 = 0
                                r0.I$0 = r6
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r2, r0)
                                if (r6 != r1) goto L6b
                                return r1
                            L6b:
                                kotlin.j r6 = kotlin.j.f51397a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getBool$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.InterfaceC1639c
                    @Nullable
                    public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.e eVar) {
                        Object objCollect = data.collect(new AnonymousClass2(interfaceC1640d, keyBooleanKey), eVar);
                        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
                    }
                };
                Ref$ObjectRef<Boolean> ref$ObjectRef2 = this.$value;
                this.L$0 = w1.g.a(keyBooleanKey);
                this.L$1 = w1.g.a(interfaceC1639c);
                this.L$2 = ref$ObjectRef2;
                this.label = 1;
                Object objS = AbstractC1641e.s(interfaceC1639c, this);
                if (objS == objE) {
                    return objE;
                }
                ref$ObjectRef = ref$ObjectRef2;
                t2 = objS;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$ObjectRef = (Ref$ObjectRef) this.L$2;
                kotlin.e.b(obj);
                t2 = obj;
            }
            ref$ObjectRef.element = t2;
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14551) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1", f = "SharedPreferencesPlugin.kt", i = {0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION}, m = "invokeSuspend", n = {"preferencesKey", "preferenceFlow"}, s = {"L$0", "L$1"}, v = 1)
    @SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,520:1\n53#2:521\n55#2:525\n50#3:522\n55#3:524\n107#4:523\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1\n*L\n184#1:521\n184#1:525\n184#1:522\n184#1:524\n184#1:523\n*E\n"})
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14561 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ Ref$ObjectRef<Double> $value;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14561(String str, SharedPreferencesPlugin sharedPreferencesPlugin, Ref$ObjectRef<Double> ref$ObjectRef, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14561(this.$key, this.this$0, this.$value, eVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref$ObjectRef<Double> ref$ObjectRef;
            T t2;
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final Preferences.Key<String> keyStringKey = PreferencesKeys.stringKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                final InterfaceC1639c data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
                final SharedPreferencesPlugin sharedPreferencesPlugin = this.this$0;
                InterfaceC1639c interfaceC1639c = new InterfaceC1639c() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1

                    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", f.a.f3244d, "Lkotlin/j;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "kotlinx/coroutines/flow/V", "<anonymous>"}, k = 3, mv = {2, 2, 0})
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1\n*L\n1#1,222:1\n54#2:223\n185#3:224\n*E\n"})
                    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    public static final class AnonymousClass2<T> implements InterfaceC1640d {
                        final /* synthetic */ Preferences.Key $preferencesKey$inlined;
                        final /* synthetic */ InterfaceC1640d $this_unsafeFlow;
                        final /* synthetic */ SharedPreferencesPlugin this$0;

                        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "emit", n = {f.a.f3244d, "$completion", f.a.f3244d, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 1)
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            int I$0;
                            Object L$0;
                            Object L$1;
                            Object L$2;
                            Object L$3;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(kotlin.coroutines.e eVar) {
                                super(eVar);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(InterfaceC1640d interfaceC1640d, Preferences.Key key, SharedPreferencesPlugin sharedPreferencesPlugin) {
                            this.$this_unsafeFlow = interfaceC1640d;
                            this.$preferencesKey$inlined = key;
                            this.this$0 = sharedPreferencesPlugin;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.InterfaceC1640d
                        @org.jetbrains.annotations.Nullable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
                            /*
                                r5 = this;
                                boolean r0 = r7 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2$1
                                r0.<init>(r7)
                            L18:
                                java.lang.Object r7 = r0.result
                                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L39
                                if (r2 != r3) goto L31
                                java.lang.Object r6 = r0.L$3
                                kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
                                java.lang.Object r6 = r0.L$1
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2$1 r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                                kotlin.e.b(r7)
                                goto L77
                            L31:
                                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                r6.<init>(r7)
                                throw r6
                            L39:
                                kotlin.e.b(r7)
                                kotlinx.coroutines.flow.d r7 = r5.$this_unsafeFlow
                                r2 = r6
                                androidx.datastore.preferences.core.Preferences r2 = (androidx.datastore.preferences.core.Preferences) r2
                                androidx.datastore.preferences.core.Preferences$Key r4 = r5.$preferencesKey$inlined
                                java.lang.Object r2 = r2.get(r4)
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin r4 = r5.this$0
                                io.flutter.plugins.sharedpreferences.SharedPreferencesListEncoder r4 = io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin.access$getListEncoder$p(r4)
                                java.lang.Object r2 = io.flutter.plugins.sharedpreferences.SharedPreferencesPluginKt.transformPref(r2, r4)
                                java.lang.Double r2 = (java.lang.Double) r2
                                java.lang.Object r4 = w1.g.a(r6)
                                r0.L$0 = r4
                                java.lang.Object r4 = w1.g.a(r0)
                                r0.L$1 = r4
                                java.lang.Object r6 = w1.g.a(r6)
                                r0.L$2 = r6
                                java.lang.Object r6 = w1.g.a(r7)
                                r0.L$3 = r6
                                r6 = 0
                                r0.I$0 = r6
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r2, r0)
                                if (r6 != r1) goto L77
                                return r1
                            L77:
                                kotlin.j r6 = kotlin.j.f51397a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.InterfaceC1639c
                    @Nullable
                    public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.e eVar) {
                        Object objCollect = data.collect(new AnonymousClass2(interfaceC1640d, keyStringKey, sharedPreferencesPlugin), eVar);
                        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
                    }
                };
                Ref$ObjectRef<Double> ref$ObjectRef2 = this.$value;
                this.L$0 = w1.g.a(keyStringKey);
                this.L$1 = w1.g.a(interfaceC1639c);
                this.L$2 = ref$ObjectRef2;
                this.label = 1;
                Object objS = AbstractC1641e.s(interfaceC1639c, this);
                if (objS == objE) {
                    return objE;
                }
                ref$ObjectRef = ref$ObjectRef2;
                t2 = objS;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$ObjectRef = (Ref$ObjectRef) this.L$2;
                kotlin.e.b(obj);
                t2 = obj;
            }
            ref$ObjectRef.element = t2;
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14561) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1", f = "SharedPreferencesPlugin.kt", i = {0, 0}, l = {160}, m = "invokeSuspend", n = {"preferencesKey", "preferenceFlow"}, s = {"L$0", "L$1"}, v = 1)
    @SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getInt$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,520:1\n53#2:521\n55#2:525\n50#3:522\n55#3:524\n107#4:523\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getInt$1\n*L\n159#1:521\n159#1:525\n159#1:522\n159#1:524\n159#1:523\n*E\n"})
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14571 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ Ref$ObjectRef<Long> $value;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14571(String str, SharedPreferencesPlugin sharedPreferencesPlugin, Ref$ObjectRef<Long> ref$ObjectRef, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14571(this.$key, this.this$0, this.$value, eVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref$ObjectRef<Long> ref$ObjectRef;
            T t2;
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final Preferences.Key<Long> keyLongKey = PreferencesKeys.longKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                final InterfaceC1639c data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
                InterfaceC1639c interfaceC1639c = new InterfaceC1639c() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1

                    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", f.a.f3244d, "Lkotlin/j;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "kotlinx/coroutines/flow/V", "<anonymous>"}, k = 3, mv = {2, 2, 0})
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getInt$1\n*L\n1#1,222:1\n54#2:223\n159#3:224\n*E\n"})
                    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    public static final class AnonymousClass2<T> implements InterfaceC1640d {
                        final /* synthetic */ Preferences.Key $preferencesKey$inlined;
                        final /* synthetic */ InterfaceC1640d $this_unsafeFlow;

                        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "emit", n = {f.a.f3244d, "$completion", f.a.f3244d, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 1)
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            int I$0;
                            Object L$0;
                            Object L$1;
                            Object L$2;
                            Object L$3;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(kotlin.coroutines.e eVar) {
                                super(eVar);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(InterfaceC1640d interfaceC1640d, Preferences.Key key) {
                            this.$this_unsafeFlow = interfaceC1640d;
                            this.$preferencesKey$inlined = key;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.InterfaceC1640d
                        @org.jetbrains.annotations.Nullable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
                            /*
                                r5 = this;
                                boolean r0 = r7 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2$1
                                r0.<init>(r7)
                            L18:
                                java.lang.Object r7 = r0.result
                                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L39
                                if (r2 != r3) goto L31
                                java.lang.Object r6 = r0.L$3
                                kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
                                java.lang.Object r6 = r0.L$1
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1$2$1 r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                                kotlin.e.b(r7)
                                goto L6b
                            L31:
                                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                r6.<init>(r7)
                                throw r6
                            L39:
                                kotlin.e.b(r7)
                                kotlinx.coroutines.flow.d r7 = r5.$this_unsafeFlow
                                r2 = r6
                                androidx.datastore.preferences.core.Preferences r2 = (androidx.datastore.preferences.core.Preferences) r2
                                androidx.datastore.preferences.core.Preferences$Key r4 = r5.$preferencesKey$inlined
                                java.lang.Object r2 = r2.get(r4)
                                java.lang.Object r4 = w1.g.a(r6)
                                r0.L$0 = r4
                                java.lang.Object r4 = w1.g.a(r0)
                                r0.L$1 = r4
                                java.lang.Object r6 = w1.g.a(r6)
                                r0.L$2 = r6
                                java.lang.Object r6 = w1.g.a(r7)
                                r0.L$3 = r6
                                r6 = 0
                                r0.I$0 = r6
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r2, r0)
                                if (r6 != r1) goto L6b
                                return r1
                            L6b:
                                kotlin.j r6 = kotlin.j.f51397a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getInt$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.InterfaceC1639c
                    @Nullable
                    public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.e eVar) {
                        Object objCollect = data.collect(new AnonymousClass2(interfaceC1640d, keyLongKey), eVar);
                        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
                    }
                };
                Ref$ObjectRef<Long> ref$ObjectRef2 = this.$value;
                this.L$0 = w1.g.a(keyLongKey);
                this.L$1 = w1.g.a(interfaceC1639c);
                this.L$2 = ref$ObjectRef2;
                this.label = 1;
                Object objS = AbstractC1641e.s(interfaceC1639c, this);
                if (objS == objE) {
                    return objE;
                }
                ref$ObjectRef = ref$ObjectRef2;
                t2 = objS;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$ObjectRef = (Ref$ObjectRef) this.L$2;
                kotlin.e.b(obj);
                t2 = obj;
            }
            ref$ObjectRef.element = t2;
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14571) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1}, l = {256, MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE}, m = "getPrefs", n = {"allowList", "allowSet", "filteredMap", "allowList", "allowSet", "filteredMap", "keys", "$this$forEach$iv", "element$iv", f.a.f3242b, "$i$f$forEach", "$i$a$-forEach-SharedPreferencesPlugin$getPrefs$2"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$6", "L$7", "I$0", "I$1"}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getPrefs$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14581 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        public C14581(kotlin.coroutines.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SharedPreferencesPlugin.this.getPrefs(null, this);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1", f = "SharedPreferencesPlugin.kt", i = {0, 0}, l = {201}, m = "invokeSuspend", n = {"preferencesKey", "preferenceFlow"}, s = {"L$0", "L$1"}, v = 1)
    @SourceDebugExtension({"SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,520:1\n53#2:521\n55#2:525\n50#3:522\n55#3:524\n107#4:523\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1\n*L\n199#1:521\n199#1:525\n199#1:522\n199#1:524\n199#1:523\n*E\n"})
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14591 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ Ref$ObjectRef<String> $value;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14591(String str, SharedPreferencesPlugin sharedPreferencesPlugin, Ref$ObjectRef<String> ref$ObjectRef, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14591(this.$key, this.this$0, this.$value, eVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref$ObjectRef<String> ref$ObjectRef;
            T t2;
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final Preferences.Key<String> keyStringKey = PreferencesKeys.stringKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                final InterfaceC1639c data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
                InterfaceC1639c interfaceC1639c = new InterfaceC1639c() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1

                    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", f.a.f3244d, "Lkotlin/j;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "kotlinx/coroutines/flow/V", "<anonymous>"}, k = 3, mv = {2, 2, 0})
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1\n*L\n1#1,222:1\n54#2:223\n199#3:224\n*E\n"})
                    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    public static final class AnonymousClass2<T> implements InterfaceC1640d {
                        final /* synthetic */ Preferences.Key $preferencesKey$inlined;
                        final /* synthetic */ InterfaceC1640d $this_unsafeFlow;

                        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "emit", n = {f.a.f3244d, "$completion", f.a.f3244d, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 1)
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            int I$0;
                            Object L$0;
                            Object L$1;
                            Object L$2;
                            Object L$3;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(kotlin.coroutines.e eVar) {
                                super(eVar);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(InterfaceC1640d interfaceC1640d, Preferences.Key key) {
                            this.$this_unsafeFlow = interfaceC1640d;
                            this.$preferencesKey$inlined = key;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.InterfaceC1640d
                        @org.jetbrains.annotations.Nullable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
                            /*
                                r5 = this;
                                boolean r0 = r7 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1
                                r0.<init>(r7)
                            L18:
                                java.lang.Object r7 = r0.result
                                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L39
                                if (r2 != r3) goto L31
                                java.lang.Object r6 = r0.L$3
                                kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
                                java.lang.Object r6 = r0.L$1
                                io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1 r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                                kotlin.e.b(r7)
                                goto L6b
                            L31:
                                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                r6.<init>(r7)
                                throw r6
                            L39:
                                kotlin.e.b(r7)
                                kotlinx.coroutines.flow.d r7 = r5.$this_unsafeFlow
                                r2 = r6
                                androidx.datastore.preferences.core.Preferences r2 = (androidx.datastore.preferences.core.Preferences) r2
                                androidx.datastore.preferences.core.Preferences$Key r4 = r5.$preferencesKey$inlined
                                java.lang.Object r2 = r2.get(r4)
                                java.lang.Object r4 = w1.g.a(r6)
                                r0.L$0 = r4
                                java.lang.Object r4 = w1.g.a(r0)
                                r0.L$1 = r4
                                java.lang.Object r6 = w1.g.a(r6)
                                r0.L$2 = r6
                                java.lang.Object r6 = w1.g.a(r7)
                                r0.L$3 = r6
                                r6 = 0
                                r0.I$0 = r6
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r2, r0)
                                if (r6 != r1) goto L6b
                                return r1
                            L6b:
                                kotlin.j r6 = kotlin.j.f51397a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.InterfaceC1639c
                    @Nullable
                    public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.e eVar) {
                        Object objCollect = data.collect(new AnonymousClass2(interfaceC1640d, keyStringKey), eVar);
                        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
                    }
                };
                Ref$ObjectRef<String> ref$ObjectRef2 = this.$value;
                this.L$0 = w1.g.a(keyStringKey);
                this.L$1 = w1.g.a(interfaceC1639c);
                this.L$2 = ref$ObjectRef2;
                this.label = 1;
                Object objS = AbstractC1641e.s(interfaceC1639c, this);
                if (objS == objE) {
                    return objE;
                }
                ref$ObjectRef = ref$ObjectRef2;
                t2 = objS;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$ObjectRef = (Ref$ObjectRef) this.L$2;
                kotlin.e.b(obj);
                t2 = obj;
            }
            ref$ObjectRef.element = t2;
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14591) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setBool$1", f = "SharedPreferencesPlugin.kt", i = {0}, l = {81}, m = "invokeSuspend", n = {"boolKey"}, s = {"L$0"}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setBool$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14601 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ boolean $value;
        Object L$0;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "preferences", "Lkotlin/j;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {2, 2, 0})
        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setBool$1$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setBool$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C08711 extends SuspendLambda implements Function2<MutablePreferences, kotlin.coroutines.e, Object> {
            final /* synthetic */ Preferences.Key<Boolean> $boolKey;
            final /* synthetic */ boolean $value;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C08711(Preferences.Key<Boolean> key, boolean z2, kotlin.coroutines.e eVar) {
                super(2, eVar);
                this.$boolKey = key;
                this.$value = z2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
                C08711 c08711 = new C08711(this.$boolKey, this.$value, eVar);
                c08711.L$0 = obj;
                return c08711;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, kotlin.coroutines.e eVar) {
                return ((C08711) create(mutablePreferences, eVar)).invokeSuspend(kotlin.j.f51397a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                kotlin.coroutines.intrinsics.a.e();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                mutablePreferences.set(this.$boolKey, AbstractC1791a.a(this.$value));
                return kotlin.j.f51397a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14601(String str, SharedPreferencesPlugin sharedPreferencesPlugin, boolean z2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = z2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14601(this.$key, this.this$0, this.$value, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Preferences.Key<Boolean> keyBooleanKey = PreferencesKeys.booleanKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                DataStore<Preferences> sharedPreferencesDataStore = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context);
                C08711 c08711 = new C08711(keyBooleanKey, this.$value, null);
                this.L$0 = w1.g.a(keyBooleanKey);
                this.label = 1;
                if (PreferencesKt.edit(sharedPreferencesDataStore, c08711, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14601) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDeprecatedStringList$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {128}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDeprecatedStringList$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14611 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ String $valueString;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14611(String str, String str2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.$valueString = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return SharedPreferencesPlugin.this.new C14611(this.$key, this.$valueString, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                SharedPreferencesPlugin sharedPreferencesPlugin = SharedPreferencesPlugin.this;
                String str = this.$key;
                String str2 = this.$valueString;
                this.label = 1;
                if (sharedPreferencesPlugin.dataStoreSetString(str, str2, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14611) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1", f = "SharedPreferencesPlugin.kt", i = {0}, l = {107}, m = "invokeSuspend", n = {"doubleKey"}, s = {"L$0"}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14621 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ double $value;
        Object L$0;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "preferences", "Lkotlin/j;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {2, 2, 0})
        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C08721 extends SuspendLambda implements Function2<MutablePreferences, kotlin.coroutines.e, Object> {
            final /* synthetic */ Preferences.Key<Double> $doubleKey;
            final /* synthetic */ double $value;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C08721(Preferences.Key<Double> key, double d2, kotlin.coroutines.e eVar) {
                super(2, eVar);
                this.$doubleKey = key;
                this.$value = d2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
                C08721 c08721 = new C08721(this.$doubleKey, this.$value, eVar);
                c08721.L$0 = obj;
                return c08721;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, kotlin.coroutines.e eVar) {
                return ((C08721) create(mutablePreferences, eVar)).invokeSuspend(kotlin.j.f51397a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                kotlin.coroutines.intrinsics.a.e();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                mutablePreferences.set(this.$doubleKey, AbstractC1791a.b(this.$value));
                return kotlin.j.f51397a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14621(String str, SharedPreferencesPlugin sharedPreferencesPlugin, double d2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14621(this.$key, this.this$0, this.$value, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Preferences.Key<Double> keyDoubleKey = PreferencesKeys.doubleKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                DataStore<Preferences> sharedPreferencesDataStore = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context);
                C08721 c08721 = new C08721(keyDoubleKey, this.$value, null);
                this.L$0 = w1.g.a(keyDoubleKey);
                this.label = 1;
                if (PreferencesKt.edit(sharedPreferencesDataStore, c08721, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14621) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setEncodedStringList$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {117}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setEncodedStringList$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14631 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ String $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14631(String str, String str2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.$value = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return SharedPreferencesPlugin.this.new C14631(this.$key, this.$value, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                SharedPreferencesPlugin sharedPreferencesPlugin = SharedPreferencesPlugin.this;
                String str = this.$key;
                String str2 = this.$value;
                this.label = 1;
                if (sharedPreferencesPlugin.dataStoreSetString(str, str2, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14631) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setInt$1", f = "SharedPreferencesPlugin.kt", i = {0}, l = {99}, m = "invokeSuspend", n = {"intKey"}, s = {"L$0"}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setInt$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14641 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ long $value;
        Object L$0;
        int label;
        final /* synthetic */ SharedPreferencesPlugin this$0;

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "preferences", "Lkotlin/j;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {2, 2, 0})
        @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setInt$1$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setInt$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C08731 extends SuspendLambda implements Function2<MutablePreferences, kotlin.coroutines.e, Object> {
            final /* synthetic */ Preferences.Key<Long> $intKey;
            final /* synthetic */ long $value;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C08731(Preferences.Key<Long> key, long j2, kotlin.coroutines.e eVar) {
                super(2, eVar);
                this.$intKey = key;
                this.$value = j2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
                C08731 c08731 = new C08731(this.$intKey, this.$value, eVar);
                c08731.L$0 = obj;
                return c08731;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, kotlin.coroutines.e eVar) {
                return ((C08731) create(mutablePreferences, eVar)).invokeSuspend(kotlin.j.f51397a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                kotlin.coroutines.intrinsics.a.e();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                mutablePreferences.set(this.$intKey, AbstractC1791a.d(this.$value));
                return kotlin.j.f51397a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14641(String str, SharedPreferencesPlugin sharedPreferencesPlugin, long j2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.this$0 = sharedPreferencesPlugin;
            this.$value = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new C14641(this.$key, this.this$0, this.$value, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Preferences.Key<Long> keyLongKey = PreferencesKeys.longKey(this.$key);
                Context context = this.this$0.context;
                if (context == null) {
                    kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
                    context = null;
                }
                DataStore<Preferences> sharedPreferencesDataStore = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context);
                C08731 c08731 = new C08731(keyLongKey, this.$value, null);
                this.L$0 = w1.g.a(keyLongKey);
                this.label = 1;
                if (PreferencesKt.edit(sharedPreferencesDataStore, c08731, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14641) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setString$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setString$1, reason: invalid class name and case insensitive filesystem */
    public static final class C14651 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $key;
        final /* synthetic */ String $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14651(String str, String str2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$key = str;
            this.$value = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return SharedPreferencesPlugin.this.new C14651(this.$key, this.$value, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                SharedPreferencesPlugin sharedPreferencesPlugin = SharedPreferencesPlugin.this;
                String str = this.$key;
                String str2 = this.$value;
                this.label = 1;
                if (sharedPreferencesPlugin.dataStoreSetString(str, str2, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((C14651) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    public SharedPreferencesPlugin() {
        this.listEncoder = new ListEncoder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object dataStoreSetString(String str, String str2, kotlin.coroutines.e eVar) {
        Preferences.Key<String> keyStringKey = PreferencesKeys.stringKey(str);
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
            context = null;
        }
        Object objEdit = PreferencesKt.edit(SharedPreferencesPluginKt.getSharedPreferencesDataStore(context), new AnonymousClass2(keyStringKey, str2, null), eVar);
        return objEdit == kotlin.coroutines.intrinsics.a.e() ? objEdit : kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d6, code lost:
    
        if (r15 == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00d6 -> B:33:0x00d9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getPrefs(java.util.List<java.lang.String> r14, kotlin.coroutines.e r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin.getPrefs(java.util.List, kotlin.coroutines.e):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getValueByKey(final Preferences.Key<?> key, kotlin.coroutines.e eVar) {
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
            context = null;
        }
        final InterfaceC1639c data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
        return AbstractC1641e.s(new InterfaceC1639c() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1

            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", f.a.f3244d, "Lkotlin/j;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "kotlinx/coroutines/flow/V", "<anonymous>"}, k = 3, mv = {2, 2, 0})
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin\n*L\n1#1,222:1\n54#2:223\n275#3:224\n*E\n"})
            /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements InterfaceC1640d {
                final /* synthetic */ Preferences.Key $key$inlined;
                final /* synthetic */ InterfaceC1640d $this_unsafeFlow;

                @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "emit", n = {f.a.f3244d, "$completion", f.a.f3244d, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 1)
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int I$0;
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(kotlin.coroutines.e eVar) {
                        super(eVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(InterfaceC1640d interfaceC1640d, Preferences.Key key) {
                    this.$this_unsafeFlow = interfaceC1640d;
                    this.$key$inlined = key;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.InterfaceC1640d
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L39
                        if (r2 != r3) goto L31
                        java.lang.Object r6 = r0.L$3
                        kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
                        java.lang.Object r6 = r0.L$1
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1 r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                        kotlin.e.b(r7)
                        goto L6b
                    L31:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L39:
                        kotlin.e.b(r7)
                        kotlinx.coroutines.flow.d r7 = r5.$this_unsafeFlow
                        r2 = r6
                        androidx.datastore.preferences.core.Preferences r2 = (androidx.datastore.preferences.core.Preferences) r2
                        androidx.datastore.preferences.core.Preferences$Key r4 = r5.$key$inlined
                        java.lang.Object r2 = r2.get(r4)
                        java.lang.Object r4 = w1.g.a(r6)
                        r0.L$0 = r4
                        java.lang.Object r4 = w1.g.a(r0)
                        r0.L$1 = r4
                        java.lang.Object r6 = w1.g.a(r6)
                        r0.L$2 = r6
                        java.lang.Object r6 = w1.g.a(r7)
                        r0.L$3 = r6
                        r6 = 0
                        r0.I$0 = r6
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r2, r0)
                        if (r6 != r1) goto L6b
                        return r1
                    L6b:
                        kotlin.j r6 = kotlin.j.f51397a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.InterfaceC1639c
            @Nullable
            public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.e eVar2) {
                Object objCollect = data.collect(new AnonymousClass2(interfaceC1640d, key), eVar2);
                return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
            }
        }, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readAllKeys(kotlin.coroutines.e eVar) {
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.j.u(com.umeng.analytics.pro.g.f49337X);
            context = null;
        }
        final InterfaceC1639c data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
        return AbstractC1641e.s(new InterfaceC1639c() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1

            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", f.a.f3244d, "Lkotlin/j;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "kotlinx/coroutines/flow/V", "<anonymous>"}, k = 3, mv = {2, 2, 0})
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin\n*L\n1#1,222:1\n54#2:223\n270#3:224\n*E\n"})
            /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements InterfaceC1640d {
                final /* synthetic */ InterfaceC1640d $this_unsafeFlow;

                @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "emit", n = {f.a.f3244d, "$completion", f.a.f3244d, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 1)
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int I$0;
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(kotlin.coroutines.e eVar) {
                        super(eVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(InterfaceC1640d interfaceC1640d) {
                    this.$this_unsafeFlow = interfaceC1640d;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.InterfaceC1640d
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L39
                        if (r2 != r3) goto L31
                        java.lang.Object r6 = r0.L$3
                        kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
                        java.lang.Object r6 = r0.L$1
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1 r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                        kotlin.e.b(r7)
                        goto L6d
                    L31:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L39:
                        kotlin.e.b(r7)
                        kotlinx.coroutines.flow.d r7 = r5.$this_unsafeFlow
                        r2 = r6
                        androidx.datastore.preferences.core.Preferences r2 = (androidx.datastore.preferences.core.Preferences) r2
                        java.util.Map r2 = r2.asMap()
                        java.util.Set r2 = r2.keySet()
                        java.lang.Object r4 = w1.g.a(r6)
                        r0.L$0 = r4
                        java.lang.Object r4 = w1.g.a(r0)
                        r0.L$1 = r4
                        java.lang.Object r6 = w1.g.a(r6)
                        r0.L$2 = r6
                        java.lang.Object r6 = w1.g.a(r7)
                        r0.L$3 = r6
                        r6 = 0
                        r0.I$0 = r6
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r2, r0)
                        if (r6 != r1) goto L6d
                        return r1
                    L6d:
                        kotlin.j r6 = kotlin.j.f51397a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.InterfaceC1639c
            @Nullable
            public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.e eVar2) {
                Object objCollect = data.collect(new AnonymousClass2(interfaceC1640d), eVar2);
                return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
            }
        }, eVar);
    }

    private final void setUp(BinaryMessenger messenger, Context context) {
        this.context = context;
        try {
            SharedPreferencesAsyncApi.INSTANCE.setUp(messenger, this, "data_store");
            this.backend = new SharedPreferencesBackend(messenger, context, this.listEncoder);
        } catch (Exception e2) {
            Log.e(SharedPreferencesPluginKt.TAG, "Received exception while setting up SharedPreferencesPlugin", e2);
        }
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void clear(@Nullable List<String> allowList, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new AnonymousClass1(allowList, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @NotNull
    public Map<String, Object> getAll(@Nullable List<String> allowList, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(options, "options");
        return (Map) AbstractC1664h.b(null, new C14541(allowList, null), 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public Boolean getBool(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        AbstractC1664h.b(null, new C14551(key, this, ref$ObjectRef, null), 1, null);
        return (Boolean) ref$ObjectRef.element;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public Double getDouble(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        AbstractC1664h.b(null, new C14561(key, this, ref$ObjectRef, null), 1, null);
        return (Double) ref$ObjectRef.element;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public Long getInt(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        AbstractC1664h.b(null, new C14571(key, this, ref$ObjectRef, null), 1, null);
        return (Long) ref$ObjectRef.element;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @NotNull
    public List<String> getKeys(@Nullable List<String> allowList, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(options, "options");
        return kotlin.collections.y.a0(((Map) AbstractC1664h.b(null, new SharedPreferencesPlugin$getKeys$prefs$1(this, allowList, null), 1, null)).keySet());
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public List<String> getPlatformEncodedStringList(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        List list;
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        String string = getString(key, options);
        ArrayList arrayList = null;
        if (string != null && !z.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null) && z.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null) && (list = (List) SharedPreferencesPluginKt.transformPref(string, this.listEncoder)) != null) {
            arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof String) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public String getString(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        AbstractC1664h.b(null, new C14591(key, this, ref$ObjectRef, null), 1, null);
        return (String) ref$ObjectRef.element;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Nullable
    public StringListResult getStringList(@NotNull String key, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        String string = getString(key, options);
        if (string != null) {
            return z.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null) ? new StringListResult(string, StringListLookupResultType.JSON_ENCODED) : z.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null) ? new StringListResult(null, StringListLookupResultType.PLATFORM_ENCODED) : new StringListResult(null, StringListLookupResultType.UNEXPECTED_STRING);
        }
        return null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.j.e(binding, "binding");
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        kotlin.jvm.internal.j.d(binaryMessenger, "getBinaryMessenger(...)");
        Context applicationContext = binding.getApplicationContext();
        kotlin.jvm.internal.j.d(applicationContext, "getApplicationContext(...)");
        setUp(binaryMessenger, applicationContext);
        new LegacySharedPreferencesPlugin().onAttachedToEngine(binding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.j.e(binding, "binding");
        SharedPreferencesAsyncApi.Companion companion = SharedPreferencesAsyncApi.INSTANCE;
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        kotlin.jvm.internal.j.d(binaryMessenger, "getBinaryMessenger(...)");
        companion.setUp(binaryMessenger, null, "data_store");
        SharedPreferencesBackend sharedPreferencesBackend = this.backend;
        if (sharedPreferencesBackend != null) {
            sharedPreferencesBackend.tearDown();
        }
        this.backend = null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setBool(@NotNull String key, boolean value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new C14601(key, this, value, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    @Deprecated(message = "This is just for testing, use `setEncodedStringList`")
    public void setDeprecatedStringList(@NotNull String key, @NotNull List<String> value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new C14611(key, SharedPreferencesPluginKt.LIST_PREFIX + this.listEncoder.encode(value), null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setDouble(@NotNull String key, double value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new C14621(key, this, value, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setEncodedStringList(@NotNull String key, @NotNull String value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new C14631(key, value, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setInt(@NotNull String key, long value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new C14641(key, this, value, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setString(@NotNull String key, @NotNull String value, @NotNull SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.j.e(key, "key");
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(options, "options");
        AbstractC1664h.b(null, new C14651(key, value, null), 1, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @VisibleForTesting
    public SharedPreferencesPlugin(@NotNull SharedPreferencesListEncoder listEncoder) {
        this();
        kotlin.jvm.internal.j.e(listEncoder, "listEncoder");
        this.listEncoder = listEncoder;
    }
}
