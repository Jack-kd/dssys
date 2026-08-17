package androidx.core.flagging;

import android.os.Build;
import android.os.flagging.AconfigPackage;
import android.os.flagging.AconfigStorageReadException;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.RestrictTo;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/core/flagging/Flags;", "", "<init>", "()V", "Companion", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class Flags {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(0 == true ? 1 : 0);

    @Nullable
    private static final Map<String, AconfigPackage> aconfigCache;

    @Nullable
    private static final Set<String> missingPackageCache;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000bH\u0007R\u001e\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00058\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\t8\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/core/flagging/Flags$Companion;", "", "<init>", "()V", "aconfigCache", "", "", "Landroid/os/flagging/AconfigPackage;", "missingPackageCache", "", "getBooleanFlagValue", "", "packageName", "flagName", "defaultValue", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public static /* synthetic */ boolean getBooleanFlagValue$default(Companion companion, String str, String str2, boolean z2, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                z2 = false;
            }
            return companion.getBooleanFlagValue(str, str2, z2);
        }

        @JvmStatic
        @ChecksSdkIntAtLeast(api = 10000)
        @JvmOverloads
        public final boolean getBooleanFlagValue(@NotNull String packageName, @NotNull String flagName) {
            j.e(packageName, "packageName");
            j.e(flagName, "flagName");
            return getBooleanFlagValue$default(this, packageName, flagName, false, 4, null);
        }

        private Companion() {
        }

        @JvmStatic
        @ChecksSdkIntAtLeast(api = 10000)
        @JvmOverloads
        public final boolean getBooleanFlagValue(@NotNull String packageName, @NotNull String flagName, boolean defaultValue) {
            AconfigPackage aconfigPackageA;
            j.e(packageName, "packageName");
            j.e(flagName, "flagName");
            if (Build.VERSION.SDK_INT < 36) {
                return defaultValue;
            }
            Map map = Flags.aconfigCache;
            j.b(map);
            Set set = Flags.missingPackageCache;
            j.b(set);
            if (map.containsKey(packageName)) {
                aconfigPackageA = c.a(map.get(packageName));
            } else if (set.contains(packageName)) {
                aconfigPackageA = null;
            } else {
                try {
                    AconfigPackage aconfigPackageLoad = AconfigPackage.load(packageName);
                    map.put(packageName, aconfigPackageLoad);
                    kotlin.j jVar = kotlin.j.f51397a;
                    aconfigPackageA = aconfigPackageLoad;
                } catch (AconfigStorageReadException unused) {
                    set.add(packageName);
                }
            }
            return aconfigPackageA != null ? aconfigPackageA.getBooleanFlagValue(flagName, defaultValue) : defaultValue;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i2 = Build.VERSION.SDK_INT;
        aconfigCache = i2 >= 36 ? new ConcurrentHashMap() : null;
        missingPackageCache = i2 >= 36 ? new CopyOnWriteArraySet() : null;
    }

    @JvmStatic
    @ChecksSdkIntAtLeast(api = 10000)
    @JvmOverloads
    public static final boolean getBooleanFlagValue(@NotNull String str, @NotNull String str2) {
        return INSTANCE.getBooleanFlagValue(str, str2);
    }

    @JvmStatic
    @ChecksSdkIntAtLeast(api = 10000)
    @JvmOverloads
    public static final boolean getBooleanFlagValue(@NotNull String str, @NotNull String str2, boolean z2) {
        return INSTANCE.getBooleanFlagValue(str, str2, z2);
    }
}
