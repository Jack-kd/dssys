package androidx.window.reflection;

import A1.a;
import android.util.Log;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlin.reflect.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0001¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0010\u001a\u00020\u00072\u0010\u0010\r\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u0006H\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0016\u001a\u00020\u0007*\u00020\u00112\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u0007*\u00020\u00112\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\fH\u0000¢\u0006\u0004\b\u0014\u0010\u0017J'\u0010\u001c\u001a\u00020\u00072\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\f2\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\fH\u0000¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u00020\u0007*\u00020\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Landroidx/window/reflection/ReflectionUtils;", "", "<init>", "()V", "", "errorMessage", "Lkotlin/Function0;", "", "block", "validateReflection$window_release", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z", "validateReflection", "Ljava/lang/Class;", "classLoader", "checkIsPresent$window_release", "(Lkotlin/jvm/functions/Function0;)Z", "checkIsPresent", "Ljava/lang/reflect/Method;", "Lkotlin/reflect/c;", "clazz", "doesReturn$window_release", "(Ljava/lang/reflect/Method;Lkotlin/reflect/c;)Z", "doesReturn", "(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z", "implementation", "requirements", "validateImplementation$window_release", "(Ljava/lang/Class;Ljava/lang/Class;)Z", "validateImplementation", "isPublic$window_release", "(Ljava/lang/reflect/Method;)Z", "isPublic", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nReflectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectionUtils.kt\nandroidx/window/reflection/ReflectionUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,96:1\n12541#2,2:97\n*S KotlinDebug\n*F\n+ 1 ReflectionUtils.kt\nandroidx/window/reflection/ReflectionUtils\n*L\n88#1:97,2\n*E\n"})
/* loaded from: classes.dex */
public final class ReflectionUtils {

    @NotNull
    public static final ReflectionUtils INSTANCE = new ReflectionUtils();

    private ReflectionUtils() {
    }

    @JvmStatic
    public static final boolean validateReflection$window_release(@Nullable String errorMessage, @NotNull Function0<Boolean> block) {
        j.e(block, "block");
        try {
            boolean zBooleanValue = block.invoke().booleanValue();
            if (!zBooleanValue && errorMessage != null) {
                Log.e("ReflectionGuard", errorMessage);
            }
            return zBooleanValue;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("ClassNotFound: ");
            if (errorMessage == null) {
                errorMessage = "";
            }
            sb.append(errorMessage);
            Log.e("ReflectionGuard", sb.toString());
            return false;
        } catch (NoSuchMethodException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NoSuchMethod: ");
            if (errorMessage == null) {
                errorMessage = "";
            }
            sb2.append(errorMessage);
            Log.e("ReflectionGuard", sb2.toString());
            return false;
        }
    }

    public static /* synthetic */ boolean validateReflection$window_release$default(String str, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        return validateReflection$window_release(str, function0);
    }

    public final boolean checkIsPresent$window_release(@NotNull Function0<? extends Class<?>> classLoader) {
        j.e(classLoader, "classLoader");
        try {
            classLoader.invoke();
            return true;
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
            return false;
        }
    }

    public final boolean doesReturn$window_release(@NotNull Method method, @NotNull c clazz) {
        j.e(method, "<this>");
        j.e(clazz, "clazz");
        return doesReturn$window_release(method, a.a(clazz));
    }

    public final boolean isPublic$window_release(@NotNull Method method) {
        j.e(method, "<this>");
        return Modifier.isPublic(method.getModifiers());
    }

    public final boolean validateImplementation$window_release(@NotNull final Class<?> implementation, @NotNull Class<?> requirements) throws SecurityException {
        j.e(implementation, "implementation");
        j.e(requirements, "requirements");
        Method[] methods = requirements.getMethods();
        j.d(methods, "requirements.methods");
        for (final Method method : methods) {
            if (!validateReflection$window_release(implementation.getName() + '#' + method.getName() + " is not valid", new Function0<Boolean>() { // from class: androidx.window.reflection.ReflectionUtils$validateImplementation$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0039  */
                @Override // kotlin.jvm.functions.Function0
                @org.jetbrains.annotations.NotNull
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Boolean invoke() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
                    /*
                        r4 = this;
                        java.lang.Class<?> r0 = r1
                        java.lang.reflect.Method r1 = r2
                        java.lang.String r1 = r1.getName()
                        java.lang.reflect.Method r2 = r2
                        java.lang.Class[] r2 = r2.getParameterTypes()
                        int r3 = r2.length
                        java.lang.Object[] r2 = java.util.Arrays.copyOf(r2, r3)
                        java.lang.Class[] r2 = (java.lang.Class[]) r2
                        java.lang.reflect.Method r0 = r0.getMethod(r1, r2)
                        androidx.window.reflection.ReflectionUtils r1 = androidx.window.reflection.ReflectionUtils.INSTANCE
                        java.lang.String r2 = "implementedMethod"
                        kotlin.jvm.internal.j.d(r0, r2)
                        boolean r2 = r1.isPublic$window_release(r0)
                        if (r2 == 0) goto L39
                        java.lang.reflect.Method r2 = r2
                        java.lang.Class r2 = r2.getReturnType()
                        java.lang.String r3 = "it.returnType"
                        kotlin.jvm.internal.j.d(r2, r3)
                        boolean r0 = r1.doesReturn$window_release(r0, r2)
                        if (r0 == 0) goto L39
                        r0 = 1
                        goto L3a
                    L39:
                        r0 = 0
                    L3a:
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.window.reflection.ReflectionUtils$validateImplementation$1$1.invoke():java.lang.Boolean");
                }
            })) {
                return false;
            }
        }
        return true;
    }

    public final boolean doesReturn$window_release(@NotNull Method method, @NotNull Class<?> clazz) {
        j.e(method, "<this>");
        j.e(clazz, "clazz");
        return method.getReturnType().equals(clazz);
    }
}
